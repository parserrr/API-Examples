# ContactLog

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The contact log’s ID. | [optional] 
**text** | **str** | The contact log’s body text. | [optional] 
**created_date_time** | **datetime** | The local date and time when the contact log was created. | [optional] 
**followup_by_date** | **datetime** | The date by which the assigned staff member should close or follow up on this contact log. | [optional] 
**contact_method** | **str** | The method by which the client wants to be contacted. | [optional] 
**contact_name** | **str** | The name of the client to contact. | [optional] 
**client** | [**Client**](Client.md) | Information about the client to whom the contact log belongs. | [optional] 
**created_by** | [**Staff**](Staff.md) | Information about the staff member who created the contact log. | [optional] 
**assigned_to** | [**Staff**](Staff.md) | Information about the staff member to whom the contact log is assigned for follow up. | [optional] 
**comments** | [**list[ContactLogComment]**](ContactLogComment.md) | The contact log’s comments. | [optional] 
**types** | [**list[ContactLogType]**](ContactLogType.md) | Contains information about contact log types. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


