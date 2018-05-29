# Setup credentials
site_ids = { 'int' => -99 }
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
item = { 'ID' => 1364 }
cart_item = {
  'Quantity' => 1,
  'Item' => item,
  :attributes! => {
    'ins0:Item' => {
      'xsi:type' => 'tns:Service'
    }
  }
}
cart_items = { 'CartItem' => cart_item }

payment = {
  'CreditCardNumber' => '4111111111111111',
  'Amount' => 108.00,
  'BillingAddress' => '123 Something',
  'BillingCity' => 'SLO',
  'BillingState' => 'CA',
  'BillingPostalCode' => '93405',
  'BillingName' => 'MindBody',
  'ExpMonth' => '7',
  'ExpYear' => '2016'
}

payments = {
  'PaymentInfo' => payment,
  :attributes! => {
    'ins0:PaymentInfo' => {
      'xsi:type' => 'tns:CreditCardInfo'
    }
  }
}

https_request = {
  'SourceCredentials' => source_credentials,
  'UserCredentials' => user_credentials,
  'ClientID' => '002542',
  'CartItems' => cart_items,
  'Payments' => payments
}
params = { 'Request' => https_request }

# Run the call and store the results
result = https_client.call(:checkout_shopping_cart) do
  message params
end

# Parse results
https_status = result.body.dig(:checkout_shopping_cart_response, :checkout_shopping_cart_result, :status)

# Display results
puts https_status
