CheckoutApi api = CheckoutApiImpl.create("your secret key", true, "your public key");

api.eventsClient().retryAllWebhooks("evt_c2qelfixai2u3es3ksovngkx3e").get();