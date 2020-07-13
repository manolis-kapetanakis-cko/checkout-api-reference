CheckoutSdk.configure do |config|
  config.secret_key = "sk_xxxxxx"
  config.public_key = "pk_xxxxxx"
  config.base_url   = "https://api.sandbox.checkout.com" #for sandbox
end

payment_request_source = CheckoutSdk::PaymentSource.new
payment_request_source.type = "sepa"
payment_request_source.reference = "X-080957-N34"

payment_request_source.customer_id = "cus_y3oqhf46pyzuxjbcn2giaqnb44"
payment_request_source.customer_email = "jokershere@gmail.com"
payment_request_source.customer_name = "Jack Napier"

payment_request_source.billing_address_line1 = "Checkout.com"
payment_request_source.billing_address_line2 = "90 Tottenham Court Road"
payment_request_source.billing_city = "London"
payment_request_source.billing_state = "London"
payment_request_source.billing_zip = "W1T 4TJ"
payment_request_source.billing_country = "GB"

payment_request_source.phone_country_code = "+1"
payment_request_source.phone_number = "415 555 2671"


payment_request_source.source_data_first_name = "Marcus"
payment_request_source.source_data_last_name = "Barrilius Maximus"
payment_request_source.source_data_account_iban = "DE25100100101234567893"
payment_request_source.source_data_bic = "PBNKDEFFXXX"
payment_request_source.source_data_billing_descriptor = "Ruby SDK test"
payment_request_source.source_data_mandate_type = "single"


api_resource = CheckoutSdk::ApiResource.new

# Send API call
response = api_resource.request_payment(payment_request_source)

# response parsing
puts(response.data)         # => {...}
puts(response.body)           # => "..."
