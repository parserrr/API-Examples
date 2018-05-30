gem 'savon', '~> 2.12'

require 'savon'

# Setup credentials
site_ids = { 'int' => -99 } # Use your site ID here
source_credentials = {
  'SourceName' => 'YourSourceName',
  'Password' => 'YourPassword',
  'SiteIDs' => site_ids
}
user_credentials = {
  'Username' => 'owner',
  'Password' => 'demo1234',
  'SiteIDs' => site_ids
}

############################
## SSL protected API call ##
############################

# Create Savon client using a manually defined endpoint
https_client = Savon.client do
  wsdl "https://api.mindbodyonline.com/0_5/SaleService.asmx?WSDL"
end

# Create request and package it for the call
item = {
  'ID' => 1364, # Get a list of services for your site using the GetServices call
  '@xsi:type' => 'tns:Service'
}
cart_item = {
  'Quantity' => 1,
  'Item' => item
}
cart_items = { 'CartItem' => cart_item }

payment = {
  'CreditCardNumber' => '4111111111111111',
  'Amount' => 108.00, # Should equal total for cart items if using a single payment method
  'BillingAddress' => '123 Something',
  'BillingCity' => 'SLO',
  'BillingState' => 'CA',
  'BillingPostalCode' => '93405',
  'BillingName' => 'MindBody',
  'ExpMonth' => '7',
  'ExpYear' => '2020',
  '@xsi:type' => 'tns:CreditCardInfo'
}

payments = { 'PaymentInfo' => payment }

https_request = {
  'SourceCredentials' => source_credentials,
  'UserCredentials' => user_credentials,
  'ClientID' => '100002308', # Client ID of purchasing consumer
  'CartItems' => cart_items,
  'Payments' => payments
}
params = { 'Request' => https_request }

# Run the call and store the results
result = https_client.call(:checkout_shopping_cart) do
  message params
end

# Parse results
response_body = result.body
https_status = response_body.dig(:checkout_shopping_cart_response, :checkout_shopping_cart_result, :status)

# Display results
puts "HTTP status:"
puts https_status
puts "Full response body:"
puts response_body
