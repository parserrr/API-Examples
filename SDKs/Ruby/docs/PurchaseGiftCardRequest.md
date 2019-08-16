# SwaggerClient::PurchaseGiftCardRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**test** | **BOOLEAN** | When &#x60;true&#x60;, allows you to test the request without affecting the database.&lt;br /&gt;  When &#x60;false&#x60;, the request is carried out and the database is affected. | [optional] 
**location_id** | **Integer** | The ID of the location where the gift card is being sold. | 
**layout_id** | **Integer** | The ID of the layout used for the gift card’s image. | [optional] 
**purchaser_client_id** | **String** | The RSSID of the client who is purchasing the gift card. | 
**gift_card_id** | **Integer** | The product ID of the gift card being purchased. | 
**send_email_receipt** | **BOOLEAN** | When &#x60;true&#x60;, indicates that a purchase receipt email should be sent to the purchasing client, if all settings are correctly configured.&lt;br /&gt;  When &#x60;false&#x60;, no email is sent to the purchaser. | [optional] 
**recipient_email** | **String** | The email address to send the gift card image to. This parameter is required if the &#x60;LayoutId&#x60; is not 0.&lt;br /&gt;  Maximum length: **100** | [optional] 
**recipient_name** | **String** | The name of the person who is to receive the gift card. This parameter is required if the &#x60;LayoutId&#x60; is not 0.&lt;br /&gt;  Maximum length: **20** | [optional] 
**title** | **String** | The text to use as the title of the gift card, for example: Happy Birthday, Maria! This parameter is required if the &#x60;LayoutId&#x60; is not 0.&lt;br /&gt;  Maximum length: **20** | [optional] 
**gift_message** | **String** | A personal message to include in the gift card.&lt;br /&gt;  Maximum length: **300** | [optional] 
**delivery_date** | **DateTime** | The date that the gift card’s image is to be delivered to the recipient. This parameter cannot be set to a date in the past. This parameter is required if the &#x60;LayoutId&#x60; is not 0.  Default: **today**  Minimum: **today** | [optional] 
**payment_info** | [**CheckoutPaymentInfo**](CheckoutPaymentInfo.md) | Contains information about the payment. | [optional] 


