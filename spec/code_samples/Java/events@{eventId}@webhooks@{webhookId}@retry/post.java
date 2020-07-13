CheckoutApi api = CheckoutApiImpl.create("your secret key", true, "your public key");

api.eventsClient().retryWebhook("evt_c2qelfixai2u3es3ksovngkx3e", "wh_mpkyioafmajulnhjvwmrklenb4").get();