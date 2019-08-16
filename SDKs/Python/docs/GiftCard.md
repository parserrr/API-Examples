# GiftCard

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The gift card&#39;s &#x60;ProductID&#x60;. | [optional] 
**location_ids** | **list[int]** | The IDs of the locations where the gift card is sold. | [optional] 
**description** | **str** | A description of the gift card. | [optional] 
**editable_by_consumer** | **bool** | When &#x60;true&#x60;, indicates that the gift card can be edited by the client. | [optional] 
**card_value** | **float** | The value of the gift card. | [optional] 
**sale_price** | **float** | The sale price of the gift card, if applicable. | [optional] 
**sold_online** | **bool** | When &#x60;true&#x60;, indicates that the gift card is sold online. | [optional] 
**membership_restriction_ids** | **list[int]** | A list of IDs for membership restrictions, if this card is restricted to members with certain types of memberships. | [optional] 
**gift_card_terms** | **str** | The terms of the gift card. | [optional] 
**contact_info** | **str** | Contact information for the gift card. | [optional] 
**display_logo** | **bool** | When &#x60;true&#x60;, indicates that the logo should be displayed on the gift card. | [optional] 
**layouts** | [**list[GiftCardLayout]**](GiftCardLayout.md) | A list of layouts available for the gift card. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


