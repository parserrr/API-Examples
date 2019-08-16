# SwaggerClient::GetResourcesRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**session_type_ids** | **Array&lt;Integer&gt;** | List of session type IDs.&lt;br /&gt;  Default: **all** | [optional] 
**location_id** | **Integer** | The location of the resource. This parameter is ignored if &#x60;EndDateTime&#x60; or &#x60;LocationID&#x60; is not set.&lt;br /&gt;  Default: **all** | [optional] 
**start_date_time** | **DateTime** | The time the resource starts. This parameter is ignored if &#x60;EndDateTime&#x60; or &#x60;LocationID&#x60; is not set. | [optional] 
**end_date_time** | **DateTime** | The time the resource ends. This parameter is ignored if &#x60;EndDateTime&#x60; or &#x60;LocationID&#x60; is not set. | [optional] 
**limit** | **Integer** | Number of results to include, defaults to 100 | [optional] 
**offset** | **Integer** | Page offset, defaults to 0. | [optional] 


