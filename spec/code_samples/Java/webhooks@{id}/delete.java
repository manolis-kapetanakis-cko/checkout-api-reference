CheckoutApi api = CheckoutApiImpl.create("your secret key", true, "your public key");

api.webhooksClient().removeWebhook("wh_ahun3lg7bf4e3lohbhni65335u").get();
