# swagger_client.UserTokenApi

All URIs are relative to *https://api.mindbodyonline.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**user_token_issue**](UserTokenApi.md#user_token_issue) | **POST** /public/v{version}/usertoken/issue | Get a staff user token.
[**user_token_revoke**](UserTokenApi.md#user_token_revoke) | **DELETE** /public/v{version}/usertoken/revoke | Revoke a user token.


# **user_token_issue**
> IssueResponse user_token_issue(request, site_id, version)

Get a staff user token.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.UserTokenApi()
request = swagger_client.IssueRequest() # IssueRequest | 
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 

try:
    # Get a staff user token.
    api_response = api_instance.user_token_issue(request, site_id, version)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UserTokenApi->user_token_issue: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**IssueRequest**](IssueRequest.md)|  | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 

### Return type

[**IssueResponse**](IssueResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_token_revoke**
> object user_token_revoke(site_id, version, authorization=authorization)

Revoke a user token.

Revokes the user token in the Authorization header.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.UserTokenApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Revoke a user token.
    api_response = api_instance.user_token_revoke(site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UserTokenApi->user_token_revoke: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

