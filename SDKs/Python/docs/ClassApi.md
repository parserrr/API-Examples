# swagger_client.ClassApi

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
> AddClientToClassResponse class_add_client_to_class(request, site_id, version, authorization=authorization)

Book a client into a class.

This endpoint adds a client to a class or to a class waiting list. It is helpful to use this endpoint in the following situations:  * Use after calling `GET Clients` and `GET Classes` so that you are sure which client to book in which class.  * If adding a client to a class from a waiting list, use this call after you call `GET WaitlistEntries` and determine the ID of the waiting list from which you are moving the client.  * If adding a client to a class and using a pricing option that the client has already purchased, use this call after you call `GET ClientServices` to determine the ID of the pricing option that the client wants to use.    If you add a client to a class and the client purchases a new pricing option, use `GET Services`, `GET Classes`, and then `POST CheckoutShoppingCart` in place of this call.    This endpoint also supports cross-regional class bookings. If you want to perform a cross-regional class booking, set `CrossRegionalBooking` to `true`. This endpoint does not support adding a user to a waiting list using a cross-regional client pricing option(service). Cross-regional booking workflows do not support client service scheduling restrictions.    When performing a cross-regional class booking, this endpoint loops through the first ten sites that the client is associated with, looks for client pricing options at each of those sites, and then uses the oldest client pricing option found.It is important to note that this endpoint only loops through a maximum of ten associated client sites. If a `ClientID` is associated with more than ten sites in an organization, this endpoint only loops through the first ten.If you know that a client has a client service at another site, you can specify that site using the `CrossRegionalBookingClientServiceSiteId` query parameter.    If you perform a cross-regional booking, two additional fields are included in the `SessionType` object of the response:  * `SiteID`, which specifies where the client service is coming from  * `CrossRegionalBookingPerformed`, a Boolean field that is set to `true`    As a prerequisite to using this endpoint, your `SourceName` must have been granted access to the organization to which the site belongs.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClassApi()
request = swagger_client.AddClientToClassRequest() # AddClientToClassRequest | 
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Book a client into a class.
    api_response = api_instance.class_add_client_to_class(request, site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClassApi->class_add_client_to_class: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AddClientToClassRequest**](AddClientToClassRequest.md)|  | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**AddClientToClassResponse**](AddClientToClassResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **class_get_class_descriptions**
> GetClassDescriptionsResponse class_get_class_descriptions(site_id, version, authorization=authorization, request_class_description_id=request_class_description_id, request_end_class_date_time=request_end_class_date_time, request_limit=request_limit, request_location_id=request_location_id, request_offset=request_offset, request_program_ids=request_program_ids, request_staff_id=request_staff_id, request_start_class_date_time=request_start_class_date_time)

Get class descriptions.

To find class descriptions associated with **scheduled classes**, pass `StaffId`, `StartClassDateTime`, `EndClassDateTime`, or `LocationId` in the request.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClassApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_class_description_id = 56 # int | Filters to the single result with the given ID. (optional)
request_end_class_date_time = '2013-10-20T19:20:30+01:00' # datetime | Filters the results to class descriptions for scheduled classes that happen before the given date and time. (optional)
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_location_id = 56 # int | Filters results to classes descriptions for schedule classes as the given location. (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)
request_program_ids = [56] # list[int] | Filters results to class descriptions belonging to the given programs. (optional)
request_staff_id = 789 # int | Filters results to class descriptions for scheduled classes taught by the given staff member. (optional)
request_start_class_date_time = '2013-10-20T19:20:30+01:00' # datetime | Filters the results to class descriptions for scheduled classes that happen on or after the given date and time. (optional)

try:
    # Get class descriptions.
    api_response = api_instance.class_get_class_descriptions(site_id, version, authorization=authorization, request_class_description_id=request_class_description_id, request_end_class_date_time=request_end_class_date_time, request_limit=request_limit, request_location_id=request_location_id, request_offset=request_offset, request_program_ids=request_program_ids, request_staff_id=request_staff_id, request_start_class_date_time=request_start_class_date_time)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClassApi->class_get_class_descriptions: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_class_description_id** | **int**| Filters to the single result with the given ID. | [optional] 
 **request_end_class_date_time** | **datetime**| Filters the results to class descriptions for scheduled classes that happen before the given date and time. | [optional] 
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_location_id** | **int**| Filters results to classes descriptions for schedule classes as the given location. | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 
 **request_program_ids** | [**list[int]**](int.md)| Filters results to class descriptions belonging to the given programs. | [optional] 
 **request_staff_id** | **int**| Filters results to class descriptions for scheduled classes taught by the given staff member. | [optional] 
 **request_start_class_date_time** | **datetime**| Filters the results to class descriptions for scheduled classes that happen on or after the given date and time. | [optional] 

### Return type

[**GetClassDescriptionsResponse**](GetClassDescriptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **class_get_class_schedules**
> GetClassSchedulesResponse class_get_class_schedules(site_id, version, authorization=authorization, request_class_schedule_ids=request_class_schedule_ids, request_end_date=request_end_date, request_limit=request_limit, request_location_ids=request_location_ids, request_offset=request_offset, request_program_ids=request_program_ids, request_session_type_ids=request_session_type_ids, request_staff_ids=request_staff_ids, request_start_date=request_start_date)

Get class schedules.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClassApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_class_schedule_ids = [56] # list[int] | The class schedule IDs.  <br />Default: **all** (optional)
request_end_date = '2013-10-20T19:20:30+01:00' # datetime | The end date of the range. Return any active enrollments that occur on or before this day.  <br />Default: **StartDate** (optional)
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_location_ids = [56] # list[int] | The location IDs.   <br />Default: **all** (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)
request_program_ids = [56] # list[int] | The program IDs.   <br />Default: **all** (optional)
request_session_type_ids = [56] # list[int] | The session type IDs.   <br />Default: **all** (optional)
request_staff_ids = [56] # list[int] | The staff IDs.   <br />Default: **all** (optional)
request_start_date = '2013-10-20T19:20:30+01:00' # datetime | The start date of the range. Return any active enrollments that occur on or after this day.  <br />Default: **today’s date** (optional)

try:
    # Get class schedules.
    api_response = api_instance.class_get_class_schedules(site_id, version, authorization=authorization, request_class_schedule_ids=request_class_schedule_ids, request_end_date=request_end_date, request_limit=request_limit, request_location_ids=request_location_ids, request_offset=request_offset, request_program_ids=request_program_ids, request_session_type_ids=request_session_type_ids, request_staff_ids=request_staff_ids, request_start_date=request_start_date)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClassApi->class_get_class_schedules: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_class_schedule_ids** | [**list[int]**](int.md)| The class schedule IDs.  &lt;br /&gt;Default: **all** | [optional] 
 **request_end_date** | **datetime**| The end date of the range. Return any active enrollments that occur on or before this day.  &lt;br /&gt;Default: **StartDate** | [optional] 
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_location_ids** | [**list[int]**](int.md)| The location IDs.   &lt;br /&gt;Default: **all** | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 
 **request_program_ids** | [**list[int]**](int.md)| The program IDs.   &lt;br /&gt;Default: **all** | [optional] 
 **request_session_type_ids** | [**list[int]**](int.md)| The session type IDs.   &lt;br /&gt;Default: **all** | [optional] 
 **request_staff_ids** | [**list[int]**](int.md)| The staff IDs.   &lt;br /&gt;Default: **all** | [optional] 
 **request_start_date** | **datetime**| The start date of the range. Return any active enrollments that occur on or after this day.  &lt;br /&gt;Default: **today’s date** | [optional] 

### Return type

[**GetClassSchedulesResponse**](GetClassSchedulesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **class_get_class_visits**
> GetClassVisitsResponse class_get_class_visits(site_id, version, authorization=authorization, request_class_id=request_class_id, request_last_modified_date=request_last_modified_date)

Get information about clients booked in a class.

Returns a list of visits that contain information for a specified class. On success, this request returns the class object in the response with a list of visits.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClassApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_class_id = 789 # int | The class ID. (optional)
request_last_modified_date = '2013-10-20T19:20:30+01:00' # datetime | When included in the request, only records modified on or after the `LastModifiedDate` specified are included in the response. (optional)

try:
    # Get information about clients booked in a class.
    api_response = api_instance.class_get_class_visits(site_id, version, authorization=authorization, request_class_id=request_class_id, request_last_modified_date=request_last_modified_date)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClassApi->class_get_class_visits: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_class_id** | **int**| The class ID. | [optional] 
 **request_last_modified_date** | **datetime**| When included in the request, only records modified on or after the &#x60;LastModifiedDate&#x60; specified are included in the response. | [optional] 

### Return type

[**GetClassVisitsResponse**](GetClassVisitsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **class_get_classes**
> GetClassesResponse class_get_classes(site_id, version, authorization=authorization, request_class_description_ids=request_class_description_ids, request_class_ids=request_class_ids, request_client_id=request_client_id, request_end_date_time=request_end_date_time, request_hide_canceled_classes=request_hide_canceled_classes, request_last_modified_date=request_last_modified_date, request_limit=request_limit, request_location_ids=request_location_ids, request_offset=request_offset, request_program_ids=request_program_ids, request_scheduling_window=request_scheduling_window, request_semester_ids=request_semester_ids, request_session_type_ids=request_session_type_ids, request_staff_ids=request_staff_ids, request_start_date_time=request_start_date_time)

Get scheduled classes.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClassApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_class_description_ids = [56] # list[int] | The requested class description IDs. (optional)
request_class_ids = [56] # list[int] | The requested class IDs. (optional)
request_client_id = 'request_client_id_example' # str | The client ID of the client who is viewing this class list. Based on identity, the client may be able to see additional information, such as membership specials. (optional)
request_end_date_time = '2013-10-20T19:20:30+01:00' # datetime | The requested end date for filtering.  <br />Default: **today’s date** (optional)
request_hide_canceled_classes = true # bool | When `true`, canceled classes are removed from the response.<br />  When `false`, canceled classes are included in the response.<br />  Default: **false** (optional)
request_last_modified_date = '2013-10-20T19:20:30+01:00' # datetime | When included in the request, only records modified on or after the `LastModifiedDate` specified are included in the response. (optional)
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_location_ids = [56] # list[int] | A list of location IDs on which to base the search. (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)
request_program_ids = [56] # list[int] | A list of program IDs on which to base the search. (optional)
request_scheduling_window = true # bool | When `true`, classes outside scheduling window are removed from the response.<br />  When `false`, classes are included in the response, regardless of the scheduling window.<br />  Default: **false** (optional)
request_semester_ids = [56] # list[int] | A list of semester IDs on which to base the search. (optional)
request_session_type_ids = [56] # list[int] | A list of session type IDs on which to base the search. (optional)
request_staff_ids = [56] # list[int] | The requested IDs of the teaching staff members. (optional)
request_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | The requested start date for filtering.   <br />Default: **today’s date** (optional)

try:
    # Get scheduled classes.
    api_response = api_instance.class_get_classes(site_id, version, authorization=authorization, request_class_description_ids=request_class_description_ids, request_class_ids=request_class_ids, request_client_id=request_client_id, request_end_date_time=request_end_date_time, request_hide_canceled_classes=request_hide_canceled_classes, request_last_modified_date=request_last_modified_date, request_limit=request_limit, request_location_ids=request_location_ids, request_offset=request_offset, request_program_ids=request_program_ids, request_scheduling_window=request_scheduling_window, request_semester_ids=request_semester_ids, request_session_type_ids=request_session_type_ids, request_staff_ids=request_staff_ids, request_start_date_time=request_start_date_time)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClassApi->class_get_classes: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_class_description_ids** | [**list[int]**](int.md)| The requested class description IDs. | [optional] 
 **request_class_ids** | [**list[int]**](int.md)| The requested class IDs. | [optional] 
 **request_client_id** | **str**| The client ID of the client who is viewing this class list. Based on identity, the client may be able to see additional information, such as membership specials. | [optional] 
 **request_end_date_time** | **datetime**| The requested end date for filtering.  &lt;br /&gt;Default: **today’s date** | [optional] 
 **request_hide_canceled_classes** | **bool**| When &#x60;true&#x60;, canceled classes are removed from the response.&lt;br /&gt;  When &#x60;false&#x60;, canceled classes are included in the response.&lt;br /&gt;  Default: **false** | [optional] 
 **request_last_modified_date** | **datetime**| When included in the request, only records modified on or after the &#x60;LastModifiedDate&#x60; specified are included in the response. | [optional] 
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_location_ids** | [**list[int]**](int.md)| A list of location IDs on which to base the search. | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 
 **request_program_ids** | [**list[int]**](int.md)| A list of program IDs on which to base the search. | [optional] 
 **request_scheduling_window** | **bool**| When &#x60;true&#x60;, classes outside scheduling window are removed from the response.&lt;br /&gt;  When &#x60;false&#x60;, classes are included in the response, regardless of the scheduling window.&lt;br /&gt;  Default: **false** | [optional] 
 **request_semester_ids** | [**list[int]**](int.md)| A list of semester IDs on which to base the search. | [optional] 
 **request_session_type_ids** | [**list[int]**](int.md)| A list of session type IDs on which to base the search. | [optional] 
 **request_staff_ids** | [**list[int]**](int.md)| The requested IDs of the teaching staff members. | [optional] 
 **request_start_date_time** | **datetime**| The requested start date for filtering.   &lt;br /&gt;Default: **today’s date** | [optional] 

### Return type

[**GetClassesResponse**](GetClassesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **class_get_waitlist_entries**
> GetWaitlistEntriesResponse class_get_waitlist_entries(site_id, version, authorization=authorization, request_class_ids=request_class_ids, request_class_schedule_ids=request_class_schedule_ids, request_client_ids=request_client_ids, request_hide_past_entries=request_hide_past_entries, request_limit=request_limit, request_offset=request_offset, request_waitlist_entry_ids=request_waitlist_entry_ids)

Get waiting list entries.

Returns a list of waiting list entries for a specified class schedule or class. The request requires staff credentials and either a class schedule ID or class ID.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClassApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_class_ids = [56] # list[int] | The requested class IDs. If a class ID is present, the request automatically disregards any class schedule IDs in the request. <br />  Either `ClassScheduleIds`, `ClientIds`, `WaitlistEntryIds`, or `ClassIds` is required; the others become optional.<br />  Default: **all ClassIds** (optional)
request_class_schedule_ids = [56] # list[int] | The requested class schedule IDs. If a class ID is present, the request automatically disregards any class schedule IDs in the request.<br />  Either `ClassScheduleIds`, `ClientIds`, `WaitlistEntryIds`, or `ClassIds` is required; the others become optional.<br />  Default: **all ClassScheduleIds** (optional)
request_client_ids = ['request_client_ids_example'] # list[str] | The requested client IDs.<br />  Either `ClassScheduleIds`, `ClientIds`, `WaitlistEntryIds`, or `ClassIds` is required; the others become optional.<br />  Default: **all ClientIds** (optional)
request_hide_past_entries = true # bool | When `true`, indicates that past waiting list entries are hidden from clients.<br />  When `false`, indicates that past entries are not hidden from clients.<br />  Default: **false** (optional)
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)
request_waitlist_entry_ids = [56] # list[int] | The requested waiting list entry IDs.<br />  Either `ClassScheduleIds`, `ClientIds`, `WaitlistEntryIds`, or `ClassIds` is required; the others become optional.<br />  Default: **all WaitlistEntryIds** (optional)

try:
    # Get waiting list entries.
    api_response = api_instance.class_get_waitlist_entries(site_id, version, authorization=authorization, request_class_ids=request_class_ids, request_class_schedule_ids=request_class_schedule_ids, request_client_ids=request_client_ids, request_hide_past_entries=request_hide_past_entries, request_limit=request_limit, request_offset=request_offset, request_waitlist_entry_ids=request_waitlist_entry_ids)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClassApi->class_get_waitlist_entries: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_class_ids** | [**list[int]**](int.md)| The requested class IDs. If a class ID is present, the request automatically disregards any class schedule IDs in the request. &lt;br /&gt;  Either &#x60;ClassScheduleIds&#x60;, &#x60;ClientIds&#x60;, &#x60;WaitlistEntryIds&#x60;, or &#x60;ClassIds&#x60; is required; the others become optional.&lt;br /&gt;  Default: **all ClassIds** | [optional] 
 **request_class_schedule_ids** | [**list[int]**](int.md)| The requested class schedule IDs. If a class ID is present, the request automatically disregards any class schedule IDs in the request.&lt;br /&gt;  Either &#x60;ClassScheduleIds&#x60;, &#x60;ClientIds&#x60;, &#x60;WaitlistEntryIds&#x60;, or &#x60;ClassIds&#x60; is required; the others become optional.&lt;br /&gt;  Default: **all ClassScheduleIds** | [optional] 
 **request_client_ids** | [**list[str]**](str.md)| The requested client IDs.&lt;br /&gt;  Either &#x60;ClassScheduleIds&#x60;, &#x60;ClientIds&#x60;, &#x60;WaitlistEntryIds&#x60;, or &#x60;ClassIds&#x60; is required; the others become optional.&lt;br /&gt;  Default: **all ClientIds** | [optional] 
 **request_hide_past_entries** | **bool**| When &#x60;true&#x60;, indicates that past waiting list entries are hidden from clients.&lt;br /&gt;  When &#x60;false&#x60;, indicates that past entries are not hidden from clients.&lt;br /&gt;  Default: **false** | [optional] 
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 
 **request_waitlist_entry_ids** | [**list[int]**](int.md)| The requested waiting list entry IDs.&lt;br /&gt;  Either &#x60;ClassScheduleIds&#x60;, &#x60;ClientIds&#x60;, &#x60;WaitlistEntryIds&#x60;, or &#x60;ClassIds&#x60; is required; the others become optional.&lt;br /&gt;  Default: **all WaitlistEntryIds** | [optional] 

### Return type

[**GetWaitlistEntriesResponse**](GetWaitlistEntriesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **class_remove_client_from_class**
> RemoveClientFromClassResponse class_remove_client_from_class(request, site_id, version, authorization=authorization)

Remove a client from a class.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClassApi()
request = swagger_client.RemoveClientFromClassRequest() # RemoveClientFromClassRequest | 
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Remove a client from a class.
    api_response = api_instance.class_remove_client_from_class(request, site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClassApi->class_remove_client_from_class: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**RemoveClientFromClassRequest**](RemoveClientFromClassRequest.md)|  | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**RemoveClientFromClassResponse**](RemoveClientFromClassResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **class_remove_from_waitlist**
> RemoveFromWaitlistResponse class_remove_from_waitlist(request_waitlist_entry_ids, site_id, version, authorization=authorization)

Remove a client from a waiting list.

This endpoint does not return a response. If a call to this endpoint results in a 200 OK HTTP status code, then the call was successful.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClassApi()
request_waitlist_entry_ids = [56] # list[int] | A list of waiting list IDs to remove from waiting lists.
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Remove a client from a waiting list.
    api_response = api_instance.class_remove_from_waitlist(request_waitlist_entry_ids, site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClassApi->class_remove_from_waitlist: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_waitlist_entry_ids** | [**list[int]**](int.md)| A list of waiting list IDs to remove from waiting lists. | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**RemoveFromWaitlistResponse**](RemoveFromWaitlistResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **class_substitute_class_teacher**
> SubstituteClassTeacherResponse class_substitute_class_teacher(request, site_id, version, authorization=authorization)

Substitute a class teacher.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClassApi()
request = swagger_client.SubstituteClassTeacherRequest() # SubstituteClassTeacherRequest | 
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Substitute a class teacher.
    api_response = api_instance.class_substitute_class_teacher(request, site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClassApi->class_substitute_class_teacher: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SubstituteClassTeacherRequest**](SubstituteClassTeacherRequest.md)|  | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**SubstituteClassTeacherResponse**](SubstituteClassTeacherResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

