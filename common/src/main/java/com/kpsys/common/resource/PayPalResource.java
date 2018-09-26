package com.kpsys.common.resource;

import com.kpsys.common.Requests.PayPalCheckoutRequest;
import com.kpsys.common.Requests.PayPalInitRequest;
import com.kpsys.common.config.PayPalConfiguration;
import com.kpsys.common.dto.EntityResponse;
import com.kpsys.common.exceptions.KpsysException;
import com.kpsys.common.utils.Storage;
import com.kpsys.domain.Result;
import com.kpsys.domain.Url;
import com.kpsys.domain.User;
import com.paypal.api.payments.*;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;
import io.dropwizard.auth.Auth;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.validation.Valid;
import javax.ws.rs.*;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Path("/paypal")
public class PayPalResource {

    private static final Logger LOGGER = LoggerFactory.getLogger(PayPalResource.class);
    private static final String EXTERNAL_SERVICE_URL = "http://anpr01.parkingguru.com:8080/api/rest/parking/%s";
    private static final String EXTERNAL_SERVICE_PAYMENT_SUCCESS_MESSAGE = "Payment OK";

    private final PayPalConfiguration payPalConfiguration;
    private final Client client;

    public PayPalResource(PayPalConfiguration payPalConfiguration, Client client) {
        this.payPalConfiguration = payPalConfiguration;
        this.client = client;
    }

    @POST
    @Path("/checkout")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public EntityResponse<Result> checkout(@Valid PayPalCheckoutRequest payPalCheckoutRequest) {

        String guid = payPalCheckoutRequest.getGuid();
        String paymentId = payPalCheckoutRequest.getPaymentId();
        String payerID = payPalCheckoutRequest.getPayerID();

        PayPalInitRequest payPalInitRequest = Storage.getInstance().get(guid);
        boolean checkFailed = payPalInitRequest == null || !payPalInitRequest.getPaymentId().equals(paymentId);

        if (checkFailed) {
            LOGGER.error("Error during preparing checkout PayPal request: wrong parameters");
            throw new KpsysException("Error during preparing checkout PayPal request: wrong parameters", Response.Status.INTERNAL_SERVER_ERROR);
        }

        Payment payment = new Payment();
        payment.setId(paymentId);

        PaymentExecution paymentExecution = new PaymentExecution();
        paymentExecution.setPayerId(payerID);
        try {
            APIContext apiContext = new APIContext(payPalConfiguration.getClientId(),
                payPalConfiguration.getClientSecret(),
                payPalConfiguration.getMode());
            Payment createdPayment = payment.execute(apiContext, paymentExecution);
            LOGGER.debug(createdPayment.toString());

            String paymentTime = createdPayment.getCreateTime();
            payPalInitRequest.setPaymentTimestamp(paymentTime);
            payPalInitRequest.setApiKey("12345");
            payPalInitRequest.setParkingZone("Z01");

            Storage.getInstance().remove(guid);

            // make a request to an external service api ("/payment")
            String result = externalServicePayment(payPalInitRequest);
            if (!result.equals(EXTERNAL_SERVICE_PAYMENT_SUCCESS_MESSAGE)) {
                throw new KpsysException("Error during invocation of an external service API after PayPal payment was successfully processed. The external service API returned error status.");
            }

            return EntityResponse.of(new Result(result));
        } catch (PayPalRESTException e) {
            LOGGER.error("Error during performing checkout PayPal request: " + e.getDetails());
            throw new KpsysException("Error during performing checkout PayPal request: " + e.getMessage(), Response.Status.INTERNAL_SERVER_ERROR);
        }
    }

    @POST
    @Path("/proceed")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public EntityResponse<Url> proceed(@Auth User principal, @Valid PayPalInitRequest payPalInitRequest) {

        Amount amount = new Amount();
        amount.setCurrency(payPalInitRequest.getCurrency());
        amount.setTotal(String.valueOf(payPalInitRequest.getAmount()));

        Transaction transaction = new Transaction();
        transaction.setAmount(amount);
        if (payPalInitRequest.getDescription() != null) {
            transaction.setDescription(payPalInitRequest.getDescription());
        }
        List<Transaction> transactions = new ArrayList<>();
        transactions.add(transaction);

        Payer payer = new Payer();
        payer.setPaymentMethod("paypal");

        Payment payment = new Payment();
        payment.setIntent("sale");
        payment.setPayer(payer);
        payment.setTransactions(transactions);

        String guid = UUID.randomUUID().toString().replaceAll("-", "");
        String query = payPalInitRequest.getQuery();

        RedirectUrls redirectUrls = new RedirectUrls();
        try {
            //TODO: provide hostname and port programmatically
            // an url for user cancelled payment during "Paypal checkout - review your payment"
            String cancelUrl = "http://localhost:8087/#/home?query=" + URLEncoder.encode(query, "UTF-8");
            redirectUrls.setCancelUrl(cancelUrl);

            //TODO: provide hostname and port programmatically
            // an url for user pressed "continue" during "Paypal checkout - review your payment"
            String returnUrl = "http://localhost:8087/#/checkout?guid=" + URLEncoder.encode(guid, "UTF-8");
            redirectUrls.setReturnUrl(returnUrl);
        } catch (UnsupportedEncodingException e) {
            LOGGER.error("Error during preparing PayPal request: malformed cancel/return urls supplied");
            throw new KpsysException("Error during preparing PayPal request", Response.Status.INTERNAL_SERVER_ERROR);
        }

        payment.setRedirectUrls(redirectUrls);

        try {
            APIContext apiContext = new APIContext(payPalConfiguration.getClientId(),
                payPalConfiguration.getClientSecret(),
                payPalConfiguration.getMode());
            Payment createdPayment = payment.create(apiContext);

            for (Links link : createdPayment.getLinks()) {
                if (link.getRel().equalsIgnoreCase("approval_url")) {
                    String createdPaymentId = createdPayment.getId();
                    payPalInitRequest.setPaymentId(createdPaymentId);
                    Storage.getInstance().add(guid, payPalInitRequest);

                    // Redirect the customer to link.getHref()
                    String approvalUrl = link.getHref();
                    Url url = new Url(approvalUrl);
                    return EntityResponse.of(url);
                }
            }

            LOGGER.error("Error during PayPal request: approval_url not retrieved");
            throw new KpsysException("Error during PayPal request", Response.Status.INTERNAL_SERVER_ERROR);
        } catch (PayPalRESTException e) {
            System.err.println(e.getDetails());
            LOGGER.error("Error during PayPal request: " + e.getDetails());
            throw new KpsysException("Error during PayPal request: " + e.getDetails().getMessage(), Response.Status.INTERNAL_SERVER_ERROR);
        } catch (Exception ex) {
            LOGGER.error("Error during PayPal request: " + ex.getMessage());
            throw new KpsysException("Error during PayPal request", Response.Status.INTERNAL_SERVER_ERROR);
        }
    }

    private String externalServicePayment(PayPalInitRequest payPalInitRequest) {
        String url = String.format(EXTERNAL_SERVICE_URL, "payment");
        WebTarget target = client.target(url);

        Invocation.Builder invocationBuilder = target.request().accept(MediaType.APPLICATION_JSON);
        Response response = null;
        try {
            response = invocationBuilder.post(Entity.json(payPalInitRequest));
            if (response.getStatus() != Response.Status.OK.getStatusCode()) {
                LOGGER.error("Error during external service request");
                throw new KpsysException("Error during external service request", Response.Status.INTERNAL_SERVER_ERROR);
            }
            return response.readEntity(String.class);
        } catch (ProcessingException e) {
            LOGGER.error("Error during external service request", e);
            throw new KpsysException("Error during external service request", Response.Status.INTERNAL_SERVER_ERROR);
        } finally {
            if (response != null) {
                response.close();
            }
        }
    }
}
