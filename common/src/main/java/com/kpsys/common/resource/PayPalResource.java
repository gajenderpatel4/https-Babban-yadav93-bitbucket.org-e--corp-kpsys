package com.kpsys.common.resource;

import com.codahale.metrics.annotation.Timed;
import com.google.inject.Inject;
import com.kpsys.common.requests.PayPalConfirmRequest;
import com.kpsys.common.requests.PayPalInitRequest;
import com.kpsys.common.config.PayPalConfiguration;
import com.kpsys.common.dao.PaymentDao;
import com.kpsys.common.dto.EntityResponse;
import com.kpsys.common.exceptions.KpsysException;
import com.kpsys.common.utils.Storage;
import com.kpsys.domain.Result;
import com.kpsys.domain.Url;
import com.paypal.api.payments.*;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;
import io.dropwizard.hibernate.UnitOfWork;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.font.PDType1Font;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.ws.rs.*;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.StreamingOutput;
import java.io.IOException;
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
    private final int httpPort;
    @Inject
    private PaymentDao paymentDao;

    public PayPalResource(PayPalConfiguration payPalConfiguration, Client client, int httpPort) {
        this.payPalConfiguration = payPalConfiguration;
        this.client = client;
        this.httpPort = httpPort;
    }

    @POST
    @Path("/check")
    @Consumes
    @Produces(MediaType.APPLICATION_JSON)
    public EntityResponse<PayPalInitRequest> check(@Valid PayPalConfirmRequest payPalConfirmRequest) {

        String guid = payPalConfirmRequest.getGuid();
        String paymentId = payPalConfirmRequest.getPaymentId();

        PayPalInitRequest payPalInitRequest = Storage.getInstance().get(guid);
        boolean checkFailed = payPalInitRequest == null || !payPalInitRequest.getPaymentId().equals(paymentId);

        if (checkFailed) {
            LOGGER.error("Error during checking PayPal request: wrong parameters");
            throw new KpsysException("Error during checking PayPal request: wrong parameters", Response.Status.BAD_REQUEST);
        }

        return EntityResponse.of(payPalInitRequest);
    }

    @POST
    @Path("/confirm")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @Timed
    @UnitOfWork
    public EntityResponse<Result<String>> confirm(@Valid PayPalConfirmRequest payPalConfirmRequest) {

        String guid = payPalConfirmRequest.getGuid();
        String paymentId = payPalConfirmRequest.getPaymentId();
        String payerID = payPalConfirmRequest.getPayerID();

        PayPalInitRequest payPalInitRequest = Storage.getInstance().get(guid);
        boolean checkFailed = payPalInitRequest == null || !payPalInitRequest.getPaymentId().equals(paymentId);

        if (checkFailed) {
            LOGGER.error("Error during preparing confirm PayPal request: wrong parameters");
            throw new KpsysException("Error during preparing confirm PayPal request: wrong parameters", Response.Status.BAD_REQUEST);
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

            // save payment in our DB table
            savePayment(payPalInitRequest, paymentId);

            return EntityResponse.of(new Result<>(result));
        } catch (PayPalRESTException e) {
            LOGGER.error("Error during performing confirm PayPal request: " + e.getDetails());
            throw new KpsysException("Error during performing confirm PayPal request: " + e.getMessage(), Response.Status.INTERNAL_SERVER_ERROR);
        }
    }

    private void savePayment(PayPalInitRequest payPalInitRequest, String paymentId) {
        paymentDao.create(com.kpsys.domain.Payment.builder()
            .licensePlate(payPalInitRequest.getLicensePlate())
            .parkingId(payPalInitRequest.getParkingId())
            .amount(payPalInitRequest.getAmount())
            .currency(payPalInitRequest.getCurrency())
            .paypalPaymentId(paymentId)
            .paymentFromTimestamp(parseTimestamp(payPalInitRequest.getPaymentFromTimestamp()))
            .paymentUntilTimestamp(parseTimestamp(payPalInitRequest.getPaymentUntilTimestamp()))
            .paymentTimestamp(parseTimestamp(payPalInitRequest.getPaymentTimestamp()))
            .build());
    }

    @POST
    @Path("/proceed")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public EntityResponse<Url> proceed(@Valid PayPalInitRequest payPalInitRequest) {

        Amount amount = new Amount();
        amount.setCurrency(payPalInitRequest.getCurrency());
        amount.setTotal(String.valueOf(payPalInitRequest.getAmount()));

        Transaction transaction = new Transaction();
        transaction.setAmount(amount);
        if (payPalInitRequest.getDescription() != null && !payPalInitRequest.getDescription().isEmpty()) {
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
            String cancelUrl = String.format("http://localhost:%d/#/home?query=%s", httpPort, URLEncoder.encode(query, "UTF-8"));
            redirectUrls.setCancelUrl(cancelUrl);

            //TODO: provide hostname and port programmatically
            // an url for user pressed "continue" during "Paypal checkout - review your payment"
            String returnUrl = String.format("http://localhost:%d/#/confirm?guid=%s", httpPort, URLEncoder.encode(guid, "UTF-8"));
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
            LOGGER.error("Error during PayPal request: " + e.getDetails());
            throw new KpsysException("Error during PayPal request: " + e.getDetails().getMessage(), Response.Status.INTERNAL_SERVER_ERROR);
        } catch (Exception ex) {
            LOGGER.error("Error during PayPal request: " + ex.getMessage());
            throw new KpsysException("Error during PayPal request", Response.Status.INTERNAL_SERVER_ERROR);
        }
    }

    @GET
    @Path("/pdf")
    @Produces(MediaType.APPLICATION_OCTET_STREAM)
    public Response downloadPdfReceipt(@QueryParam("guid") @NotNull @NotEmpty String guid,
                                       @QueryParam("paymentId") @NotNull @NotEmpty String paymentId) {

        PayPalInitRequest payPalInitRequest = Storage.getInstance().get(guid);
        boolean checkFailed = payPalInitRequest == null || !payPalInitRequest.getPaymentId().equals(paymentId);

        if (checkFailed) {
            LOGGER.error("Error during creating PDF request: wrong parameters");
            throw new KpsysException("Error during creating PDF request: wrong parameters", Response.Status.BAD_REQUEST);
        }

        final PDDocument doc = new PDDocument();
        PDPage page = new PDPage();
        doc.addPage(page);

        PDPageContentStream pageContentStream = null;
        try {
            pageContentStream = new PDPageContentStream(doc, page);
            pageContentStream.beginText();

            pageContentStream.setFont(PDType1Font.TIMES_BOLD, 12);
            pageContentStream.setLeading(14.5f);

            pageContentStream.newLineAtOffset(25, 700);
            pageContentStream.showText("Receipt:");
            pageContentStream.newLine();

            pageContentStream.setFont(PDType1Font.TIMES_ROMAN, 12);
            pageContentStream.showText("License Plate: " + payPalInitRequest.getLicensePlate());
            pageContentStream.newLine();

            pageContentStream.showText("Parking Id: " + payPalInitRequest.getParkingId());
            pageContentStream.newLine();

            pageContentStream.showText("Currency: " + payPalInitRequest.getCurrency());
            pageContentStream.newLine();

            pageContentStream.showText("Amount: " + payPalInitRequest.getAmount());
            pageContentStream.newLine();

            if (payPalInitRequest.getPaymentFromTimestamp() != null && !payPalInitRequest.getPaymentFromTimestamp().isEmpty()) {
                pageContentStream.showText("Payment From Timestamp: " + payPalInitRequest.getPaymentFromTimestamp());
                pageContentStream.newLine();
            }

            if (payPalInitRequest.getPaymentUntilTimestamp() != null && !payPalInitRequest.getPaymentUntilTimestamp().isEmpty()) {
                pageContentStream.showText("Payment Until Timestamp: " + payPalInitRequest.getPaymentUntilTimestamp());
                pageContentStream.newLine();
            }

            if (payPalInitRequest.getParkingZone() != null) {
                pageContentStream.showText("Parking Zone: " + payPalInitRequest.getParkingZone());
                pageContentStream.newLine();
            }

            pageContentStream.showText("Payment Id: " + payPalInitRequest.getPaymentId());
            pageContentStream.newLine();

            pageContentStream.endText();

            pageContentStream.close();

            StreamingOutput streamingOutput = output -> {
                try {
                    doc.save(output);
                    doc.close();
                } catch (IOException e) {
                    throw new WebApplicationException(e);
                }
            };
            return Response.ok(streamingOutput, MediaType.APPLICATION_OCTET_STREAM)
                .header("content-disposition", "attachment; filename = receipt.pdf")
                .build();
        } catch (IOException e) {
            try {
                if (pageContentStream != null) {
                    pageContentStream.close();
                }
                doc.close();
            } catch (IOException ignored) {

            }

            LOGGER.error("Error during creating PDF request", e);
            throw new KpsysException("Error during creating PDF request", e, Response.Status.INTERNAL_SERVER_ERROR);
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

    private DateTime parseTimestamp(String src) {
        if (src == null || src.isEmpty()) {
            return null;
        }

        try {
            DateTimeFormatter dateTimeFormatter = DateTimeFormat.forPattern(src.endsWith("Z") ? "yyyy-MM-dd'T'HH:mm:ssZ" : "yyyy-MM-dd'T'HH:mm:ss")
                .withZone(DateTimeZone.UTC);
            return dateTimeFormatter.parseDateTime(src);
        } catch (UnsupportedOperationException | IllegalArgumentException e) {
            LOGGER.error("Unable to parse timestamp: " + src, e);
            return null;
        }
    }
}