CheckoutApi api = CheckoutApiImpl.create("your secret key", true, "your public key");

WalletTokenRequest walletTokenRequest = new WalletTokenRequest('applepay', tokenData);
try {
    TokenResponse tokenRequest = api.tokensClient().requestAsync(walletTokenRequest).get();
    String token  = tokenRequest.getToken();
    return token;
} catch (CheckoutValidationException e) {
    return validationError(e.getError());
} catch (CheckoutApiException e) {
    LOG.severe("Payment request failed with status code " + e.getHttpStatusCode());
    throw e;
}
