# SwaggerClient::GetClassDescriptionsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**class_description_id** | **Integer** | Filters to the single result with the given ID. | [optional] 
**program_ids** | **Array&lt;Integer&gt;** | Filters results to class descriptions belonging to the given programs. | [optional] 
**start_class_date_time** | **DateTime** | Filters the results to class descriptions for scheduled classes that happen on or after the given date and time. | [optional] 
**end_class_date_time** | **DateTime** | Filters the results to class descriptions for scheduled classes that happen before the given date and time. | [optional] 
**staff_id** | **Integer** | Filters results to class descriptions for scheduled classes taught by the given staff member. | [optional] 
**location_id** | **Integer** | Filters results to classes descriptions for schedule classes as the given location. | [optional] 
**limit** | **Integer** | Number of results to include, defaults to 100 | [optional] 
**offset** | **Integer** | Page offset, defaults to 0. | [optional] 


