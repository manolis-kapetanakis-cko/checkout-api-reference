CheckoutApi api = CheckoutApiImpl.create("your secret key", true, "your public key");

EventNotificationResponse notification = api.eventsClient().retrieveEventNotification("evt_c2qelfixai2u3es3ksovngkx3e", "ntf_wqjkqpgjy33uxoywcej4fnw6qm").get();
