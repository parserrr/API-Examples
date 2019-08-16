# SwaggerClient::AddAppointmentRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apply_payment** | **BOOLEAN** | When &#x60;true&#x60;, indicates that a payment should be applied to the appointment.   &lt;br /&gt;Default: **true** | [optional] 
**client_id** | **String** | The RRSID of the client for whom the new appointment is being made. | 
**duration** | **Integer** | The duration of the appointment. This parameter is used to change the default duration of an appointment. | [optional] 
**execute** | **String** | The action taken to add this appointment. | [optional] 
**end_date_time** | **DateTime** | The end date and time of the new appointment. &lt;br /&gt;  Default: **StartDateTime**, offset by the staff member’s default appointment duration. | [optional] 
**gender_preference** | **String** | The client’s service provider gender preference. | [optional] 
**location_id** | **Integer** | The ID of the location where the new appointment is to take place. | 
**notes** | **String** | Any general notes about this appointment. | [optional] 
**provider_id** | **String** | If a user has Complementary and Alternative Medicine features enabled, this parameter assigns a provider ID to the appointment. | [optional] 
**resource_ids** | **Array&lt;Integer&gt;** | A list of resource IDs to associate with the new appointment. | [optional] 
**send_email** | **BOOLEAN** |  Whether to send client an email for cancellations. An email is sent only if the client has an email address and automatic emails have been set up.   &lt;br /&gt;Default: **false** | [optional] 
**session_type_id** | **Integer** | The session type associated with the new appointment. | 
**staff_id** | **Integer** | The ID of the staff member who is adding the new appointment. | 
**staff_requested** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the staff member was requested specifically by the client. | [optional] 
**start_date_time** | **DateTime** | The start date and time of the new appointment. | 
**test** | **BOOLEAN** |  When true, indicates that the method is to be validated, but no new appointment data is added.   &lt;br /&gt;Default: **false** | [optional] 


