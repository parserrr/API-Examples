# TimeClockReport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**staff_id** | **int** | The ID of the requested staff member. | [optional] 
**task** | **str** | The staff member’s job title. | [optional] 
**hourly_rate** | **float** | The hourly rate the business pays for this job. | [optional] 
**total_hours** | **float** | The sum of the hours worked by the staff member in this time card report. | [optional] 
**total_pay** | **float** | The total amount earned by the staff member for this time card report. | [optional] 
**time_cards** | [**list[TimeCardEvent]**](TimeCardEvent.md) | Information about when a staff member began and ended a task. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


