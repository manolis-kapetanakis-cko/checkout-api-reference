CheckoutSdk.configure do |config|
  config.secret_key = "sk_xxxxxx"
  config.public_key = "pk_xxxxxx"
  config.base_url   = "https://api.sandbox.checkout.com" #for sandbox
end

capture_payment = CheckoutSdk::CapturePayment.new
capture_payment.id = "pay_y3oqhf46pyzuxjbcn2giaqnb44"
capture_payment.amount = "100"
capture_payment.reference = "your reference"

api_resource = CheckoutSdk::ApiResource.new

# Send API call
response = api_resource.request_payment(capture_payment)
puts(response.data)         # => {...}
puts(response.body)           # => "..."
