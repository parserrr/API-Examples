# swagger_client.StaffApi

All URIs are relative to *https://api.mindbodyonline.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**staff_get_staff**](StaffApi.md#staff_get_staff) | **GET** /public/v{version}/staff/staff | Get staff members at a site.
[**staff_get_staff_permissions**](StaffApi.md#staff_get_staff_permissions) | **GET** /public/v{version}/staff/staffpermissions | Get configured staff permissions for a staff member.


# **staff_get_staff**
> GetStaffResponse staff_get_staff(site_id, version, authorization=authorization, request_filters=request_filters, request_limit=request_limit, request_location_id=request_location_id, request_offset=request_offset, request_session_type_id=request_session_type_id, request_staff_ids=request_staff_ids, request_start_date_time=request_start_date_time)

Get staff members at a site.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.StaffApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_filters = ['request_filters_example'] # list[str] | Filters to apply to the search. Possible values are:  * StaffViewable  * AppointmentInstructor  * ClassInstructor  * Male  * Female (optional)
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_location_id = 56 # int | Return only staff members that are available at the specified location. You must supply a valid `SessionTypeID` and `StartDateTime` to use this parameter. (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)
request_session_type_id = 56 # int | Return only staff members that are available for the specified session type. You must supply a valid `StartDateTime` and `LocationID` to use this parameter. (optional)
request_staff_ids = [56] # list[int] | A list of the requested staff IDs. (optional)
request_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Return only staff members that are available at the specified date and time. You must supply a valid `SessionTypeID` and `LocationID` to use this parameter. (optional)

try:
    # Get staff members at a site.
    api_response = api_instance.staff_get_staff(site_id, version, authorization=authorization, request_filters=request_filters, request_limit=request_limit, request_location_id=request_location_id, request_offset=request_offset, request_session_type_id=request_session_type_id, request_staff_ids=request_staff_ids, request_start_date_time=request_start_date_time)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling StaffApi->staff_get_staff: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_filters** | [**list[str]**](str.md)| Filters to apply to the search. Possible values are:  * StaffViewable  * AppointmentInstructor  * ClassInstructor  * Male  * Female | [optional] 
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_location_id** | **int**| Return only staff members that are available at the specified location. You must supply a valid &#x60;SessionTypeID&#x60; and &#x60;StartDateTime&#x60; to use this parameter. | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 
 **request_session_type_id** | **int**| Return only staff members that are available for the specified session type. You must supply a valid &#x60;StartDateTime&#x60; and &#x60;LocationID&#x60; to use this parameter. | [optional] 
 **request_staff_ids** | [**list[int]**](int.md)| A list of the requested staff IDs. | [optional] 
 **request_start_date_time** | **datetime**| Return only staff members that are available at the specified date and time. You must supply a valid &#x60;SessionTypeID&#x60; and &#x60;LocationID&#x60; to use this parameter. | [optional] 

### Return type

[**GetStaffResponse**](GetStaffResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **staff_get_staff_permissions**
> GetStaffPermissionsResponse staff_get_staff_permissions(request_staff_id, site_id, version, authorization=authorization)

Get configured staff permissions for a staff member.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.StaffApi()
request_staff_id = 789 # int | The ID of the staff member whose permissions you want to return.
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Get configured staff permissions for a staff member.
    api_response = api_instance.staff_get_staff_permissions(request_staff_id, site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling StaffApi->staff_get_staff_permissions: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_staff_id** | **int**| The ID of the staff member whose permissions you want to return. | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**GetStaffPermissionsResponse**](GetStaffPermissionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

