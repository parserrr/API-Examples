# SwaggerClient::AddContactLogRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_id** | **String** | The ID of the client whose contact log is being added. | 
**assigned_to_staff_id** | **Integer** | The ID of the staff member to whom the contact log is assigned. | [optional] 
**text** | **String** | The body of the contact log. | [optional] 
**followup_by_date** | **DateTime** | The date by which the assigned staff member should complete this contact log. | [optional] 
**contact_method** | **String** | How the client wants to be contacted. | 
**contact_name** | **String** | The name of the person to be contacted by the assigned staff member. | [optional] 
**comments** | **Array&lt;String&gt;** | Any comments on the contact log. | [optional] 
**types** | [**Array&lt;AddContactLogType&gt;**](AddContactLogType.md) | The contact log types used to tag this contact log. | [optional] 
**test** | **BOOLEAN** | When &#x60;true&#x60;, indicates that this is a test request and no data is inserted into the subscriber’s database.&lt;br /&gt;  When &#x60;false&#x60;, the database is updated. | [optional] 


