# SwaggerClient::SaleApi

All URIs are relative to *https://api.mindbodyonline.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sale_checkout_shopping_cart**](SaleApi.md#sale_checkout_shopping_cart) | **POST** /public/v{version}/sale/checkoutshoppingcart | Purchase pricing options, packages, retail products, or tips for a client.
[**sale_get_accepted_card_types**](SaleApi.md#sale_get_accepted_card_types) | **GET** /public/v{version}/sale/acceptedcardtypes | Get credit cards types that a site accepts.
[**sale_get_contracts**](SaleApi.md#sale_get_contracts) | **GET** /public/v{version}/sale/contracts | Get contracts available for purchase at a site.
[**sale_get_custom_payment_methods**](SaleApi.md#sale_get_custom_payment_methods) | **GET** /public/v{version}/sale/custompaymentmethods | Get payment methods that can be used to pay for sales at a site.
[**sale_get_gift_cards**](SaleApi.md#sale_get_gift_cards) | **GET** /public/v{version}/sale/giftcards | Get gift cards available for purchase at a site.
[**sale_get_packages**](SaleApi.md#sale_get_packages) | **GET** /public/v{version}/sale/packages | Get packages available for purchase at a site.
[**sale_get_products**](SaleApi.md#sale_get_products) | **GET** /public/v{version}/sale/products | Get retail products available for purchase at a site.
[**sale_get_sales**](SaleApi.md#sale_get_sales) | **GET** /public/v{version}/sale/sales | Get sales completed at a site.
[**sale_get_services**](SaleApi.md#sale_get_services) | **GET** /public/v{version}/sale/services | Get pricing options available for purchase at a site
[**sale_purchase_contract**](SaleApi.md#sale_purchase_contract) | **POST** /public/v{version}/sale/purchasecontract | Purchase a contract for a client.
[**sale_purchase_gift_card**](SaleApi.md#sale_purchase_gift_card) | **POST** /public/v{version}/sale/purchasegiftcard | Purchase a gift card for a client.


# **sale_checkout_shopping_cart**
> Object sale_checkout_shopping_cart(request, site_id, version, opts)

Purchase pricing options, packages, retail products, or tips for a client.

This endpoint provides a wide range of functionality. For example, you can use it when a client purchases new pricing options, retail products, packages, and tips. You can also combine purchasing a new pricing option and many other functions, such as booking a client into a class, booking a new appointment for a client, enrolling a client into an enrollment or course, or reconciling an unpaid, already booked appointment or class. Use this call when a client purchases:  * a pricing option, after calling `GET Services` and choosing a specific pricing option’s ID  * a retail product, after calling `GET Products` and choosing a specific retail product’s ID  * a package, after calling `GET Packages` and choosing a specific package’s ID  * a tip to give to a staff member, after calling `GET Staff` and choosing a specific staff member ID, and the amount that the client wants to tip  The documentation provides explanations of the request body and response, as well as the cart item metadata, payment item metadata, and purchased cart items.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SaleApi.new

request = SwaggerClient::CheckoutShoppingCartRequest.new # CheckoutShoppingCartRequest | 

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '' # String | A staff user authorization token.
}

begin
  #Purchase pricing options, packages, retail products, or tips for a client.
  result = api_instance.sale_checkout_shopping_cart(request, site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SaleApi->sale_checkout_shopping_cart: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CheckoutShoppingCartRequest**](CheckoutShoppingCartRequest.md)|  | 
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **sale_get_accepted_card_types**
> Array&lt;String&gt; sale_get_accepted_card_types(site_id, version, opts)

Get credit cards types that a site accepts.

Gets a list of card types that the site accepts. You can also use `GET Sites` to return the Site object, which contains individual accepted card types for requested sites.    This endpoint has no query parameters.The response returns a list of strings. Possible values are:  * Visa  * MasterCard  * Discover  * AMEX

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SaleApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '' # String | A staff user authorization token.
}

begin
  #Get credit cards types that a site accepts.
  result = api_instance.sale_get_accepted_card_types(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SaleApi->sale_get_accepted_card_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **sale_get_contracts**
> GetContractsResponse sale_get_contracts(request_location_id, site_id, version, opts)

Get contracts available for purchase at a site.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SaleApi.new

request_location_id = 56 # Integer | The ID of the location that has the requested contracts and AutoPay options.

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_consumer_id: 789, # Integer | The ID of the client.
  request_contract_ids: [56], # Array<Integer> | When included, the response only contains details about the specified contract IDs.
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_sold_online: true # BOOLEAN | When `true`, the response only contains details about contracts and AutoPay options that can be sold online.<br />  When `false`, only contracts that are not intended to be sold online are returned.<br />  Default: **all contracts**
}

begin
  #Get contracts available for purchase at a site.
  result = api_instance.sale_get_contracts(request_location_id, site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SaleApi->sale_get_contracts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_location_id** | **Integer**| The ID of the location that has the requested contracts and AutoPay options. | 
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_consumer_id** | **Integer**| The ID of the client. | [optional] 
 **request_contract_ids** | [**Array&lt;Integer&gt;**](Integer.md)| When included, the response only contains details about the specified contract IDs. | [optional] 
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_sold_online** | **BOOLEAN**| When &#x60;true&#x60;, the response only contains details about contracts and AutoPay options that can be sold online.&lt;br /&gt;  When &#x60;false&#x60;, only contracts that are not intended to be sold online are returned.&lt;br /&gt;  Default: **all contracts** | [optional] 

### Return type

[**GetContractsResponse**](GetContractsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **sale_get_custom_payment_methods**
> GetCustomPaymentMethodsResponse sale_get_custom_payment_methods(site_id, version, opts)

Get payment methods that can be used to pay for sales at a site.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SaleApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_offset: 56 # Integer | Page offset, defaults to 0.
}

begin
  #Get payment methods that can be used to pay for sales at a site.
  result = api_instance.sale_get_custom_payment_methods(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SaleApi->sale_get_custom_payment_methods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 

### Return type

[**GetCustomPaymentMethodsResponse**](GetCustomPaymentMethodsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **sale_get_gift_cards**
> GetGiftCardResponse sale_get_gift_cards(site_id, version, opts)

Get gift cards available for purchase at a site.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SaleApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_ids: [56], # Array<Integer> | Filters the results to the requested gift card IDs.<br />  Default: **all** gift cards.
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_location_id: 56, # Integer | When included, returns gift cards that are sold at the provided location ID.
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_sold_online: true # BOOLEAN | When `true`, only returns gift cards that are sold online.<br />  Default: **false**
}

begin
  #Get gift cards available for purchase at a site.
  result = api_instance.sale_get_gift_cards(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SaleApi->sale_get_gift_cards: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Filters the results to the requested gift card IDs.&lt;br /&gt;  Default: **all** gift cards. | [optional] 
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_location_id** | **Integer**| When included, returns gift cards that are sold at the provided location ID. | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_sold_online** | **BOOLEAN**| When &#x60;true&#x60;, only returns gift cards that are sold online.&lt;br /&gt;  Default: **false** | [optional] 

### Return type

[**GetGiftCardResponse**](GetGiftCardResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **sale_get_packages**
> GetPackagesResponse sale_get_packages(site_id, version, opts)

Get packages available for purchase at a site.

A package is typically used to combine multiple services and/or products into a single offering. Staff members can check out multiple appointments while selling the package, and can discount the items included. For example, a spa might bundle a massage, a pedicure, a manicure, a facial, and a few selected beauty products into a package.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SaleApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_package_ids: [56], # Array<Integer> | A list of the packages IDs to filter by.
  request_sell_online: true # BOOLEAN | When `true`, only returns products that can be sold online.<br />  When `false`, all products are returned.<br />  Default: **false**
}

begin
  #Get packages available for purchase at a site.
  result = api_instance.sale_get_packages(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SaleApi->sale_get_packages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_package_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of the packages IDs to filter by. | [optional] 
 **request_sell_online** | **BOOLEAN**| When &#x60;true&#x60;, only returns products that can be sold online.&lt;br /&gt;  When &#x60;false&#x60;, all products are returned.&lt;br /&gt;  Default: **false** | [optional] 

### Return type

[**GetPackagesResponse**](GetPackagesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **sale_get_products**
> GetProductsResponse sale_get_products(site_id, version, opts)

Get retail products available for purchase at a site.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SaleApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_category_ids: [56], # Array<Integer> | A list of category IDs to filter by.
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_location_id: 56, # Integer | The location ID to use to determine the tax for the products that this request returns.<br />  Default: **online store**
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_product_ids: ['request_product_ids_example'], # Array<String> | An ID filter for products.
  request_search_text: 'request_search_text_example', # String | A search filter, used for searching by term.
  request_sell_online: true, # BOOLEAN | When `true`, only products that can be sold online are returned.<br />  When `false`, all products are returned.<br />  Default: **false**
  request_sub_category_ids: [56] # Array<Integer> | A list of subcategory IDs to filter by.
}

begin
  #Get retail products available for purchase at a site.
  result = api_instance.sale_get_products(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SaleApi->sale_get_products: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_category_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of category IDs to filter by. | [optional] 
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_location_id** | **Integer**| The location ID to use to determine the tax for the products that this request returns.&lt;br /&gt;  Default: **online store** | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_product_ids** | [**Array&lt;String&gt;**](String.md)| An ID filter for products. | [optional] 
 **request_search_text** | **String**| A search filter, used for searching by term. | [optional] 
 **request_sell_online** | **BOOLEAN**| When &#x60;true&#x60;, only products that can be sold online are returned.&lt;br /&gt;  When &#x60;false&#x60;, all products are returned.&lt;br /&gt;  Default: **false** | [optional] 
 **request_sub_category_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of subcategory IDs to filter by. | [optional] 

### Return type

[**GetProductsResponse**](GetProductsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **sale_get_sales**
> GetSalesResponse sale_get_sales(site_id, version, opts)

Get sales completed at a site.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SaleApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '' # String | A staff user authorization token.
}

begin
  #Get sales completed at a site.
  result = api_instance.sale_get_sales(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SaleApi->sale_get_sales: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]

### Return type

[**GetSalesResponse**](GetSalesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **sale_get_services**
> GetServicesResponse sale_get_services(site_id, version, opts)

Get pricing options available for purchase at a site

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SaleApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_class_id: 56, # Integer | Filters to the pricing options for the specified class ID.
  request_class_schedule_id: 56, # Integer | Filters to the pricing options for the specified class schedule ID.
  request_hide_related_programs: true, # BOOLEAN | When `true`, indicates that pricing options of related programs are omitted from the response.<br />  Default: **false**
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_location_id: 56, # Integer | When specified, for each returned pricing option, `TaxRate` and `TaxIncluded` are calculated according to the specified location. Note that this does not filter results to only services provided at the given location, and for locations where Value-Added Tax (VAT) rules apply, the `TaxRate` is set to zero.
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_program_ids: [56], # Array<Integer> | Filters to pricing options with the specified program IDs.
  request_sell_online: true, # BOOLEAN | When `true`, filters to the pricing options that can be sold online.<br />  Default: **false**
  request_service_ids: ['request_service_ids_example'], # Array<String> | Filters to the pricing options with the specified IDs. In this context, service and pricing option are used interchangeably.
  request_session_type_ids: [56], # Array<Integer> | Filters to the pricing options with the specified session types IDs.
  request_staff_id: 789 # Integer | Sets `Price` and `OnlinePrice` to the particular pricing of a specific staff member, if allowed by the business.
}

begin
  #Get pricing options available for purchase at a site
  result = api_instance.sale_get_services(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SaleApi->sale_get_services: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_class_id** | **Integer**| Filters to the pricing options for the specified class ID. | [optional] 
 **request_class_schedule_id** | **Integer**| Filters to the pricing options for the specified class schedule ID. | [optional] 
 **request_hide_related_programs** | **BOOLEAN**| When &#x60;true&#x60;, indicates that pricing options of related programs are omitted from the response.&lt;br /&gt;  Default: **false** | [optional] 
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_location_id** | **Integer**| When specified, for each returned pricing option, &#x60;TaxRate&#x60; and &#x60;TaxIncluded&#x60; are calculated according to the specified location. Note that this does not filter results to only services provided at the given location, and for locations where Value-Added Tax (VAT) rules apply, the &#x60;TaxRate&#x60; is set to zero. | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_program_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Filters to pricing options with the specified program IDs. | [optional] 
 **request_sell_online** | **BOOLEAN**| When &#x60;true&#x60;, filters to the pricing options that can be sold online.&lt;br /&gt;  Default: **false** | [optional] 
 **request_service_ids** | [**Array&lt;String&gt;**](String.md)| Filters to the pricing options with the specified IDs. In this context, service and pricing option are used interchangeably. | [optional] 
 **request_session_type_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Filters to the pricing options with the specified session types IDs. | [optional] 
 **request_staff_id** | **Integer**| Sets &#x60;Price&#x60; and &#x60;OnlinePrice&#x60; to the particular pricing of a specific staff member, if allowed by the business. | [optional] 

### Return type

[**GetServicesResponse**](GetServicesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **sale_purchase_contract**
> PurchaseContractResponse sale_purchase_contract(request, site_id, version, opts)

Purchase a contract for a client.

Allows a client to sign up for a contract or autopay using the information returned from the `GET Contracts` endpoint. The client can pay with a new credit card or with a stored credit card. The client must exist at the site specified before this call is made.    This endpoint allows a developer to specify whether a client pays now or pays on the `StartDate`.If you are building a client-facing experience, you should talk with the business owner to understand the owner’s policies before you give clients a choice of the two payment types.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SaleApi.new

request = SwaggerClient::PurchaseContractRequest.new # PurchaseContractRequest | 

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '' # String | A staff user authorization token.
}

begin
  #Purchase a contract for a client.
  result = api_instance.sale_purchase_contract(request, site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SaleApi->sale_purchase_contract: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**PurchaseContractRequest**](PurchaseContractRequest.md)|  | 
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]

### Return type

[**PurchaseContractResponse**](PurchaseContractResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **sale_purchase_gift_card**
> PurchaseGiftCardResponse sale_purchase_gift_card(request, site_id, version, opts)

Purchase a gift card for a client.

Allows a client to purchase a gift card from a business in a variety of designs. The card can be emailed to the recipient on a specific day, and a card title and a personal message can be added.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SaleApi.new

request = SwaggerClient::PurchaseGiftCardRequest.new # PurchaseGiftCardRequest | 

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '' # String | A staff user authorization token.
}

begin
  #Purchase a gift card for a client.
  result = api_instance.sale_purchase_gift_card(request, site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SaleApi->sale_purchase_gift_card: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**PurchaseGiftCardRequest**](PurchaseGiftCardRequest.md)|  | 
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]

### Return type

[**PurchaseGiftCardResponse**](PurchaseGiftCardResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



