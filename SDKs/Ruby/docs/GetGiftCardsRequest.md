# SwaggerClient::GetGiftCardsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**location_id** | **Integer** | When included, returns gift cards that are sold at the provided location ID. | [optional] 
**sold_online** | **BOOLEAN** | When &#x60;true&#x60;, only returns gift cards that are sold online.&lt;br /&gt;  Default: **false** | [optional] 
**ids** | **Array&lt;Integer&gt;** | Filters the results to the requested gift card IDs.&lt;br /&gt;  Default: **all** gift cards. | [optional] 
**limit** | **Integer** | Number of results to include, defaults to 100 | [optional] 
**offset** | **Integer** | Page offset, defaults to 0. | [optional] 


