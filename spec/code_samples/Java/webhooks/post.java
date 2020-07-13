CheckoutApi api = CheckoutApiImpl.create("your secret key", true, "your public key");

List < String > eventTypes = Arrays.asList("payment_captured", "payment_approved", "payment_declined");

WebhookRequest webhookRequest = WebhookRequest.builder()
  .url("https://example.com/webhook")
  .eventTypes(eventTypes)
  .build();
WebhookResponse webhookResponse = api.webhooksClient().registerWebhook(webhookRequest).get();