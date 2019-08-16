# UpdateAppointmentRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**appointment_id** | **int** | The appointments unique ID. | 
**end_date_time** | **datetime** | The end date and time of the new appointment.   &lt;br /&gt;Default: **StartDateTime**, offset by the staff member’s default appointment duration. | [optional] 
**execute** | **str** | The action taken to add this appointment. | [optional] 
**gender_preference** | **str** | The client’s service provider gender preference. | [optional] 
**notes** | **str** | Any general notes about this appointment. | [optional] 
**provider_id** | **str** | If a user has Complementary and Alternative Medicine features enabled, this parameter assigns a provider ID to the appointment. | [optional] 
**resource_ids** | **list[int]** | A list of resource IDs to associate with the new appointment. | [optional] 
**send_email** | **bool** | Whether to send client an email for cancellations. An email is sent only if the client has an email address and automatic emails have been set up.   &lt;br /&gt;Default: **false** | [optional] 
**session_type_id** | **int** | The session type associated with the new appointment. | [optional] 
**staff_id** | **int** | The ID of the staff member who is adding the new appointment. | [optional] 
**start_date_time** | **datetime** | The start date and time of the new appointment. | [optional] 
**test** | **bool** | When &#x60;true&#x60;, indicates that the method is to be validated, but no new appointment data is added.   &lt;br /&gt;Default: **false** | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


