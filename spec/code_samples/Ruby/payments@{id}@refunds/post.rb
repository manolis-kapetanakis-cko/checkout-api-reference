CheckoutSdk.configure do |config|
  config.secret_key = "sk_xxxxxx"
  config.public_key = "pk_xxxxxx"
  config.base_url   = "https://api.sandbox.checkout.com" #for sandbox
end

refund_payment = CheckoutSdk::RefundPayment.new
refund_payment.id = "pay_y3oqhf46pyzuxjbcn2giaqnb44"
refund_payment.amount = "100"
refund_payment.reference = "your reference"

api_resource = CheckoutSdk::ApiResource.new

# Send API call
response = api_resource.request_payment(refund_payment)

# response parsing
puts(response.data)         # => {...}
puts(response.body)           # => "..."
