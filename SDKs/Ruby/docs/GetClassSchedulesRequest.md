# SwaggerClient::GetClassSchedulesRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**class_schedule_ids** | **Array&lt;Integer&gt;** | The class schedule IDs.  &lt;br /&gt;Default: **all** | [optional] 
**end_date** | **DateTime** | The end date of the range. Return any active enrollments that occur on or before this day.  &lt;br /&gt;Default: **StartDate** | [optional] 
**location_ids** | **Array&lt;Integer&gt;** | The location IDs.   &lt;br /&gt;Default: **all** | [optional] 
**program_ids** | **Array&lt;Integer&gt;** | The program IDs.   &lt;br /&gt;Default: **all** | [optional] 
**session_type_ids** | **Array&lt;Integer&gt;** | The session type IDs.   &lt;br /&gt;Default: **all** | [optional] 
**staff_ids** | **Array&lt;Integer&gt;** | The staff IDs.   &lt;br /&gt;Default: **all** | [optional] 
**start_date** | **DateTime** | The start date of the range. Return any active enrollments that occur on or after this day.  &lt;br /&gt;Default: **today’s date** | [optional] 
**limit** | **Integer** | Number of results to include, defaults to 100 | [optional] 
**offset** | **Integer** | Page offset, defaults to 0. | [optional] 


