# SwaggerClient::UpdateClientVisitRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**visit_id** | **Integer** | The ID of the visit to be updated. | 
**makeup** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the visit is eligible to be made up. | [optional] 
**signed_in** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the client has signed in for the visit. | [optional] 
**execute** | **String** | The execute code used to update this visit. Possible values are:  * Cancel  * Latecancel  * Unlatecancel | [optional] 
**test** | **BOOLEAN** | When &#x60;true&#x60;, indicates that test mode is enabled. When test mode is enabled, input information is validated, but not committed.&lt;br /&gt;  Default: **false** | [optional] 
**send_email** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the client should be sent an email for cancellations. Note that email is not sent unless the client has an email address and automatic emails have been set up correctly.&lt;br /&gt;  Default: **false** | [optional] 


