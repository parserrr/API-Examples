# SwaggerClient::SiteApi

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
> GetActivationCodeResponse site_get_activation_code(version, opts)

Get an activation code for a site.

Before you can use this endpoint, MINDBODY must approve your developer account for live access. If you have finished testing in the sandbox and are ready to begin working with MINDBODY customers, log into your account and request to go live.    See [Accessing Business Data From MINDBODY](https://developers.mindbodyonline.com/PublicDocumentation/V6#accessing-business-data) for more information about the activation code and how to use it.    Once you are approved, this endpoint returns an activation code.This endpoint supports only one site per call.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SiteApi.new

version = 'version_example' # String | 

opts = { 
  authorization: '' # String | A staff user authorization token.
}

begin
  #Get an activation code for a site.
  result = api_instance.site_get_activation_code(version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SiteApi->site_get_activation_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]

### Return type

[**GetActivationCodeResponse**](GetActivationCodeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **site_get_locations**
> GetLocationsResponse site_get_locations(site_id, version, opts)

Get locations for a site.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SiteApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_offset: 56 # Integer | Page offset, defaults to 0.
}

begin
  #Get locations for a site.
  result = api_instance.site_get_locations(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SiteApi->site_get_locations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 

### Return type

[**GetLocationsResponse**](GetLocationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **site_get_programs**
> GetProgramsResponse site_get_programs(site_id, version, opts)

Get service categories offered at a site.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SiteApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_online_only: true, # BOOLEAN | If `true`, filters results to show only those programs that are shown online.<br />  If `false`, all programs are returned.<br />  Default: **false**
  request_schedule_type: 'request_schedule_type_example' # String | A schedule type used to filter the returned results.
}

begin
  #Get service categories offered at a site.
  result = api_instance.site_get_programs(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SiteApi->site_get_programs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_online_only** | **BOOLEAN**| If &#x60;true&#x60;, filters results to show only those programs that are shown online.&lt;br /&gt;  If &#x60;false&#x60;, all programs are returned.&lt;br /&gt;  Default: **false** | [optional] 
 **request_schedule_type** | **String**| A schedule type used to filter the returned results. | [optional] 

### Return type

[**GetProgramsResponse**](GetProgramsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **site_get_resources**
> GetResourcesResponse site_get_resources(site_id, version, opts)

Get resources used at a site.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SiteApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_end_date_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The time the resource ends. This parameter is ignored if `EndDateTime` or `LocationID` is not set.
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_location_id: 56, # Integer | The location of the resource. This parameter is ignored if `EndDateTime` or `LocationID` is not set.<br />  Default: **all**
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_session_type_ids: [56], # Array<Integer> | List of session type IDs.<br />  Default: **all**
  request_start_date_time: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The time the resource starts. This parameter is ignored if `EndDateTime` or `LocationID` is not set.
}

begin
  #Get resources used at a site.
  result = api_instance.site_get_resources(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SiteApi->site_get_resources: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_end_date_time** | **DateTime**| The time the resource ends. This parameter is ignored if &#x60;EndDateTime&#x60; or &#x60;LocationID&#x60; is not set. | [optional] 
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_location_id** | **Integer**| The location of the resource. This parameter is ignored if &#x60;EndDateTime&#x60; or &#x60;LocationID&#x60; is not set.&lt;br /&gt;  Default: **all** | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_session_type_ids** | [**Array&lt;Integer&gt;**](Integer.md)| List of session type IDs.&lt;br /&gt;  Default: **all** | [optional] 
 **request_start_date_time** | **DateTime**| The time the resource starts. This parameter is ignored if &#x60;EndDateTime&#x60; or &#x60;LocationID&#x60; is not set. | [optional] 

### Return type

[**GetResourcesResponse**](GetResourcesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **site_get_session_types**
> GetSessionTypesResponse site_get_session_types(site_id, version, opts)

Get the session types used at a site.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SiteApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_online_only: true, # BOOLEAN | When `true`, indicates that only the session types that can be booked online should be returned.<br />  Default: **false**
  request_program_i_ds: [56] # Array<Integer> | Filters results to session types that belong to one of the given program IDs. If omitted, all program IDs return.
}

begin
  #Get the session types used at a site.
  result = api_instance.site_get_session_types(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SiteApi->site_get_session_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_online_only** | **BOOLEAN**| When &#x60;true&#x60;, indicates that only the session types that can be booked online should be returned.&lt;br /&gt;  Default: **false** | [optional] 
 **request_program_i_ds** | [**Array&lt;Integer&gt;**](Integer.md)| Filters results to session types that belong to one of the given program IDs. If omitted, all program IDs return. | [optional] 

### Return type

[**GetSessionTypesResponse**](GetSessionTypesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **site_get_sites**
> GetSitesResponse site_get_sites(version, opts)

Get all sites that can be accessed by an API Key.

Gets a list of sites that the developer has permission to view.  * Passing in no `SiteIds` returns all sites that the developer has access to.  * Passing in one `SiteIds` returns more detailed information about the specified site.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SiteApi.new

version = 'version_example' # String | 

opts = { 
  authorization: '', # String | A staff user authorization token.
  request_limit: 56, # Integer | Number of results to include, defaults to 100
  request_offset: 56, # Integer | Page offset, defaults to 0.
  request_site_ids: [56] # Array<Integer> | List of the requested site IDs. When omitted, returns all sites that the source has access to.
}

begin
  #Get all sites that can be accessed by an API Key.
  result = api_instance.site_get_sites(version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SiteApi->site_get_sites: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]
 **request_limit** | **Integer**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **Integer**| Page offset, defaults to 0. | [optional] 
 **request_site_ids** | [**Array&lt;Integer&gt;**](Integer.md)| List of the requested site IDs. When omitted, returns all sites that the source has access to. | [optional] 

### Return type

[**GetSitesResponse**](GetSitesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



