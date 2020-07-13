CheckoutApi api = CheckoutApiImpl.create("your secret key", true, "your public key");

Address billingAddress = new Address();
billingAddress.setAddressLine1("Checkout.com");
billingAddress.setAddressLine2("Shepherdess Walk");
billingAddress.setCity("London");
billingAddress.setState("London");
billingAddress.setZip("N1 7LH");
billingAddress.setCountry("GB");

Phone phone = new Phone();
phone.setCountryCode("+1");
phone.setNumber("415 555 2671");

SourceData sourceData = new SourceData();
sourceData.put("first_name", "Marcus");
sourceData.put("last_name", "Barrilius Maximus");
sourceData.put("account_iban", "DE68100100101234567895");
sourceData.put("bic", "PBNKDEFFXXX");
sourceData.put("billing_descriptor", "Java SDK test");
sourceData.put("mandate_type", "single");

SourceRequest sourceRequest = new SourceRequest("sepa", billingAddress);
sourceRequest.setPhone(phone);
sourceRequest.setReference("Java SDK test");
sourceRequest.setSourceData(sourceData);
SourceResponse sourceResponse = api.sourcesClient().requestAsync(sourceRequest).get();

SourceProcessed source = sourceResponse.getSource();