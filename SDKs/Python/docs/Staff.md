# Staff

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **str** | The address of the staff member who is teaching the class. | [optional] 
**appointment_instructor** | **bool** | When &#x60;true&#x60;, indicates that the staff member offers appointments.&lt;br /&gt;  When &#x60;false&#x60;, indicates that the staff member does not offer appointments. | [optional] 
**always_allow_double_booking** | **bool** | When &#x60;true&#x60;, indicates that the staff member can be scheduled for overlapping services.&lt;br /&gt;  When &#x60;false&#x60;, indicates that the staff can only be scheduled for one service at a time in any given time-frame. | [optional] 
**bio** | **str** | The staff member’s biography. This string contains HTML. | [optional] 
**city** | **str** | The staff member’s city. | [optional] 
**country** | **str** | The staff member’s country. | [optional] 
**email** | **str** | The staff member’s email address. | [optional] 
**first_name** | **str** | The staff member’s first name. | [optional] 
**home_phone** | **str** | The staff member’s home phone number. | [optional] 
**id** | **int** | The ID assigned to the staff member. | [optional] 
**independent_contractor** | **bool** | When &#x60;true&#x60;, indicates that the staff member is an independent contractor.  When &#x60;false&#x60;, indicates that the staff member is not an independent contractor. | [optional] 
**is_male** | **bool** | When &#x60;true&#x60;, indicates that the staff member is male.  When &#x60;false&#x60;, indicates that the staff member is female. | [optional] 
**last_name** | **str** | The staff member’s last name. | [optional] 
**mobile_phone** | **str** | The staff member’s mobile phone number. | [optional] 
**name** | **str** | The staff member’s name. | [optional] 
**postal_code** | **str** | The staff member’s postal code. | [optional] 
**class_teacher** | **bool** | When &#x60;true&#x60;, indicates that the staff member can teach classes.  When &#x60;false&#x60;, indicates that the staff member cannot teach classes. | [optional] 
**sort_order** | **int** | If configured by the business owner, this field determines a staff member’s weight when sorting. Use this field to sort staff members on your interface. | [optional] 
**state** | **str** | The staff member’s state. | [optional] 
**work_phone** | **str** | The staff member’s work phone number. | [optional] 
**image_url** | **str** | The URL of the staff member’s image, if one has been uploaded. | [optional] 
**appointments** | [**list[Appointment]**](Appointment.md) | A list of appointments for the staff. | [optional] 
**unavailabilities** | [**list[Unavailability]**](Unavailability.md) | A list of unavailabilities for the staff. | [optional] 
**availabilities** | [**list[Availability]**](Availability.md) | A list of availabilities for the staff. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


