CheckoutSdk.configure do |config|
  config.secret_key = "sk_xxxxxx"
  config.public_key = "pk_xxxxxx"
  config.base_url   = "https://api.sandbox.checkout.com" #for sandbox
end

payment_request_source = CheckoutSdk::PaymentRequestSource.new
payment_request_source.type = "token"
payment_request_source.token = "tok_ubfj2q76miwundwlk72vxt2i7q"
payment_request_source.amount = 2022
payment_request_source.currency = "GBP"
payment_request_source.reference = "ORD-090857"


api_resource = CheckoutSdk::ApiResource.new

# Send API call
response = api_resource.request_payment(payment_request_source)

# response parsing
puts(response.data)         # => {...}
puts(response.body)           # => "..."