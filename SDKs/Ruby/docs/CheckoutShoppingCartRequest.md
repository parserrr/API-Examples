# SwaggerClient::CheckoutShoppingCartRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cart_id** | **String** | The unique ID of the shopping cart to be processed. You can use this value to maintain a persistent cart. If you do not specify a cart ID, the MINDBODY software generates one. | [optional] 
**client_id** | **String** | The RSSID of the client making the purchase. A cart can be validated without a client ID, but a client ID must be specified to complete a sale. | 
**test** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the contents of the cart are validated, but the transaction does not take place. You should use this parameter during testing and when checking the calculated totals of the items in the cart.&lt;br /&gt;  When &#x60;false&#x60;, the transaction takes place and the database is affected.&lt;br /&gt;  Default: **false** | [optional] 
**items** | [**Array&lt;CheckoutItemWrapper&gt;**](CheckoutItemWrapper.md) | A list of the items in the cart. | 
**in_store** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the cart is to be completed by a staff member and is to take place at one of the business’ physical locations.&lt;br /&gt;  When &#x60;false&#x60;, indicates that the cart is to be completed by a client from the business’ online store.&lt;br /&gt;  Default: **false** | [optional] 
**promotion_code** | **String** | Promotion code to be applied to the cart. | [optional] 
**payments** | [**Array&lt;CheckoutPaymentInfo&gt;**](CheckoutPaymentInfo.md) | A list of payment information objects to be applied to payment against the items in the cart. | 
**send_email** | **BOOLEAN** | When &#x60;true&#x60;, sends a purchase receipt email to the client. Note that all appropriate permissions and settings must be enabled for the client to receive an email.&lt;br /&gt;  Default: **false** | [optional] 
**location_id** | **Integer** | The location ID to be used for pulling business mode prices and taxes. If no location ID is supplied, it defaults to the online store, represented by a null value.   Default: **null** (the online store) | [optional] 
**image** | **String** | The byte array data of the signature image. | [optional] 
**image_file_name** | **String** | The name of the signature image being uploaded. | [optional] 


