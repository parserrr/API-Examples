# SwaggerClient::ContactLog

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The contact log’s ID. | [optional] 
**text** | **String** | The contact log’s body text. | [optional] 
**created_date_time** | **DateTime** | The local date and time when the contact log was created. | [optional] 
**followup_by_date** | **DateTime** | The date by which the assigned staff member should close or follow up on this contact log. | [optional] 
**contact_method** | **String** | The method by which the client wants to be contacted. | [optional] 
**contact_name** | **String** | The name of the client to contact. | [optional] 
**client** | [**Client**](Client.md) | Information about the client to whom the contact log belongs. | [optional] 
**created_by** | [**Staff**](Staff.md) | Information about the staff member who created the contact log. | [optional] 
**assigned_to** | [**Staff**](Staff.md) | Information about the staff member to whom the contact log is assigned for follow up. | [optional] 
**comments** | [**Array&lt;ContactLogComment&gt;**](ContactLogComment.md) | The contact log’s comments. | [optional] 
**types** | [**Array&lt;ContactLogType&gt;**](ContactLogType.md) | Contains information about contact log types. | [optional] 


