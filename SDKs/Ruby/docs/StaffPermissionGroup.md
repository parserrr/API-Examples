# SwaggerClient::StaffPermissionGroup

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permission_group_name** | **String** | The name of the permission group. | [optional] 
**ip_restricted** | **BOOLEAN** | When &#x60;true&#x60;, the staff member’s permissions are restricted to specific IP addresses.&lt;br /&gt;  When &#x60;false&#x60;, the staff member’s permissions are not restricted to specific IP addresses. | [optional] 
**allowed_permissions** | **Array&lt;String&gt;** | A list of the permissions allowed to the staff member. See [Permission Values](https://developers.mindbodyonline.com/PublicDocumentation/V6#epermission-values) for descriptions of the possible permissions. | [optional] 
**denied_permissions** | **Array&lt;String&gt;** | A list of the permissions that the staff member is not allowed to exercise. See [Permission Values](https://developers.mindbodyonline.com/PublicDocumentation/V6#epermission-values) for descriptions of the possible permissions. | [optional] 


