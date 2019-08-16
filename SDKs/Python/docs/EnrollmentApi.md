# swagger_client.EnrollmentApi

All URIs are relative to *https://api.mindbodyonline.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**enrollment_add_client_to_enrollment**](EnrollmentApi.md#enrollment_add_client_to_enrollment) | **POST** /public/v{version}/enrollment/addclienttoenrollment | Book a client into an enrollment.
[**enrollment_get_enrollments**](EnrollmentApi.md#enrollment_get_enrollments) | **GET** /public/v{version}/enrollment/enrollments | Get enrollments scheduled at a site.


# **enrollment_add_client_to_enrollment**
> ClassSchedule enrollment_add_client_to_enrollment(request, site_id, version, authorization=authorization)

Book a client into an enrollment.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.EnrollmentApi()
request = swagger_client.AddClientToEnrollmentRequest() # AddClientToEnrollmentRequest | 
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Book a client into an enrollment.
    api_response = api_instance.enrollment_add_client_to_enrollment(request, site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EnrollmentApi->enrollment_add_client_to_enrollment: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AddClientToEnrollmentRequest**](AddClientToEnrollmentRequest.md)|  | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**ClassSchedule**](ClassSchedule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enrollment_get_enrollments**
> GetEnrollmentsResponse enrollment_get_enrollments(site_id, version, authorization=authorization, request_class_schedule_ids=request_class_schedule_ids, request_end_date=request_end_date, request_limit=request_limit, request_location_ids=request_location_ids, request_offset=request_offset, request_program_ids=request_program_ids, request_session_type_ids=request_session_type_ids, request_staff_ids=request_staff_ids, request_start_date=request_start_date)

Get enrollments scheduled at a site.

Returns a list of enrollments. An enrollment is a service, such as a workshop or an event, that a staff member offers to multiple students, who commit to coming to all or most of the scheduled sessions. Enrollments typically run for a limited time only.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.EnrollmentApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_class_schedule_ids = [56] # list[int] | A list of the requested class schedule IDs. If omitted, all class schedule IDs return. (optional)
request_end_date = '2013-10-20T19:20:30+01:00' # datetime | The end of the date range. The response returns any active enrollments that occur on or before this day.<br />  Default: **StartDate** (optional)
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_location_ids = [56] # list[int] | List of the IDs for the requested locations. If omitted, all location IDs return. (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)
request_program_ids = [56] # list[int] | List of the IDs for the requested programs. If omitted, all program IDs return. (optional)
request_session_type_ids = [56] # list[int] | List of the IDs for the requested session types. If omitted, all session types IDs return. (optional)
request_staff_ids = [56] # list[int] | List of the IDs for the requested staff IDs. If omitted, all staff IDs return. (optional)
request_start_date = '2013-10-20T19:20:30+01:00' # datetime | The start of the date range. The response returns any active enrollments that occur on or after this day.<br />  Default: **today’s date** (optional)

try:
    # Get enrollments scheduled at a site.
    api_response = api_instance.enrollment_get_enrollments(site_id, version, authorization=authorization, request_class_schedule_ids=request_class_schedule_ids, request_end_date=request_end_date, request_limit=request_limit, request_location_ids=request_location_ids, request_offset=request_offset, request_program_ids=request_program_ids, request_session_type_ids=request_session_type_ids, request_staff_ids=request_staff_ids, request_start_date=request_start_date)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EnrollmentApi->enrollment_get_enrollments: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_class_schedule_ids** | [**list[int]**](int.md)| A list of the requested class schedule IDs. If omitted, all class schedule IDs return. | [optional] 
 **request_end_date** | **datetime**| The end of the date range. The response returns any active enrollments that occur on or before this day.&lt;br /&gt;  Default: **StartDate** | [optional] 
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_location_ids** | [**list[int]**](int.md)| List of the IDs for the requested locations. If omitted, all location IDs return. | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 
 **request_program_ids** | [**list[int]**](int.md)| List of the IDs for the requested programs. If omitted, all program IDs return. | [optional] 
 **request_session_type_ids** | [**list[int]**](int.md)| List of the IDs for the requested session types. If omitted, all session types IDs return. | [optional] 
 **request_staff_ids** | [**list[int]**](int.md)| List of the IDs for the requested staff IDs. If omitted, all staff IDs return. | [optional] 
 **request_start_date** | **datetime**| The start of the date range. The response returns any active enrollments that occur on or after this day.&lt;br /&gt;  Default: **today’s date** | [optional] 

### Return type

[**GetEnrollmentsResponse**](GetEnrollmentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

