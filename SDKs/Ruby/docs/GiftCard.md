# SwaggerClient::GiftCard

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The gift card&#39;s &#x60;ProductID&#x60;. | [optional] 
**location_ids** | **Array&lt;Integer&gt;** | The IDs of the locations where the gift card is sold. | [optional] 
**description** | **String** | A description of the gift card. | [optional] 
**editable_by_consumer** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the gift card can be edited by the client. | [optional] 
**card_value** | **Float** | The value of the gift card. | [optional] 
**sale_price** | **Float** | The sale price of the gift card, if applicable. | [optional] 
**sold_online** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the gift card is sold online. | [optional] 
**membership_restriction_ids** | **Array&lt;Integer&gt;** | A list of IDs for membership restrictions, if this card is restricted to members with certain types of memberships. | [optional] 
**gift_card_terms** | **String** | The terms of the gift card. | [optional] 
**contact_info** | **String** | Contact information for the gift card. | [optional] 
**display_logo** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the logo should be displayed on the gift card. | [optional] 
**layouts** | [**Array&lt;GiftCardLayout&gt;**](GiftCardLayout.md) | A list of layouts available for the gift card. | [optional] 


