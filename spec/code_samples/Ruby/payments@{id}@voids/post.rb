CheckoutSdk.configure do |config|
  config.secret_key = "your secret key"
  config.public_key = "your public key"
  config.base_url   = "https://api.sandbox.checkout.com" #for sandbox
end

void_payment = CheckoutSdk::VoidPayment.new
void_payment.id = "pay_y3oqhf46pyzuxjbcn2giaqnb44"
void_payment.reference = "your reference"

api_resource = CheckoutSdk::ApiResource.new

# Send API call
response = api_resource.request_payment(void_payment)

# response parsing
puts(response.data)         # => {...}
puts(response.body)           # => "..."
