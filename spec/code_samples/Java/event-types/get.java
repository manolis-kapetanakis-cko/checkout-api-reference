CheckoutApi api = CheckoutApiImpl.create("your secret key", true, "your public key");

List<EventTypesResponse> allEventTypesResponses = api.eventsClient().retrieveAllEventTypes(null).get();
