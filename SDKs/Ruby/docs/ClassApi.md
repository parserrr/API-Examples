# SwaggerClient::ClassApi

All URIs are relative to *https://api.mindbodyonline.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**class_add_client_to_class**](ClassApi.md#class_add_client_to_class) | **POST** /public/v{version}/class/addclienttoclass | Book a client into a class.
[**class_get_class_descriptions**](ClassApi.md#class_get_class_descriptions) | **GET** /public/v{version}/class/classdescriptions | Get class descriptions.
[**class_get_class_schedules**](ClassApi.md#class_get_class_schedules) | **GET** /public/v{version}/class/classschedules | Get class schedules.
[**class_get_class_visits**](ClassApi.md#class_get_class_visits) | **GET** /public/v{version}/class/classvisits | Get information about clients booked in a class.
[**class_get_classes**](ClassApi.md#class_get_classes) | **GET** /public/v{version}/class/classes | Get scheduled classes.
[**class_get_waitlist_entries**](ClassApi.md#class_get_waitlist_entries) | **GET** /public/v{version}/class/waitlistentries | Get waiting list entries.
[**class_remove_client_from_class**](ClassApi.md#class_remove_client_from_class) | **POST** /public/v{version}/class/removeclientfromclass | Remove a client from a class.
[**class_remove_from_waitlist**](ClassApi.md#class_remove_from_waitlist) | **POST** /public/v{version}/class/removefromwaitlist | Remove a client from a waiting list.
[**class_substitute_class_teacher**](ClassApi.md#class_substitute_class_teacher) | **POST** /public/v{version}/class/substituteclassteacher | Substitute a class teacher.


# **class_add_client_to_class**
> AddClientToClassResponse class_add_client_to_class(request, site_id, version, opts)

Book a client into a class.

This endpoint adds a client to a class or to a class waiting list. It is helpful to use this endpoint in the following situations:  * Use after calling `GET Clients` and `GET Classes` so that you are sure which client to book in which class.  * If adding a client to a class from a waiting list, use this call after you call `GET WaitlistEntries` and determine the ID of the waiting list from which you are moving the client.  * If adding a client to a class and using a pricing option that the client has already purchased, use this call after you call `GET ClientServices` to determine the ID of the pricing option that the client wants to use.    If you add a client to a class and the client purchases a new pricing option, use `GET Services`, `GET Classes`, and then `POST CheckoutShoppingCart` in place of this call.    This endpoint also supports cross-regional class bookings. If you want to perform a cross-regional class booking, set `CrossRegionalBooking` to `true`. This endpoint does not support adding a user to a waiting list using a cross-regional client pricing option(service). Cross-regional booking workflows do not support client service scheduling restrictions.    When performing a cross-regional class booking, this endpoint loops through the first ten sites that the client is associated with, looks for client pricing options at each of those sites, and then uses the oldest client pricing option found.It is important to note that this endpoint only loops through a maximum of ten associated client sites. If a `ClientID` is associated with more than ten sites in an organization, this endpoint only loops through the first ten.If you know that a client has a client service at another site, you can specify that site using the `CrossRegionalBookingClientServiceSiteId` query parameter.    If you perform a cross-regional booking, two additional fields are included in the `SessionType` object of the response:  * `SiteID`, which specifies where the client service is coming from  * `CrossRegionalBookingPerformed`, a Boolean field that is set to `true`    As a prerequisite to using this endpoint, your `SourceName` must have been granted access to the organization to which the site belongs.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClassApi.new

request = SwaggerClient::AddClientToClassRequest.new # AddClientToClassRequest | 

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '' # String | A staff user authorization token.
}

begin
  #Book a client into a class.
  result = api_instance.class_add_client_to_class(request, site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassApi->class_add_client_to_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AddClientToClassRequest**](AddClientToClassRequest.md)|  | 
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]

### Return type

[**AddClientToClassResponse**](AddClientToClassResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **class_get_class_descriptions**
> GetClassDescriptionsResponse class_get_class_descriptions(site_id, version, opts)

Get class descriptions.

To find class descriptions associated with **scheduled classes**, pass `StaffId`, `StartClassDateTime`, `EndClassDateTime`, or `LocationId` in the request.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClassApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_class_description_id: 56, # Integer | Filters to the single result with the given ID.
  request_end_class_date_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filters the results to class descriptions for scheduled classes that happen before the given date and time.
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_location_id: 56, # Integer | Filters results to classes descriptions for schedule classes as the given location.
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_program_ids: [56], # Array<Integer> | Filters results to class descriptions belonging to the given programs.
  request_staff_id: 789, # Integer | Filters results to class descriptions for scheduled classes taught by the given staff member.
  request_start_class_date_time: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filters the results to class descriptions for scheduled classes that happen on or after the given date and time.
}

begin
  #Get class descriptions.
  result = api_instance.class_get_class_descriptions(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassApi->class_get_class_descriptions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_class_description_id** | **Integer**| Filters to the single result with the given ID. | [optional] 
 **request_end_class_date_time** | **DateTime**| Filters the results to class descriptions for scheduled classes that happen before the given date and time. | [optional] 
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_location_id** | **Integer**| Filters results to classes descriptions for schedule classes as the given location. | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_program_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Filters results to class descriptions belonging to the given programs. | [optional] 
 **request_staff_id** | **Integer**| Filters results to class descriptions for scheduled classes taught by the given staff member. | [optional] 
 **request_start_class_date_time** | **DateTime**| Filters the results to class descriptions for scheduled classes that happen on or after the given date and time. | [optional] 

### Return type

[**GetClassDescriptionsResponse**](GetClassDescriptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **class_get_class_schedules**
> GetClassSchedulesResponse class_get_class_schedules(site_id, version, opts)

Get class schedules.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClassApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_class_schedule_ids: [56], # Array<Integer> | The class schedule IDs.  <br />Default: **all**
  request_end_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The end date of the range. Return any active enrollments that occur on or before this day.  <br />Default: **StartDate**
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_location_ids: [56], # Array<Integer> | The location IDs.   <br />Default: **all**
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_program_ids: [56], # Array<Integer> | The program IDs.   <br />Default: **all**
  request_session_type_ids: [56], # Array<Integer> | The session type IDs.   <br />Default: **all**
  request_staff_ids: [56], # Array<Integer> | The staff IDs.   <br />Default: **all**
  request_start_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The start date of the range. Return any active enrollments that occur on or after this day.  <br />Default: **today’s date**
}

begin
  #Get class schedules.
  result = api_instance.class_get_class_schedules(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassApi->class_get_class_schedules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_class_schedule_ids** | [**Array&lt;Integer&gt;**](Integer.md)| The class schedule IDs.  &lt;br /&gt;Default: **all** | [optional] 
 **request_end_date** | **DateTime**| The end date of the range. Return any active enrollments that occur on or before this day.  &lt;br /&gt;Default: **StartDate** | [optional] 
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_location_ids** | [**Array&lt;Integer&gt;**](Integer.md)| The location IDs.   &lt;br /&gt;Default: **all** | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_program_ids** | [**Array&lt;Integer&gt;**](Integer.md)| The program IDs.   &lt;br /&gt;Default: **all** | [optional] 
 **request_session_type_ids** | [**Array&lt;Integer&gt;**](Integer.md)| The session type IDs.   &lt;br /&gt;Default: **all** | [optional] 
 **request_staff_ids** | [**Array&lt;Integer&gt;**](Integer.md)| The staff IDs.   &lt;br /&gt;Default: **all** | [optional] 
 **request_start_date** | **DateTime**| The start date of the range. Return any active enrollments that occur on or after this day.  &lt;br /&gt;Default: **today’s date** | [optional] 

### Return type

[**GetClassSchedulesResponse**](GetClassSchedulesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **class_get_class_visits**
> GetClassVisitsResponse class_get_class_visits(site_id, version, opts)

Get information about clients booked in a class.

Returns a list of visits that contain information for a specified class. On success, this request returns the class object in the response with a list of visits.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClassApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_class_id: 789, # Integer | The class ID.
  request_last_modified_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | When included in the request, only records modified on or after the `LastModifiedDate` specified are included in the response.
}

begin
  #Get information about clients booked in a class.
  result = api_instance.class_get_class_visits(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassApi->class_get_class_visits: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_class_id** | **Integer**| The class ID. | [optional] 
 **request_last_modified_date** | **DateTime**| When included in the request, only records modified on or after the &#x60;LastModifiedDate&#x60; specified are included in the response. | [optional] 

### Return type

[**GetClassVisitsResponse**](GetClassVisitsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **class_get_classes**
> GetClassesResponse class_get_classes(site_id, version, opts)

Get scheduled classes.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClassApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_class_description_ids: [56], # Array<Integer> | The requested class description IDs.
  request_class_ids: [56], # Array<Integer> | The requested class IDs.
  request_client_id: 'request_client_id_example', # String | The client ID of the client who is viewing this class list. Based on identity, the client may be able to see additional information, such as membership specials.
  request_end_date_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The requested end date for filtering.  <br />Default: **today’s date**
  request_hide_canceled_classes: true, # BOOLEAN | When `true`, canceled classes are removed from the response.<br />  When `false`, canceled classes are included in the response.<br />  Default: **false**
  request_last_modified_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | When included in the request, only records modified on or after the `LastModifiedDate` specified are included in the response.
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_location_ids: [56], # Array<Integer> | A list of location IDs on which to base the search.
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_program_ids: [56], # Array<Integer> | A list of program IDs on which to base the search.
  request_scheduling_window: true, # BOOLEAN | When `true`, classes outside scheduling window are removed from the response.<br />  When `false`, classes are included in the response, regardless of the scheduling window.<br />  Default: **false**
  request_semester_ids: [56], # Array<Integer> | A list of semester IDs on which to base the search.
  request_session_type_ids: [56], # Array<Integer> | A list of session type IDs on which to base the search.
  request_staff_ids: [56], # Array<Integer> | The requested IDs of the teaching staff members.
  request_start_date_time: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The requested start date for filtering.   <br />Default: **today’s date**
}

begin
  #Get scheduled classes.
  result = api_instance.class_get_classes(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassApi->class_get_classes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_class_description_ids** | [**Array&lt;Integer&gt;**](Integer.md)| The requested class description IDs. | [optional] 
 **request_class_ids** | [**Array&lt;Integer&gt;**](Integer.md)| The requested class IDs. | [optional] 
 **request_client_id** | **String**| The client ID of the client who is viewing this class list. Based on identity, the client may be able to see additional information, such as membership specials. | [optional] 
 **request_end_date_time** | **DateTime**| The requested end date for filtering.  &lt;br /&gt;Default: **today’s date** | [optional] 
 **request_hide_canceled_classes** | **BOOLEAN**| When &#x60;true&#x60;, canceled classes are removed from the response.&lt;br /&gt;  When &#x60;false&#x60;, canceled classes are included in the response.&lt;br /&gt;  Default: **false** | [optional] 
 **request_last_modified_date** | **DateTime**| When included in the request, only records modified on or after the &#x60;LastModifiedDate&#x60; specified are included in the response. | [optional] 
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_location_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of location IDs on which to base the search. | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_program_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of program IDs on which to base the search. | [optional] 
 **request_scheduling_window** | **BOOLEAN**| When &#x60;true&#x60;, classes outside scheduling window are removed from the response.&lt;br /&gt;  When &#x60;false&#x60;, classes are included in the response, regardless of the scheduling window.&lt;br /&gt;  Default: **false** | [optional] 
 **request_semester_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of semester IDs on which to base the search. | [optional] 
 **request_session_type_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of session type IDs on which to base the search. | [optional] 
 **request_staff_ids** | [**Array&lt;Integer&gt;**](Integer.md)| The requested IDs of the teaching staff members. | [optional] 
 **request_start_date_time** | **DateTime**| The requested start date for filtering.   &lt;br /&gt;Default: **today’s date** | [optional] 

### Return type

[**GetClassesResponse**](GetClassesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **class_get_waitlist_entries**
> GetWaitlistEntriesResponse class_get_waitlist_entries(site_id, version, opts)

Get waiting list entries.

Returns a list of waiting list entries for a specified class schedule or class. The request requires staff credentials and either a class schedule ID or class ID.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClassApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_class_ids: [56], # Array<Integer> | The requested class IDs. If a class ID is present, the request automatically disregards any class schedule IDs in the request. <br />  Either `ClassScheduleIds`, `ClientIds`, `WaitlistEntryIds`, or `ClassIds` is required; the others become optional.<br />  Default: **all ClassIds**
  request_class_schedule_ids: [56], # Array<Integer> | The requested class schedule IDs. If a class ID is present, the request automatically disregards any class schedule IDs in the request.<br />  Either `ClassScheduleIds`, `ClientIds`, `WaitlistEntryIds`, or `ClassIds` is required; the others become optional.<br />  Default: **all ClassScheduleIds**
  request_client_ids: ['request_client_ids_example'], # Array<String> | The requested client IDs.<br />  Either `ClassScheduleIds`, `ClientIds`, `WaitlistEntryIds`, or `ClassIds` is required; the others become optional.<br />  Default: **all ClientIds**
  request_hide_past_entries: true, # BOOLEAN | When `true`, indicates that past waiting list entries are hidden from clients.<br />  When `false`, indicates that past entries are not hidden from clients.<br />  Default: **false**
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_waitlist_entry_ids: [56] # Array<Integer> | The requested waiting list entry IDs.<br />  Either `ClassScheduleIds`, `ClientIds`, `WaitlistEntryIds`, or `ClassIds` is required; the others become optional.<br />  Default: **all WaitlistEntryIds**
}

begin
  #Get waiting list entries.
  result = api_instance.class_get_waitlist_entries(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassApi->class_get_waitlist_entries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_class_ids** | [**Array&lt;Integer&gt;**](Integer.md)| The requested class IDs. If a class ID is present, the request automatically disregards any class schedule IDs in the request. &lt;br /&gt;  Either &#x60;ClassScheduleIds&#x60;, &#x60;ClientIds&#x60;, &#x60;WaitlistEntryIds&#x60;, or &#x60;ClassIds&#x60; is required; the others become optional.&lt;br /&gt;  Default: **all ClassIds** | [optional] 
 **request_class_schedule_ids** | [**Array&lt;Integer&gt;**](Integer.md)| The requested class schedule IDs. If a class ID is present, the request automatically disregards any class schedule IDs in the request.&lt;br /&gt;  Either &#x60;ClassScheduleIds&#x60;, &#x60;ClientIds&#x60;, &#x60;WaitlistEntryIds&#x60;, or &#x60;ClassIds&#x60; is required; the others become optional.&lt;br /&gt;  Default: **all ClassScheduleIds** | [optional] 
 **request_client_ids** | [**Array&lt;String&gt;**](String.md)| The requested client IDs.&lt;br /&gt;  Either &#x60;ClassScheduleIds&#x60;, &#x60;ClientIds&#x60;, &#x60;WaitlistEntryIds&#x60;, or &#x60;ClassIds&#x60; is required; the others become optional.&lt;br /&gt;  Default: **all ClientIds** | [optional] 
 **request_hide_past_entries** | **BOOLEAN**| When &#x60;true&#x60;, indicates that past waiting list entries are hidden from clients.&lt;br /&gt;  When &#x60;false&#x60;, indicates that past entries are not hidden from clients.&lt;br /&gt;  Default: **false** | [optional] 
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_waitlist_entry_ids** | [**Array&lt;Integer&gt;**](Integer.md)| The requested waiting list entry IDs.&lt;br /&gt;  Either &#x60;ClassScheduleIds&#x60;, &#x60;ClientIds&#x60;, &#x60;WaitlistEntryIds&#x60;, or &#x60;ClassIds&#x60; is required; the others become optional.&lt;br /&gt;  Default: **all WaitlistEntryIds** | [optional] 

### Return type

[**GetWaitlistEntriesResponse**](GetWaitlistEntriesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **class_remove_client_from_class**
> RemoveClientFromClassResponse class_remove_client_from_class(request, site_id, version, opts)

Remove a client from a class.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClassApi.new

request = SwaggerClient::RemoveClientFromClassRequest.new # RemoveClientFromClassRequest | 

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '' # String | A staff user authorization token.
}

begin
  #Remove a client from a class.
  result = api_instance.class_remove_client_from_class(request, site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassApi->class_remove_client_from_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**RemoveClientFromClassRequest**](RemoveClientFromClassRequest.md)|  | 
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]

### Return type

[**RemoveClientFromClassResponse**](RemoveClientFromClassResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **class_remove_from_waitlist**
> RemoveFromWaitlistResponse class_remove_from_waitlist(request_waitlist_entry_ids, site_id, version, opts)

Remove a client from a waiting list.

This endpoint does not return a response. If a call to this endpoint results in a 200 OK HTTP status code, then the call was successful.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClassApi.new

request_waitlist_entry_ids = [56] # Array<Integer> | A list of waiting list IDs to remove from waiting lists.

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '' # String | A staff user authorization token.
}

begin
  #Remove a client from a waiting list.
  result = api_instance.class_remove_from_waitlist(request_waitlist_entry_ids, site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassApi->class_remove_from_waitlist: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_waitlist_entry_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of waiting list IDs to remove from waiting lists. | 
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]

### Return type

[**RemoveFromWaitlistResponse**](RemoveFromWaitlistResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **class_substitute_class_teacher**
> SubstituteClassTeacherResponse class_substitute_class_teacher(request, site_id, version, opts)

Substitute a class teacher.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClassApi.new

request = SwaggerClient::SubstituteClassTeacherRequest.new # SubstituteClassTeacherRequest | 

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '' # String | A staff user authorization token.
}

begin
  #Substitute a class teacher.
  result = api_instance.class_substitute_class_teacher(request, site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassApi->class_substitute_class_teacher: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SubstituteClassTeacherRequest**](SubstituteClassTeacherRequest.md)|  | 
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]

### Return type

[**SubstituteClassTeacherResponse**](SubstituteClassTeacherResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



