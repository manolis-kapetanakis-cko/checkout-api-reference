CheckoutApi api = CheckoutApiImpl.create("your secret key", true, "your public key");

WebhookResponse webhook = api.webhooksClient().retrieveWebhook("wh_tdt72zlbe7cudogxdgit6nwk6i").get();