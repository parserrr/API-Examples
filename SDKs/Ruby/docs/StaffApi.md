# SwaggerClient::StaffApi

All URIs are relative to *https://api.mindbodyonline.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**staff_get_staff**](StaffApi.md#staff_get_staff) | **GET** /public/v{version}/staff/staff | Get staff members at a site.
[**staff_get_staff_permissions**](StaffApi.md#staff_get_staff_permissions) | **GET** /public/v{version}/staff/staffpermissions | Get configured staff permissions for a staff member.


# **staff_get_staff**
> GetStaffResponse staff_get_staff(site_id, version, opts)

Get staff members at a site.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StaffApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_filters: ['request_filters_example'], # Array<String> | Filters to apply to the search. Possible values are:  * StaffViewable  * AppointmentInstructor  * ClassInstructor  * Male  * Female
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_location_id: 56, # Integer | Return only staff members that are available at the specified location. You must supply a valid `SessionTypeID` and `StartDateTime` to use this parameter.
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_session_type_id: 56, # Integer | Return only staff members that are available for the specified session type. You must supply a valid `StartDateTime` and `LocationID` to use this parameter.
  request_staff_ids: [56], # Array<Integer> | A list of the requested staff IDs.
  request_start_date_time: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Return only staff members that are available at the specified date and time. You must supply a valid `SessionTypeID` and `LocationID` to use this parameter.
}

begin
  #Get staff members at a site.
  result = api_instance.staff_get_staff(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StaffApi->staff_get_staff: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_filters** | [**Array&lt;String&gt;**](String.md)| Filters to apply to the search. Possible values are:  * StaffViewable  * AppointmentInstructor  * ClassInstructor  * Male  * Female | [optional] 
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_location_id** | **Integer**| Return only staff members that are available at the specified location. You must supply a valid &#x60;SessionTypeID&#x60; and &#x60;StartDateTime&#x60; to use this parameter. | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_session_type_id** | **Integer**| Return only staff members that are available for the specified session type. You must supply a valid &#x60;StartDateTime&#x60; and &#x60;LocationID&#x60; to use this parameter. | [optional] 
 **request_staff_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of the requested staff IDs. | [optional] 
 **request_start_date_time** | **DateTime**| Return only staff members that are available at the specified date and time. You must supply a valid &#x60;SessionTypeID&#x60; and &#x60;LocationID&#x60; to use this parameter. | [optional] 

### Return type

[**GetStaffResponse**](GetStaffResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **staff_get_staff_permissions**
> GetStaffPermissionsResponse staff_get_staff_permissions(request_staff_id, site_id, version, opts)

Get configured staff permissions for a staff member.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StaffApi.new

request_staff_id = 789 # Integer | The ID of the staff member whose permissions you want to return.

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '' # String | A staff user authorization token.
}

begin
  #Get configured staff permissions for a staff member.
  result = api_instance.staff_get_staff_permissions(request_staff_id, site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StaffApi->staff_get_staff_permissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_staff_id** | **Integer**| The ID of the staff member whose permissions you want to return. | 
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]

### Return type

[**GetStaffPermissionsResponse**](GetStaffPermissionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



