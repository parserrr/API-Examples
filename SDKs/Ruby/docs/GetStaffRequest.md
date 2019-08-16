# SwaggerClient::GetStaffRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**staff_ids** | **Array&lt;Integer&gt;** | A list of the requested staff IDs. | [optional] 
**filters** | **Array&lt;String&gt;** | Filters to apply to the search. Possible values are:  * StaffViewable  * AppointmentInstructor  * ClassInstructor  * Male  * Female | [optional] 
**session_type_id** | **Integer** | Return only staff members that are available for the specified session type. You must supply a valid &#x60;StartDateTime&#x60; and &#x60;LocationID&#x60; to use this parameter. | [optional] 
**start_date_time** | **DateTime** | Return only staff members that are available at the specified date and time. You must supply a valid &#x60;SessionTypeID&#x60; and &#x60;LocationID&#x60; to use this parameter. | [optional] 
**location_id** | **Integer** | Return only staff members that are available at the specified location. You must supply a valid &#x60;SessionTypeID&#x60; and &#x60;StartDateTime&#x60; to use this parameter. | [optional] 
**limit** | **Integer** | Number of results to include, defaults to 100 | [optional] 
**offset** | **Integer** | Page offset, defaults to 0. | [optional] 


