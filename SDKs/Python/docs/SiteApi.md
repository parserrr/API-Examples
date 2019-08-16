# swagger_client.SiteApi

All URIs are relative to *https://api.mindbodyonline.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**site_get_activation_code**](SiteApi.md#site_get_activation_code) | **GET** /public/v{version}/site/activationcode | Get an activation code for a site.
[**site_get_locations**](SiteApi.md#site_get_locations) | **GET** /public/v{version}/site/locations | Get locations for a site.
[**site_get_programs**](SiteApi.md#site_get_programs) | **GET** /public/v{version}/site/programs | Get service categories offered at a site.
[**site_get_resources**](SiteApi.md#site_get_resources) | **GET** /public/v{version}/site/resources | Get resources used at a site.
[**site_get_session_types**](SiteApi.md#site_get_session_types) | **GET** /public/v{version}/site/sessiontypes | Get the session types used at a site.
[**site_get_sites**](SiteApi.md#site_get_sites) | **GET** /public/v{version}/site/sites | Get all sites that can be accessed by an API Key.


# **site_get_activation_code**
> GetActivationCodeResponse site_get_activation_code(version, authorization=authorization)

Get an activation code for a site.

Before you can use this endpoint, MINDBODY must approve your developer account for live access. If you have finished testing in the sandbox and are ready to begin working with MINDBODY customers, log into your account and request to go live.    See [Accessing Business Data From MINDBODY](https://developers.mindbodyonline.com/PublicDocumentation/V6#accessing-business-data) for more information about the activation code and how to use it.    Once you are approved, this endpoint returns an activation code.This endpoint supports only one site per call.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.SiteApi()
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Get an activation code for a site.
    api_response = api_instance.site_get_activation_code(version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SiteApi->site_get_activation_code: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**GetActivationCodeResponse**](GetActivationCodeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **site_get_locations**
> GetLocationsResponse site_get_locations(site_id, version, authorization=authorization, request_limit=request_limit, request_offset=request_offset)

Get locations for a site.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.SiteApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)

try:
    # Get locations for a site.
    api_response = api_instance.site_get_locations(site_id, version, authorization=authorization, request_limit=request_limit, request_offset=request_offset)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SiteApi->site_get_locations: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 

### Return type

[**GetLocationsResponse**](GetLocationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **site_get_programs**
> GetProgramsResponse site_get_programs(site_id, version, authorization=authorization, request_limit=request_limit, request_offset=request_offset, request_online_only=request_online_only, request_schedule_type=request_schedule_type)

Get service categories offered at a site.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.SiteApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)
request_online_only = true # bool | If `true`, filters results to show only those programs that are shown online.<br />  If `false`, all programs are returned.<br />  Default: **false** (optional)
request_schedule_type = 'request_schedule_type_example' # str | A schedule type used to filter the returned results. (optional)

try:
    # Get service categories offered at a site.
    api_response = api_instance.site_get_programs(site_id, version, authorization=authorization, request_limit=request_limit, request_offset=request_offset, request_online_only=request_online_only, request_schedule_type=request_schedule_type)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SiteApi->site_get_programs: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 
 **request_online_only** | **bool**| If &#x60;true&#x60;, filters results to show only those programs that are shown online.&lt;br /&gt;  If &#x60;false&#x60;, all programs are returned.&lt;br /&gt;  Default: **false** | [optional] 
 **request_schedule_type** | **str**| A schedule type used to filter the returned results. | [optional] 

### Return type

[**GetProgramsResponse**](GetProgramsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **site_get_resources**
> GetResourcesResponse site_get_resources(site_id, version, authorization=authorization, request_end_date_time=request_end_date_time, request_limit=request_limit, request_location_id=request_location_id, request_offset=request_offset, request_session_type_ids=request_session_type_ids, request_start_date_time=request_start_date_time)

Get resources used at a site.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.SiteApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_end_date_time = '2013-10-20T19:20:30+01:00' # datetime | The time the resource ends. This parameter is ignored if `EndDateTime` or `LocationID` is not set. (optional)
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_location_id = 56 # int | The location of the resource. This parameter is ignored if `EndDateTime` or `LocationID` is not set.<br />  Default: **all** (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)
request_session_type_ids = [56] # list[int] | List of session type IDs.<br />  Default: **all** (optional)
request_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | The time the resource starts. This parameter is ignored if `EndDateTime` or `LocationID` is not set. (optional)

try:
    # Get resources used at a site.
    api_response = api_instance.site_get_resources(site_id, version, authorization=authorization, request_end_date_time=request_end_date_time, request_limit=request_limit, request_location_id=request_location_id, request_offset=request_offset, request_session_type_ids=request_session_type_ids, request_start_date_time=request_start_date_time)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SiteApi->site_get_resources: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_end_date_time** | **datetime**| The time the resource ends. This parameter is ignored if &#x60;EndDateTime&#x60; or &#x60;LocationID&#x60; is not set. | [optional] 
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_location_id** | **int**| The location of the resource. This parameter is ignored if &#x60;EndDateTime&#x60; or &#x60;LocationID&#x60; is not set.&lt;br /&gt;  Default: **all** | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 
 **request_session_type_ids** | [**list[int]**](int.md)| List of session type IDs.&lt;br /&gt;  Default: **all** | [optional] 
 **request_start_date_time** | **datetime**| The time the resource starts. This parameter is ignored if &#x60;EndDateTime&#x60; or &#x60;LocationID&#x60; is not set. | [optional] 

### Return type

[**GetResourcesResponse**](GetResourcesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **site_get_session_types**
> GetSessionTypesResponse site_get_session_types(site_id, version, authorization=authorization, request_limit=request_limit, request_offset=request_offset, request_online_only=request_online_only, request_program_i_ds=request_program_i_ds)

Get the session types used at a site.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.SiteApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)
request_online_only = true # bool | When `true`, indicates that only the session types that can be booked online should be returned.<br />  Default: **false** (optional)
request_program_i_ds = [56] # list[int] | Filters results to session types that belong to one of the given program IDs. If omitted, all program IDs return. (optional)

try:
    # Get the session types used at a site.
    api_response = api_instance.site_get_session_types(site_id, version, authorization=authorization, request_limit=request_limit, request_offset=request_offset, request_online_only=request_online_only, request_program_i_ds=request_program_i_ds)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SiteApi->site_get_session_types: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 
 **request_online_only** | **bool**| When &#x60;true&#x60;, indicates that only the session types that can be booked online should be returned.&lt;br /&gt;  Default: **false** | [optional] 
 **request_program_i_ds** | [**list[int]**](int.md)| Filters results to session types that belong to one of the given program IDs. If omitted, all program IDs return. | [optional] 

### Return type

[**GetSessionTypesResponse**](GetSessionTypesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **site_get_sites**
> GetSitesResponse site_get_sites(version, authorization=authorization, request_limit=request_limit, request_offset=request_offset, request_site_ids=request_site_ids)

Get all sites that can be accessed by an API Key.

Gets a list of sites that the developer has permission to view.  * Passing in no `SiteIds` returns all sites that the developer has access to.  * Passing in one `SiteIds` returns more detailed information about the specified site.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.SiteApi()
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)
request_site_ids = [56] # list[int] | List of the requested site IDs. When omitted, returns all sites that the source has access to. (optional)

try:
    # Get all sites that can be accessed by an API Key.
    api_response = api_instance.site_get_sites(version, authorization=authorization, request_limit=request_limit, request_offset=request_offset, request_site_ids=request_site_ids)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SiteApi->site_get_sites: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 
 **request_site_ids** | [**list[int]**](int.md)| List of the requested site IDs. When omitted, returns all sites that the source has access to. | [optional] 

### Return type

[**GetSitesResponse**](GetSitesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

