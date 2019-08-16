# AddContactLogRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_id** | **str** | The ID of the client whose contact log is being added. | 
**assigned_to_staff_id** | **int** | The ID of the staff member to whom the contact log is assigned. | [optional] 
**text** | **str** | The body of the contact log. | [optional] 
**followup_by_date** | **datetime** | The date by which the assigned staff member should complete this contact log. | [optional] 
**contact_method** | **str** | How the client wants to be contacted. | 
**contact_name** | **str** | The name of the person to be contacted by the assigned staff member. | [optional] 
**comments** | **list[str]** | Any comments on the contact log. | [optional] 
**types** | [**list[AddContactLogType]**](AddContactLogType.md) | The contact log types used to tag this contact log. | [optional] 
**test** | **bool** | When &#x60;true&#x60;, indicates that this is a test request and no data is inserted into the subscriber’s database.&lt;br /&gt;  When &#x60;false&#x60;, the database is updated. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


