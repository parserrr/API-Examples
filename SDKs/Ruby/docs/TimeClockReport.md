# SwaggerClient::TimeClockReport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**staff_id** | **Integer** | The ID of the requested staff member. | [optional] 
**task** | **String** | The staff member’s job title. | [optional] 
**hourly_rate** | **Float** | The hourly rate the business pays for this job. | [optional] 
**total_hours** | **Float** | The sum of the hours worked by the staff member in this time card report. | [optional] 
**total_pay** | **Float** | The total amount earned by the staff member for this time card report. | [optional] 
**time_cards** | [**Array&lt;TimeCardEvent&gt;**](TimeCardEvent.md) | Information about when a staff member began and ended a task. | [optional] 


