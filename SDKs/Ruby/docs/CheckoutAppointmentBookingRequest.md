# SwaggerClient::CheckoutAppointmentBookingRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**staff_id** | **Integer** | The ID of the staff member who is to provide the service being booked. | [optional] 
**location_id** | **Integer** | The ID of the location where the appointment is to take place. | [optional] 
**session_type_id** | **Integer** | The ID of the session type of this appointment. | [optional] 
**resources** | [**Array&lt;Resource&gt;**](Resource.md) | Contains information about the resources to be used for the appointment. | [optional] 
**start_date_time** | **DateTime** | The date and time that the appointment is to start in the business’ timezone. This value must be passed in the format yyyy-mm-ddThh:mm:ss. | [optional] 
**end_date_time** | **DateTime** | The date and time that the appointment is to end in the business’ timezone. This value must be passed in the format yyyy-mm-ddThh:mm:ss. | [optional] 
**provider_id** | **String** | The National Provider Identifier (NPI) of the staff member who is to provide the service. For an explanation of Provider IDs, see [Provider IDs](https://support.mindbodyonline.com/s/article/204075743-Provider-IDs?language&#x3D;en_US). | [optional] 


