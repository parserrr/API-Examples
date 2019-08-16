# SwaggerClient::GetEnrollmentsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**class_schedule_ids** | **Array&lt;Integer&gt;** | A list of the requested class schedule IDs. If omitted, all class schedule IDs return. | [optional] 
**end_date** | **DateTime** | The end of the date range. The response returns any active enrollments that occur on or before this day.&lt;br /&gt;  Default: **StartDate** | [optional] 
**location_ids** | **Array&lt;Integer&gt;** | List of the IDs for the requested locations. If omitted, all location IDs return. | [optional] 
**program_ids** | **Array&lt;Integer&gt;** | List of the IDs for the requested programs. If omitted, all program IDs return. | [optional] 
**session_type_ids** | **Array&lt;Integer&gt;** | List of the IDs for the requested session types. If omitted, all session types IDs return. | [optional] 
**staff_ids** | **Array&lt;Integer&gt;** | List of the IDs for the requested staff IDs. If omitted, all staff IDs return. | [optional] 
**start_date** | **DateTime** | The start of the date range. The response returns any active enrollments that occur on or after this day.&lt;br /&gt;  Default: **today’s date** | [optional] 
**limit** | **Integer** | Number of results to include, defaults to 100 | [optional] 
**offset** | **Integer** | Page offset, defaults to 0. | [optional] 


