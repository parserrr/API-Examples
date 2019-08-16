# SwaggerClient::SubstituteClassTeacherRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**class_id** | **Integer** | The ID of the class to which a substitute teacher needs to be assigned. | 
**staff_id** | **Integer** | The staff ID of the teacher to substitute. | 
**override_conflicts** | **BOOLEAN** | When &#x60;true&#x60;, overrides any conflicts in the schedule. | [optional] 
**send_client_email** | **BOOLEAN** | When &#x60;true&#x60;, sends the client an automatic email about the substitution, if the client has opted to receive email. | [optional] 
**send_original_teacher_email** | **BOOLEAN** | When &#x60;true&#x60;, sends the originally scheduled teacher an automatic email about the substitution. | [optional] 
**send_substitute_teacher_email** | **BOOLEAN** | When &#x60;true&#x60;, sends the substituted teacher an automatic email about the substitution. | [optional] 


