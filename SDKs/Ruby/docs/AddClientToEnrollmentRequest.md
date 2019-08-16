# SwaggerClient::AddClientToEnrollmentRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_id** | **String** | The ID of the client who is being booked into the enrollment. | 
**class_schedule_id** | **Integer** | The ID of the class schedule (enrollment) into which the client is being booked. | 
**enroll_date_forward** | **DateTime** | Enroll the clients from this date forward. &#x60;EnrollDateForward&#x60; takes priority over open enrollment. | [optional] 
**enroll_open** | **Array&lt;DateTime&gt;** | Enroll for selected days. | [optional] 
**test** | **BOOLEAN** | When &#x60;true&#x60;, input information is validated, but not committed.&lt;br /&gt;  Default: **false** | [optional] 
**send_email** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the client should be sent an email. An email is only sent if the client has an email address and automatic emails have been set up.&lt;br /&gt;  Default: **false** | [optional] 
**waitlist** | **BOOLEAN** | When &#x60;true&#x60;, the client is added to a specific enrollments waiting list. | [optional] 
**waitlist_entry_id** | **Integer** | The waiting list entry to add. Used to add a client to an enrollment from a waiting list entry. | [optional] 


