# SwaggerClient::GetStaffAppointmentsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**appointment_ids** | **Array&lt;Integer&gt;** | A list of the requested appointment IDs. | [optional] 
**location_ids** | **Array&lt;Integer&gt;** | A list of the requested location IDs. | [optional] 
**start_date** | **DateTime** | The start date of the requested date range. If omitted, the default is used.   &lt;br /&gt;Default: **today’s date** | [optional] 
**end_date** | **DateTime** | The end date of the requested date range.   &lt;br /&gt;Default: **StartDate** | [optional] 
**staff_ids** | **Array&lt;Integer&gt;** | List of staff IDs to be returned. Use a value of zero to return all staff appointments. | [optional] 
**client_ids** | **Array&lt;String&gt;** | List of client IDs to be returned. | [optional] 
**limit** | **Integer** | Number of results to include, defaults to 100 | [optional] 
**offset** | **Integer** | Page offset, defaults to 0. | [optional] 


