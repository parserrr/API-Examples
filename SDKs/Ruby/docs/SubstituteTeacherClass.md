# SwaggerClient::SubstituteTeacherClass

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**class_schedule_id** | **Integer** | The class schedule ID of the requested class. | [optional] 
**location** | [**Location**](Location.md) | Contains information about the location where the class is taking place. | [optional] 
**max_capacity** | **Integer** | The total number of bookings allowed in the class. | [optional] 
**web_capacity** | **Integer** | The total number of online bookings allowed in the class. | [optional] 
**total_booked** | **Integer** | The total number of clients who are booked into the class prior to this call being made. | [optional] 
**total_booked_waitlist** | **Integer** | The total number of booked clients who are on the waiting list for the class prior to this call being made. | [optional] 
**web_booked** | **Integer** | The total number of bookings in the class made by online users, prior to this call being made. This property is the current number of bookings counted toward the &#x60;WebCapacity&#x60; limit. | [optional] 
**semester_id** | **Integer** | Identifies the semester assigned to this class. | [optional] 
**is_canceled** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the class has been canceled.&lt;br /&gt;  When &#x60;false&#x60;, indicates that the class has not been canceled and may still be bookable. | [optional] 
**substitute** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the class is being taught by a substitute teacher. | [optional] 
**active** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the class is being shown to clients in consumer mode. | [optional] 
**is_waitlist_available** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the class has a waiting list and there is space available on the waiting list for another client.&lt;br /&gt;  When &#x60;false&#x60;, indicates either that the class does not have a waiting list or there is no space available on the class waiting list. | [optional] 
**hide_cancel** | **BOOLEAN** | When &#x60;true&#x60;, indicates that this class is should not be shown to clients when &#x60;IsCancelled&#x60; is &#x60;true&#x60;.&lt;br /&gt;  When &#x60;false&#x60;, indicates that this class is should be shown to clients when &#x60;IsCancelled&#x60; is &#x60;true&#x60;.&lt;br /&gt;  This property can be ignored when the &#x60;IsCancelled&#x60; property is &#x60;false&#x60;. | [optional] 
**id** | **Integer** | The unique identifier of the class. | [optional] 
**is_available** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the class can be booked.&lt;br /&gt;  When &#x60;false&#x60;, that the class cannot be booked at this time. | [optional] 
**start_date_time** | **DateTime** | The date and time that this class is scheduled to start. | [optional] 
**end_date_time** | **DateTime** | The date and time when this class is scheduled to end. | [optional] 
**last_modified_date_time** | **DateTime** | The last time the class was modified. | [optional] 
**class_description** | [**ClassDescription**](ClassDescription.md) | Contains information about this class. | [optional] 
**staff** | [**Staff**](Staff.md) | Contains information about the teacher of the class. | [optional] 


