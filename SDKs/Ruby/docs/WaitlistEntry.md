# SwaggerClient::WaitlistEntry

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**class_date** | **DateTime** | The date of the class or enrollment. | [optional] 
**class_id** | **Integer** | The ID of the class or enrollment. | [optional] 
**class_schedule** | [**ClassSchedule**](ClassSchedule.md) | Contains information about the class schedule for this waiting list entry. | [optional] 
**client** | [**Client**](Client.md) | Contains information about the requested client who is on the waiting list. | [optional] 
**enrollment_date_forward** | **DateTime** | If the waiting list entry was created for an enrollment, this is the date on or after which the client can be added to the enrollment from the waitlist. | [optional] 
**id** | **Integer** | The ID of the waiting list entry. | [optional] 
**request_date_time** | **DateTime** | The date and time that the request to be on the waiting list was made. | [optional] 
**visit_ref_no** | **Integer** | The ID of the visit that is associated with the waiting list entry. | [optional] 
**web** | **BOOLEAN** | If &#x60;true&#x60;, the entry on the waiting list was requested online.&lt;br /&gt;  If &#x60;false&#x60;, the entry on the waiting list was requested off-line, for example in person or by phone. | [optional] 


