# SwaggerClient::AppointmentApi

All URIs are relative to *https://api.mindbodyonline.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appointment_add_apppointment**](AppointmentApi.md#appointment_add_apppointment) | **POST** /public/v{version}/appointment/addappointment | Book a new appointment.
[**appointment_get_active_session_times**](AppointmentApi.md#appointment_get_active_session_times) | **GET** /public/v{version}/appointment/activesessiontimes | Get active session times.
[**appointment_get_appointment_options**](AppointmentApi.md#appointment_get_appointment_options) | **GET** /public/v{version}/appointment/appointmentoptions | Get appointment-related settings.
[**appointment_get_bookable_items**](AppointmentApi.md#appointment_get_bookable_items) | **GET** /public/v{version}/appointment/bookableitems | Get staff appointment availability.
[**appointment_get_schedule_items**](AppointmentApi.md#appointment_get_schedule_items) | **GET** /public/v{version}/appointment/scheduleitems | Get appointment schedule.
[**appointment_get_staff_appointments**](AppointmentApi.md#appointment_get_staff_appointments) | **GET** /public/v{version}/appointment/staffappointments | Get appointments grouped by staff member.
[**appointment_update_apppointment**](AppointmentApi.md#appointment_update_apppointment) | **POST** /public/v{version}/appointment/updateappointment | Update an existing appointment.


# **appointment_add_apppointment**
> AddAppointmentResponse appointment_add_apppointment(request, site_id, version, opts)

Book a new appointment.

To book an appointment, you must use a location ID, staff ID, client ID, session type ID, and the `StartDateTime` of the appointment. You can get most of this information using `GET BookableItems`.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AppointmentApi.new

request = SwaggerClient::AddAppointmentRequest.new # AddAppointmentRequest | 

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '' # String | A staff user authorization token.
}

begin
  #Book a new appointment.
  result = api_instance.appointment_add_apppointment(request, site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AppointmentApi->appointment_add_apppointment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AddAppointmentRequest**](AddAppointmentRequest.md)|  | 
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]

### Return type

[**AddAppointmentResponse**](AddAppointmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **appointment_get_active_session_times**
> GetActiveSessionTimesResponse appointment_get_active_session_times(site_id, version, opts)

Get active session times.

Returns a list of the times that can be booked for a given program schedule type. `ActiveSessionTimes` represent the scheduling increments that can be booked during the active business hours for services.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AppointmentApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_end_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filters results to times that end on or before this time on the current date. Any date provided is ignored..  <br />Default: **23:59:59**
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_schedule_type: 'request_schedule_type_example', # String | Filters on the provided the schedule type. Either `SessionTypeIds` or `ScheduleType` must be provided.
  request_session_type_ids: [56], # Array<Integer> | Filters on the provided session type IDs. Either `SessionTypeIds` or `ScheduleType` must be provided.
  request_start_time: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filters results to times that start on or after this time on the current date. Any date provided is ignored.  <br />Default: **00:00:00**
}

begin
  #Get active session times.
  result = api_instance.appointment_get_active_session_times(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AppointmentApi->appointment_get_active_session_times: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_end_time** | **DateTime**| Filters results to times that end on or before this time on the current date. Any date provided is ignored..  &lt;br /&gt;Default: **23:59:59** | [optional] 
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_schedule_type** | **String**| Filters on the provided the schedule type. Either &#x60;SessionTypeIds&#x60; or &#x60;ScheduleType&#x60; must be provided. | [optional] 
 **request_session_type_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Filters on the provided session type IDs. Either &#x60;SessionTypeIds&#x60; or &#x60;ScheduleType&#x60; must be provided. | [optional] 
 **request_start_time** | **DateTime**| Filters results to times that start on or after this time on the current date. Any date provided is ignored.  &lt;br /&gt;Default: **00:00:00** | [optional] 

### Return type

[**GetActiveSessionTimesResponse**](GetActiveSessionTimesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **appointment_get_appointment_options**
> GetAppointmentOptionsResponse appointment_get_appointment_options(site_id, version, opts)

Get appointment-related settings.

This endpoint has no query parameters.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AppointmentApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '' # String | A staff user authorization token.
}

begin
  #Get appointment-related settings.
  result = api_instance.appointment_get_appointment_options(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AppointmentApi->appointment_get_appointment_options: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]

### Return type

[**GetAppointmentOptionsResponse**](GetAppointmentOptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **appointment_get_bookable_items**
> GetBookableItemsResponse appointment_get_bookable_items(request_session_type_ids, site_id, version, opts)

Get staff appointment availability.

Returns a list of availabilities with the information needed to book appointments. Availabilities include information such as the location and its amenities, staff members, programs, and session types.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AppointmentApi.new

request_session_type_ids = [56] # Array<Integer> | A list of the requested session type IDs.

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_appointment_id: 789, # Integer | If provided, filters out the appointment with this ID.
  request_end_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The end date of the requested date range.   <br />Default: **StartDate**
  request_ignore_default_session_length: true, # BOOLEAN | When `true`, availabilities that are non-default return, for example, a 30-minute availability with a 60-minute default session length.<br />  When `false`, only availabilities that have the default session length return.
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_location_ids: [56], # Array<Integer> | A list of the requested location IDs.
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_staff_ids: [56], # Array<Integer> | A list of the requested staff IDs.
  request_start_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The start date of the requested date range.   <br />Default: **today’s date**
}

begin
  #Get staff appointment availability.
  result = api_instance.appointment_get_bookable_items(request_session_type_ids, site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AppointmentApi->appointment_get_bookable_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_session_type_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of the requested session type IDs. | 
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_appointment_id** | **Integer**| If provided, filters out the appointment with this ID. | [optional] 
 **request_end_date** | **DateTime**| The end date of the requested date range.   &lt;br /&gt;Default: **StartDate** | [optional] 
 **request_ignore_default_session_length** | **BOOLEAN**| When &#x60;true&#x60;, availabilities that are non-default return, for example, a 30-minute availability with a 60-minute default session length.&lt;br /&gt;  When &#x60;false&#x60;, only availabilities that have the default session length return. | [optional] 
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_location_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of the requested location IDs. | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_staff_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of the requested staff IDs. | [optional] 
 **request_start_date** | **DateTime**| The start date of the requested date range.   &lt;br /&gt;Default: **today’s date** | [optional] 

### Return type

[**GetBookableItemsResponse**](GetBookableItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **appointment_get_schedule_items**
> GetScheduleItemsResponse appointment_get_schedule_items(site_id, version, opts)

Get appointment schedule.

Returns a list of schedule items, including appointments, availabilities, and unavailabilities. Unavailabilities are the times at which appointments cannot be booked, for example, on holidays or after hours when the business is closed.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AppointmentApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_end_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The end date of the requested date range.   <br />Default: **today’s date**
  request_ignore_prep_finish_times: true, # BOOLEAN | When `true`, appointment preparation and finish unavailabilities are not returned.   <br />Default: **false**
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_location_ids: [56], # Array<Integer> | A list of requested location IDs.
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_staff_ids: [56], # Array<Integer> | A list of requested staff IDs.
  request_start_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The start date of the requested date range.   <br />Default: **today’s date**
}

begin
  #Get appointment schedule.
  result = api_instance.appointment_get_schedule_items(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AppointmentApi->appointment_get_schedule_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_end_date** | **DateTime**| The end date of the requested date range.   &lt;br /&gt;Default: **today’s date** | [optional] 
 **request_ignore_prep_finish_times** | **BOOLEAN**| When &#x60;true&#x60;, appointment preparation and finish unavailabilities are not returned.   &lt;br /&gt;Default: **false** | [optional] 
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_location_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of requested location IDs. | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_staff_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of requested staff IDs. | [optional] 
 **request_start_date** | **DateTime**| The start date of the requested date range.   &lt;br /&gt;Default: **today’s date** | [optional] 

### Return type

[**GetScheduleItemsResponse**](GetScheduleItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **appointment_get_staff_appointments**
> GetStaffAppointmentsResponse appointment_get_staff_appointments(site_id, version, opts)

Get appointments grouped by staff member.

Returns a list of appointments by staff member.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AppointmentApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_appointment_ids: [56], # Array<Integer> | A list of the requested appointment IDs.
  request_client_ids: ['request_client_ids_example'], # Array<String> | List of client IDs to be returned.
  request_end_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The end date of the requested date range.   <br />Default: **StartDate**
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_location_ids: [56], # Array<Integer> | A list of the requested location IDs.
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_staff_ids: [56], # Array<Integer> | List of staff IDs to be returned. Use a value of zero to return all staff appointments.
  request_start_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The start date of the requested date range. If omitted, the default is used.   <br />Default: **today’s date**
}

begin
  #Get appointments grouped by staff member.
  result = api_instance.appointment_get_staff_appointments(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AppointmentApi->appointment_get_staff_appointments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_appointment_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of the requested appointment IDs. | [optional] 
 **request_client_ids** | [**Array&lt;String&gt;**](String.md)| List of client IDs to be returned. | [optional] 
 **request_end_date** | **DateTime**| The end date of the requested date range.   &lt;br /&gt;Default: **StartDate** | [optional] 
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_location_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of the requested location IDs. | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_staff_ids** | [**Array&lt;Integer&gt;**](Integer.md)| List of staff IDs to be returned. Use a value of zero to return all staff appointments. | [optional] 
 **request_start_date** | **DateTime**| The start date of the requested date range. If omitted, the default is used.   &lt;br /&gt;Default: **today’s date** | [optional] 

### Return type

[**GetStaffAppointmentsResponse**](GetStaffAppointmentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **appointment_update_apppointment**
> UpdateAppointmentResponse appointment_update_apppointment(request, site_id, version, opts)

Update an existing appointment.

To update the information for a specific appointment, you must have a staff user token with the proper permissions. Note that you can only update the appointment’s `StartDateTime`, `EndDateTime`, `StaffId`, `Notes`, and `SessionTypeId`.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AppointmentApi.new

request = SwaggerClient::UpdateAppointmentRequest.new # UpdateAppointmentRequest | 

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '' # String | A staff user authorization token.
}

begin
  #Update an existing appointment.
  result = api_instance.appointment_update_apppointment(request, site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AppointmentApi->appointment_update_apppointment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**UpdateAppointmentRequest**](UpdateAppointmentRequest.md)|  | 
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]

### Return type

[**UpdateAppointmentResponse**](UpdateAppointmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



