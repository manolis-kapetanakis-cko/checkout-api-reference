CheckoutSdk.configure do |config|
  config.secret_key = "your secret key"
  config.public_key = "your public key"
  config.base_url   = "https://api.sandbox.checkout.com" #for sandbox
end

payment_request_source = CheckoutSdk::RequestToken.new
payment_request_source.type = "applepay"
payment_request_source.token_data_version = "EC_v1"
payment_request_source.token_data_data = "t7GeajLB9skXB6QSWfEpPA4WPhDqB7ekdd+F7588arLzve..."
payment_request_source.token_data_signature = "MIAGCSqGbGUg..."
payment_request_source.token_data_header = "..."

api_resource = CheckoutSdk::ApiResource.new

# Send API call
response = api_resource.request_payment(payment_request_source)

# response parsing
puts(response.data)         # => {...}
puts(response.body)           # => "..."
