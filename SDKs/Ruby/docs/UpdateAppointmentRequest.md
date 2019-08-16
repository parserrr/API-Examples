# SwaggerClient::UpdateAppointmentRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**appointment_id** | **Integer** | The appointments unique ID. | 
**end_date_time** | **DateTime** | The end date and time of the new appointment.   &lt;br /&gt;Default: **StartDateTime**, offset by the staff member’s default appointment duration. | [optional] 
**execute** | **String** | The action taken to add this appointment. | [optional] 
**gender_preference** | **String** | The client’s service provider gender preference. | [optional] 
**notes** | **String** | Any general notes about this appointment. | [optional] 
**provider_id** | **String** | If a user has Complementary and Alternative Medicine features enabled, this parameter assigns a provider ID to the appointment. | [optional] 
**resource_ids** | **Array&lt;Integer&gt;** | A list of resource IDs to associate with the new appointment. | [optional] 
**send_email** | **BOOLEAN** | Whether to send client an email for cancellations. An email is sent only if the client has an email address and automatic emails have been set up.   &lt;br /&gt;Default: **false** | [optional] 
**session_type_id** | **Integer** | The session type associated with the new appointment. | [optional] 
**staff_id** | **Integer** | The ID of the staff member who is adding the new appointment. | [optional] 
**start_date_time** | **DateTime** | The start date and time of the new appointment. | [optional] 
**test** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the method is to be validated, but no new appointment data is added.   &lt;br /&gt;Default: **false** | [optional] 


