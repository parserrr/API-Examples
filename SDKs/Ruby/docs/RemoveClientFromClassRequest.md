# SwaggerClient::RemoveClientFromClassRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_id** | **String** | The RSSID of the client to remove from the specified class. | 
**class_id** | **Integer** | The ID of the class that you want to remove the client from. | 
**test** | **BOOLEAN** | When &#x60;true&#x60;, the request ensures that its parameters are valid without affecting real data.&lt;br /&gt;  When &#x60;false&#x60;, the request performs as intended and may affect live client data.&lt;br /&gt;  Default: **false** | [optional] 
**send_email** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the client should be sent an email. Depending on the site and client settings, an email may or may not be sent.&lt;br /&gt;  Default: **false** | [optional] 
**late_cancel** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the client is to be late cancelled from the class.&lt;br /&gt;  When &#x60;false&#x60;, indicates that the client is to be early cancelled from the class.&lt;br /&gt;  Default: **false** | [optional] 


