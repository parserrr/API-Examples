# SwaggerClient::GetBookableItemsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**session_type_ids** | **Array&lt;Integer&gt;** | A list of the requested session type IDs. | 
**location_ids** | **Array&lt;Integer&gt;** | A list of the requested location IDs. | [optional] 
**staff_ids** | **Array&lt;Integer&gt;** | A list of the requested staff IDs. | [optional] 
**start_date** | **DateTime** | The start date of the requested date range.   &lt;br /&gt;Default: **today’s date** | [optional] 
**end_date** | **DateTime** | The end date of the requested date range.   &lt;br /&gt;Default: **StartDate** | [optional] 
**appointment_id** | **Integer** | If provided, filters out the appointment with this ID. | [optional] 
**ignore_default_session_length** | **BOOLEAN** | When &#x60;true&#x60;, availabilities that are non-default return, for example, a 30-minute availability with a 60-minute default session length.&lt;br /&gt;  When &#x60;false&#x60;, only availabilities that have the default session length return. | [optional] 
**limit** | **Integer** | Number of results to include, defaults to 100 | [optional] 
**offset** | **Integer** | Page offset, defaults to 0. | [optional] 


