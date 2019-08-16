# SwaggerClient::EnrollmentApi

All URIs are relative to *https://api.mindbodyonline.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**enrollment_add_client_to_enrollment**](EnrollmentApi.md#enrollment_add_client_to_enrollment) | **POST** /public/v{version}/enrollment/addclienttoenrollment | Book a client into an enrollment.
[**enrollment_get_enrollments**](EnrollmentApi.md#enrollment_get_enrollments) | **GET** /public/v{version}/enrollment/enrollments | Get enrollments scheduled at a site.


# **enrollment_add_client_to_enrollment**
> ClassSchedule enrollment_add_client_to_enrollment(request, site_id, version, opts)

Book a client into an enrollment.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EnrollmentApi.new

request = SwaggerClient::AddClientToEnrollmentRequest.new # AddClientToEnrollmentRequest | 

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '' # String | A staff user authorization token.
}

begin
  #Book a client into an enrollment.
  result = api_instance.enrollment_add_client_to_enrollment(request, site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EnrollmentApi->enrollment_add_client_to_enrollment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AddClientToEnrollmentRequest**](AddClientToEnrollmentRequest.md)|  | 
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]

### Return type

[**ClassSchedule**](ClassSchedule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **enrollment_get_enrollments**
> GetEnrollmentsResponse enrollment_get_enrollments(site_id, version, opts)

Get enrollments scheduled at a site.

Returns a list of enrollments. An enrollment is a service, such as a workshop or an event, that a staff member offers to multiple students, who commit to coming to all or most of the scheduled sessions. Enrollments typically run for a limited time only.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EnrollmentApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_class_schedule_ids: [56], # Array<Integer> | A list of the requested class schedule IDs. If omitted, all class schedule IDs return.
  request_end_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The end of the date range. The response returns any active enrollments that occur on or before this day.<br />  Default: **StartDate**
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_location_ids: [56], # Array<Integer> | List of the IDs for the requested locations. If omitted, all location IDs return.
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_program_ids: [56], # Array<Integer> | List of the IDs for the requested programs. If omitted, all program IDs return.
  request_session_type_ids: [56], # Array<Integer> | List of the IDs for the requested session types. If omitted, all session types IDs return.
  request_staff_ids: [56], # Array<Integer> | List of the IDs for the requested staff IDs. If omitted, all staff IDs return.
  request_start_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The start of the date range. The response returns any active enrollments that occur on or after this day.<br />  Default: **today’s date**
}

begin
  #Get enrollments scheduled at a site.
  result = api_instance.enrollment_get_enrollments(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EnrollmentApi->enrollment_get_enrollments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_class_schedule_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of the requested class schedule IDs. If omitted, all class schedule IDs return. | [optional] 
 **request_end_date** | **DateTime**| The end of the date range. The response returns any active enrollments that occur on or before this day.&lt;br /&gt;  Default: **StartDate** | [optional] 
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_location_ids** | [**Array&lt;Integer&gt;**](Integer.md)| List of the IDs for the requested locations. If omitted, all location IDs return. | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_program_ids** | [**Array&lt;Integer&gt;**](Integer.md)| List of the IDs for the requested programs. If omitted, all program IDs return. | [optional] 
 **request_session_type_ids** | [**Array&lt;Integer&gt;**](Integer.md)| List of the IDs for the requested session types. If omitted, all session types IDs return. | [optional] 
 **request_staff_ids** | [**Array&lt;Integer&gt;**](Integer.md)| List of the IDs for the requested staff IDs. If omitted, all staff IDs return. | [optional] 
 **request_start_date** | **DateTime**| The start of the date range. The response returns any active enrollments that occur on or after this day.&lt;br /&gt;  Default: **today’s date** | [optional] 

### Return type

[**GetEnrollmentsResponse**](GetEnrollmentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



