CheckoutApi api = CheckoutApiImpl.create("your secret key", true, "your public key");

List < WebhookResponse > response = api.webhooksClient().retrieveWebhooks().get();
