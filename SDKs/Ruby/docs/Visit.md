# SwaggerClient::Visit

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**appointment_id** | **Integer** | The appointment’s ID. | [optional] 
**appointment_gender_preference** | **String** | The gender of staff member with whom the client prefers to book appointments. | [optional] 
**appointment_status** | **String** | The status of the appointment. | [optional] 
**class_id** | **Integer** | The class ID that was used to retrieve the visits. | [optional] 
**client_id** | **String** | The ID of the client associated with the visit. | [optional] 
**start_date_time** | **DateTime** | The time this class is scheduled to start. | [optional] 
**end_date_time** | **DateTime** | The date and time the visit ends. The Public API returns UTC dates and times. For example, a class that occurs on June 25th, 2018 at 2:15PM (EST) appears as “2018-06-25T19:15:00Z” because EST is five hours behind UTC. Date time pairs always return in the format YYYY-MM-DDTHH:mm:ssZ. | [optional] 
**id** | **Integer** | The ID of the visit. | [optional] 
**last_modified_date_time** | **DateTime** | When included in the request, only records modified on or after the specified &#x60;LastModifiedDate&#x60; are included in the response. The Public API returns UTC dates and times. For example, a class that occurs on June 25th, 2018 at 2:15PM (EST) appears as “2018-06-25T19:15:00Z” because EST is five hours behind UTC. Date time pairs always return in the format YYYY-MM-DDTHH:mm:ssZ. | [optional] 
**late_cancelled** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the class has been &#x60;LateCancelled&#x60;.&lt;br /&gt;  When &#x60;false&#x60;, indicates that the class has not been &#x60;LateCancelled&#x60;. | [optional] 
**location_id** | **Integer** | The ID of the location where the visit took place or is to take place. | [optional] 
**make_up** | **BOOLEAN** | When &#x60;true&#x60;, the client can make up this session and a session is not deducted from the pricing option that was used to sign the client into the enrollment. When the client has the make-up session, a session is automatically removed from a pricing option that matches the service category of the enrollment and is within the same date range of the missed session.&lt;br /&gt;  When &#x60;false&#x60;, the client cannot make up this session. See [Enrollments: Make-ups](https://support.mindbodyonline.com/s/article/203259433-Enrollments-Make-ups?language&#x3D;en_US) for more information. | [optional] 
**name** | **String** | The name of the class. | [optional] 
**service_id** | **Integer** | The ID of the pricing option used to pay for the class visit. | [optional] 
**signed_in** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the client has been signed in.&lt;br /&gt;  When &#x60;false&#x60;, indicates that the client has not been signed in. | [optional] 
**staff_id** | **Integer** | The ID of the staff member who is teaching the class. | [optional] 
**web_signup** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the client signed up online.&lt;br /&gt;  When &#x60;false&#x60;, indicates that the client was signed up by a staff member. | [optional] 
**action** | **String** | The action taken. | [optional] 


