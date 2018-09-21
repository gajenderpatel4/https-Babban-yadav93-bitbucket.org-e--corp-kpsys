package com.kpsys.common.resource;

import com.kpsys.common.Requests.PayPalRequest;
import com.kpsys.common.config.PayPalConfiguration;
import com.kpsys.common.dto.EntityResponse;
import com.kpsys.common.exceptions.KpsysException;
import com.kpsys.common.utils.Storage;
import com.kpsys.domain.Url;
import com.kpsys.domain.User;
import com.paypal.api.payments.*;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;
import io.dropwizard.auth.Auth;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.*;
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
    private final PayPalConfiguration payPalConfiguration;

    public PayPalResource(PayPalConfiguration payPalConfiguration) {
        this.payPalConfiguration = payPalConfiguration;
    }

    @POST
    @Path("/proceed")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public EntityResponse<Url> payment(@Auth User principal, PayPalRequest payPalRequest) {

        Amount amount = new Amount();
        amount.setCurrency(payPalRequest.getCurrency());
        amount.setTotal(String.valueOf(payPalRequest.getAmount()));

        Transaction transaction = new Transaction();
        transaction.setAmount(amount);
        transaction.setDescription(payPalRequest.getDescription());
        List<Transaction> transactions = new ArrayList<>();
        transactions.add(transaction);

        Payer payer = new Payer();
        payer.setPaymentMethod("paypal");

        Payment payment = new Payment();
        payment.setIntent("sale");
        payment.setPayer(payer);
        payment.setTransactions(transactions);

        String guid = UUID.randomUUID().toString().replaceAll("-", "");
        String query = payPalRequest.getQuery();

        RedirectUrls redirectUrls = new RedirectUrls();
        try {
            //TODO: provide hostname and port programmatically
            // an url for user cancelled payment during "Paypal checkout - review your payment"
            String cancelUrl = "http://localhost:8087/#/home?query=" + URLEncoder.encode(query, "UTF-8");
            redirectUrls.setCancelUrl(cancelUrl);

            //TODO: provide hostname and port programmatically
            // an url for user pressed "continue" during "Paypal checkout - review your payment"
            String returnUrl = "http://localhost:8087/api/paypal/return?guid=" + URLEncoder.encode(guid, "UTF-8");
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
                    Storage.getInstance().add(guid, createdPayment.getId());

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
}
