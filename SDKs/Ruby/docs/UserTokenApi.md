# SwaggerClient::UserTokenApi

All URIs are relative to *https://api.mindbodyonline.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**user_token_issue**](UserTokenApi.md#user_token_issue) | **POST** /public/v{version}/usertoken/issue | Get a staff user token.
[**user_token_revoke**](UserTokenApi.md#user_token_revoke) | **DELETE** /public/v{version}/usertoken/revoke | Revoke a user token.


# **user_token_issue**
> IssueResponse user_token_issue(request, site_id, version)

Get a staff user token.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UserTokenApi.new

request = SwaggerClient::IssueRequest.new # IssueRequest | 

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 


begin
  #Get a staff user token.
  result = api_instance.user_token_issue(request, site_id, version)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserTokenApi->user_token_issue: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**IssueRequest**](IssueRequest.md)|  | 
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 

### Return type

[**IssueResponse**](IssueResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **user_token_revoke**
> Object user_token_revoke(site_id, version, opts)

Revoke a user token.

Revokes the user token in the Authorization header.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UserTokenApi.new

site_id = 'site_id_example' # String | ID of the site from which to pull data.

version = 'version_example' # String | 

opts = { 
  authorization: '' # String | A staff user authorization token.
}

begin
  #Revoke a user token.
  result = api_instance.user_token_revoke(site_id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserTokenApi->user_token_revoke: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| ID of the site from which to pull data. | 
 **version** | **String**|  | 
 **authorization** | **String**| A staff user authorization token. | [optional] [default to ]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



