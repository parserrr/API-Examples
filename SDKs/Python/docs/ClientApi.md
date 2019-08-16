# swagger_client.ClientApi

All URIs are relative to *https://api.mindbodyonline.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**client_add_arrival**](ClientApi.md#client_add_arrival) | **POST** /public/v{version}/client/addarrival | Add an arrival for a client.
[**client_add_client**](ClientApi.md#client_add_client) | **POST** /public/v{version}/client/addclient | Add a client to a site.
[**client_add_contact_log**](ClientApi.md#client_add_contact_log) | **POST** /public/v{version}/client/addcontactlog | Add a contact log to a client&#39;s account.
[**client_get_active_client_memberships**](ClientApi.md#client_get_active_client_memberships) | **GET** /public/v{version}/client/activeclientmemberships | Get a client&#39;s active memberships.
[**client_get_client_account_balances**](ClientApi.md#client_get_client_account_balances) | **GET** /public/v{version}/client/clientaccountbalances | Get account balance information for one or more client(s).
[**client_get_client_contracts**](ClientApi.md#client_get_client_contracts) | **GET** /public/v{version}/client/clientcontracts | Get contracts that a client has purchased.
[**client_get_client_formula_notes**](ClientApi.md#client_get_client_formula_notes) | **GET** /public/v{version}/client/clientformulanotes | Get a client&#39;s formula notes.
[**client_get_client_indexes**](ClientApi.md#client_get_client_indexes) | **GET** /public/v{version}/client/clientindexes | Get a site&#39;s configured client indexes and client index values.
[**client_get_client_purchases**](ClientApi.md#client_get_client_purchases) | **GET** /public/v{version}/client/clientpurchases | Get a client&#39;s purchase history.
[**client_get_client_referral_types**](ClientApi.md#client_get_client_referral_types) | **GET** /public/v{version}/client/clientreferraltypes | Get a site&#39;s configured client referral types.
[**client_get_client_services**](ClientApi.md#client_get_client_services) | **GET** /public/v{version}/client/clientservices | Get pricing options that a client has purchased.
[**client_get_client_visits**](ClientApi.md#client_get_client_visits) | **GET** /public/v{version}/client/clientvisits | Get a client&#39;s visit history.
[**client_get_clients**](ClientApi.md#client_get_clients) | **GET** /public/v{version}/client/clients | Get clients.
[**client_get_contact_logs**](ClientApi.md#client_get_contact_logs) | **GET** /public/v{version}/client/contactlogs | Get contact logs on a client&#39;s account.
[**client_get_cross_regional_client_associations**](ClientApi.md#client_get_cross_regional_client_associations) | **GET** /public/v{version}/client/crossregionalclientassociations | Get a client&#39;s cross regional site associations.
[**client_get_custom_client_fields**](ClientApi.md#client_get_custom_client_fields) | **GET** /public/v{version}/client/customclientfields | Get a site&#39;s configured custom client fields.
[**client_get_required_client_fields**](ClientApi.md#client_get_required_client_fields) | **GET** /public/v{version}/client/requiredclientfields | Get client required fields for a site.
[**client_send_password_reset_email**](ClientApi.md#client_send_password_reset_email) | **POST** /public/v{version}/client/sendpasswordresetemail | Send a password reset email to a client.
[**client_update_client**](ClientApi.md#client_update_client) | **POST** /public/v{version}/client/updateclient | Update a client at a site.
[**client_update_client_service**](ClientApi.md#client_update_client_service) | **POST** /public/v{version}/client/updateclientservice | Update a client&#39;s purchase pricing option.
[**client_update_client_visit**](ClientApi.md#client_update_client_visit) | **POST** /public/v{version}/client/updateclientvisit | Update a client&#39;s visit.
[**client_update_contact_log**](ClientApi.md#client_update_contact_log) | **POST** /public/v{version}/client/updatecontactlog | Update a contact log on a client&#39;s account.
[**client_upload_client_document**](ClientApi.md#client_upload_client_document) | **POST** /public/v{version}/client/uploadclientdocument | Upload a document to a client&#39;s profile.
[**client_upload_client_photo**](ClientApi.md#client_upload_client_photo) | **POST** /public/v{version}/client/uploadclientphoto | Upload a profile photo to a client&#39;s profile.


# **client_add_arrival**
> AddArrivalResponse client_add_arrival(request, site_id, version, authorization=authorization)

Add an arrival for a client.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request = swagger_client.AddArrivalRequest() # AddArrivalRequest | 
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Add an arrival for a client.
    api_response = api_instance.client_add_arrival(request, site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_add_arrival: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AddArrivalRequest**](AddArrivalRequest.md)|  | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**AddArrivalResponse**](AddArrivalResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_add_client**
> AddClientResponse client_add_client(request, site_id, version, authorization=authorization)

Add a client to a site.

The `FirstName` and `LastName` parameters are always required in this request. All other parameters are optional, but note that any of the optional parameters could be required by a particular business, depending on how the business has configured the site settings.    Use after calling the `GetRequiredClientFields` endpoint to make sure you are collecting all required pieces of information.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request = swagger_client.AddClientRequest() # AddClientRequest | 
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Add a client to a site.
    api_response = api_instance.client_add_client(request, site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_add_client: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AddClientRequest**](AddClientRequest.md)|  | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**AddClientResponse**](AddClientResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_add_contact_log**
> ContactLog client_add_contact_log(request, site_id, version, authorization=authorization)

Add a contact log to a client's account.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request = swagger_client.AddContactLogRequest() # AddContactLogRequest | 
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Add a contact log to a client's account.
    api_response = api_instance.client_add_contact_log(request, site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_add_contact_log: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AddContactLogRequest**](AddContactLogRequest.md)|  | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**ContactLog**](ContactLog.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_get_active_client_memberships**
> GetActiveClientMembershipsResponse client_get_active_client_memberships(request_client_id, site_id, version, authorization=authorization, request_limit=request_limit, request_location_id=request_location_id, request_offset=request_offset)

Get a client's active memberships.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request_client_id = 'request_client_id_example' # str | The ID of the client whose membership was requested.
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_location_id = 56 # int | The ID of the location where the requested membership was created. (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)

try:
    # Get a client's active memberships.
    api_response = api_instance.client_get_active_client_memberships(request_client_id, site_id, version, authorization=authorization, request_limit=request_limit, request_location_id=request_location_id, request_offset=request_offset)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_get_active_client_memberships: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_client_id** | **str**| The ID of the client whose membership was requested. | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_location_id** | **int**| The ID of the location where the requested membership was created. | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 

### Return type

[**GetActiveClientMembershipsResponse**](GetActiveClientMembershipsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_get_client_account_balances**
> GetClientAccountBalancesResponse client_get_client_account_balances(request_client_ids, site_id, version, authorization=authorization, request_balance_date=request_balance_date, request_class_id=request_class_id, request_limit=request_limit, request_offset=request_offset)

Get account balance information for one or more client(s).

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request_client_ids = ['request_client_ids_example'] # list[str] | The list of clients IDs for which you want account balances.
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_balance_date = '2013-10-20T19:20:30+01:00' # datetime | The date you want a balance relative to.   Default: **the current date** (optional)
request_class_id = 56 # int | The class ID of the event for which you want a balance. (optional)
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)

try:
    # Get account balance information for one or more client(s).
    api_response = api_instance.client_get_client_account_balances(request_client_ids, site_id, version, authorization=authorization, request_balance_date=request_balance_date, request_class_id=request_class_id, request_limit=request_limit, request_offset=request_offset)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_get_client_account_balances: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_client_ids** | [**list[str]**](str.md)| The list of clients IDs for which you want account balances. | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_balance_date** | **datetime**| The date you want a balance relative to.   Default: **the current date** | [optional] 
 **request_class_id** | **int**| The class ID of the event for which you want a balance. | [optional] 
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 

### Return type

[**GetClientAccountBalancesResponse**](GetClientAccountBalancesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_get_client_contracts**
> GetClientContractsResponse client_get_client_contracts(request_client_id, site_id, version, authorization=authorization, request_client_associated_sites_offset=request_client_associated_sites_offset, request_cross_regional_lookup=request_cross_regional_lookup, request_limit=request_limit, request_offset=request_offset)

Get contracts that a client has purchased.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request_client_id = 'request_client_id_example' # str | The ID of the client.
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_client_associated_sites_offset = 56 # int | Determines how many sites are skipped over when retrieving a client’s cross regional contracts. Used when a client ID is linked to more than ten sites in an organization. Only a maximum of ten site databases are queried when this call is made and `CrossRegionalLookup` is set to `true`. To change which sites are queried, change this offset value.  Default: **0** (optional)
request_cross_regional_lookup = true # bool | When `true`, indicates that the requesting client’s cross regional contracts are returned, if any.<br />  When `false`, indicates that cross regional contracts are not returned. (optional)
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)

try:
    # Get contracts that a client has purchased.
    api_response = api_instance.client_get_client_contracts(request_client_id, site_id, version, authorization=authorization, request_client_associated_sites_offset=request_client_associated_sites_offset, request_cross_regional_lookup=request_cross_regional_lookup, request_limit=request_limit, request_offset=request_offset)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_get_client_contracts: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_client_id** | **str**| The ID of the client. | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_client_associated_sites_offset** | **int**| Determines how many sites are skipped over when retrieving a client’s cross regional contracts. Used when a client ID is linked to more than ten sites in an organization. Only a maximum of ten site databases are queried when this call is made and &#x60;CrossRegionalLookup&#x60; is set to &#x60;true&#x60;. To change which sites are queried, change this offset value.  Default: **0** | [optional] 
 **request_cross_regional_lookup** | **bool**| When &#x60;true&#x60;, indicates that the requesting client’s cross regional contracts are returned, if any.&lt;br /&gt;  When &#x60;false&#x60;, indicates that cross regional contracts are not returned. | [optional] 
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 

### Return type

[**GetClientContractsResponse**](GetClientContractsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_get_client_formula_notes**
> GetClientFormulaNotesResponse client_get_client_formula_notes(site_id, version, authorization=authorization, request_appointment_id=request_appointment_id, request_client_id=request_client_id, request_limit=request_limit, request_offset=request_offset)

Get a client's formula notes.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_appointment_id = 789 # int | The appointment ID of the appointment that the formula notes are related to. (optional)
request_client_id = 'request_client_id_example' # str | The client ID of the client whose formula notes are being requested. (optional)
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)

try:
    # Get a client's formula notes.
    api_response = api_instance.client_get_client_formula_notes(site_id, version, authorization=authorization, request_appointment_id=request_appointment_id, request_client_id=request_client_id, request_limit=request_limit, request_offset=request_offset)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_get_client_formula_notes: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_appointment_id** | **int**| The appointment ID of the appointment that the formula notes are related to. | [optional] 
 **request_client_id** | **str**| The client ID of the client whose formula notes are being requested. | [optional] 
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 

### Return type

[**GetClientFormulaNotesResponse**](GetClientFormulaNotesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_get_client_indexes**
> GetClientIndexesResponse client_get_client_indexes(site_id, version, authorization=authorization, request_required_only=request_required_only)

Get a site's configured client indexes and client index values.

Client indexes are used to analyze client demographics. A business owner can set up different categories with sets of values which they can assign to each client. Client indexes are used in client searches, for tagging clients so that the owner can send mass emails to similar groups, and for many reports.    For more information, see Client Indexes and [Client Index Values (video tutorial)](https://support.mindbodyonline.com/s/article/203261653-Client-indexes-and-client-index-values-video-tutorial?language=en_USclient).

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_required_only = true # bool | When `true`, filters the results to only indexes that are required on creation.<br />  When `false` or omitted, returns all of the client indexes. (optional)

try:
    # Get a site's configured client indexes and client index values.
    api_response = api_instance.client_get_client_indexes(site_id, version, authorization=authorization, request_required_only=request_required_only)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_get_client_indexes: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_required_only** | **bool**| When &#x60;true&#x60;, filters the results to only indexes that are required on creation.&lt;br /&gt;  When &#x60;false&#x60; or omitted, returns all of the client indexes. | [optional] 

### Return type

[**GetClientIndexesResponse**](GetClientIndexesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_get_client_purchases**
> GetClientPurchasesResponse client_get_client_purchases(request_client_id, site_id, version, authorization=authorization, request_end_date=request_end_date, request_limit=request_limit, request_offset=request_offset, request_sale_id=request_sale_id, request_start_date=request_start_date)

Get a client's purchase history.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request_client_id = 'request_client_id_example' # str | The ID of the client you are querying for purchases.
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_end_date = '2013-10-20T19:20:30+01:00' # datetime | Filters results to purchases made before this timestamp.<br />  Default: **end of today** (optional)
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)
request_sale_id = 56 # int | Filters results to the single record associated with this ID. (optional)
request_start_date = '2013-10-20T19:20:30+01:00' # datetime | Filters results to purchases made on or after this timestamp.<br />  Default: **now** (optional)

try:
    # Get a client's purchase history.
    api_response = api_instance.client_get_client_purchases(request_client_id, site_id, version, authorization=authorization, request_end_date=request_end_date, request_limit=request_limit, request_offset=request_offset, request_sale_id=request_sale_id, request_start_date=request_start_date)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_get_client_purchases: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_client_id** | **str**| The ID of the client you are querying for purchases. | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_end_date** | **datetime**| Filters results to purchases made before this timestamp.&lt;br /&gt;  Default: **end of today** | [optional] 
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 
 **request_sale_id** | **int**| Filters results to the single record associated with this ID. | [optional] 
 **request_start_date** | **datetime**| Filters results to purchases made on or after this timestamp.&lt;br /&gt;  Default: **now** | [optional] 

### Return type

[**GetClientPurchasesResponse**](GetClientPurchasesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_get_client_referral_types**
> GetClientReferralTypesResponse client_get_client_referral_types(site_id, version, authorization=authorization, request_include_inactive=request_include_inactive)

Get a site's configured client referral types.

Gets a list of referral types. Referral types are options that new clients can choose to identify how they learned about the business. Referral types are typically used for the sign-up process.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_include_inactive = true # bool | When `true`, filters the results to include subtypes and inactive referral types.<br />  When `false`, includes no subtypes and only active types. (optional)

try:
    # Get a site's configured client referral types.
    api_response = api_instance.client_get_client_referral_types(site_id, version, authorization=authorization, request_include_inactive=request_include_inactive)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_get_client_referral_types: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_include_inactive** | **bool**| When &#x60;true&#x60;, filters the results to include subtypes and inactive referral types.&lt;br /&gt;  When &#x60;false&#x60;, includes no subtypes and only active types. | [optional] 

### Return type

[**GetClientReferralTypesResponse**](GetClientReferralTypesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_get_client_services**
> GetClientServicesResponse client_get_client_services(request_client_id, site_id, version, authorization=authorization, request_class_id=request_class_id, request_client_associated_sites_offset=request_client_associated_sites_offset, request_cross_regional_lookup=request_cross_regional_lookup, request_end_date=request_end_date, request_limit=request_limit, request_location_ids=request_location_ids, request_offset=request_offset, request_program_ids=request_program_ids, request_session_type_id=request_session_type_id, request_show_active_only=request_show_active_only, request_start_date=request_start_date, request_visit_count=request_visit_count)

Get pricing options that a client has purchased.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request_client_id = 'request_client_id_example' # str | The ID of the client to query. The results are a list of pricing options that the client has purchased. Note that “service” and “pricing option” are synonymous in this section of the documentation.
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_class_id = 56 # int | Filters results to only those pricing options that can be used to pay for this class. (optional)
request_client_associated_sites_offset = 56 # int | Used to retrieve a client’s pricing options from multiple sites within an organization when the client is associated with more than ten sites. To change which ten sites are searched, change this offset value. A value of 0 means that no sites are skipped and the first ten sites are returned. You can use the `CrossRegionalClientAssociations` value from `GET CrossRegionalClientAssociations` to determine how many sites the client is associated with. Note that you must always have `CrossRegionalLookup` set to `true` to use this parameter.<br />  Default: **0**    For example, if a client is associated with 25 sites, you need to call `GetClientServices` three times, as follows:  * Use `GET CrossRegionalClientAssociations` to determine how many sites a client is associated with, which tells you how many additional calls you need to make.  * Either omit `ClientAssociatedSitesOffset` or set it to 0 to return the client’s services (pricing options) from sites 1-10.  * Set `ClientAssociatedSitesOffset` to 10 to return the client pricing options from sites 11-20  * Set `ClientAssociatedSitesOffset` to 20 to return the client pricing options from sites 21-25 (optional)
request_cross_regional_lookup = true # bool | Used to retrieve a client’s pricing options from multiple sites within an organization. When included and set to `true`, it searches a maximum of ten sites with which this client is associated. When a client is associated with more than ten sites, use `ClientAssociatedSitesOffset` as many times as needed to search the additional sites with which the client is associated. You can use the `CrossRegionalClientAssociations` value from `GET CrossRegionalClientAssociations` to determine how many sites the client is associated with. Note that a `SiteID` is returned and populated in the `ClientServices` response when `CrossRegionalLookup` is set to `true`.  Default: **false** (optional)
request_end_date = '2013-10-20T19:20:30+01:00' # datetime | Filters results to pricing options that are valid on or before this date. (optional)
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_location_ids = [56] # list[int] | Filters results to pricing options that can be used at the listed location IDs. (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)
request_program_ids = [56] # list[int] | Filters results to pricing options that belong to one of the given program IDs. (optional)
request_session_type_id = 56 # int | Filters results to pricing options that will pay for the given session type ID. Use this to find pricing options that will pay for a specific appointment type. (optional)
request_show_active_only = true # bool | When `true`, includes active services only.  Default: **false** (optional)
request_start_date = '2013-10-20T19:20:30+01:00' # datetime | Filters results to pricing options that are valid on or after this date. (optional)
request_visit_count = 56 # int | A filter on the minimum number of visits a service can pay for. (optional)

try:
    # Get pricing options that a client has purchased.
    api_response = api_instance.client_get_client_services(request_client_id, site_id, version, authorization=authorization, request_class_id=request_class_id, request_client_associated_sites_offset=request_client_associated_sites_offset, request_cross_regional_lookup=request_cross_regional_lookup, request_end_date=request_end_date, request_limit=request_limit, request_location_ids=request_location_ids, request_offset=request_offset, request_program_ids=request_program_ids, request_session_type_id=request_session_type_id, request_show_active_only=request_show_active_only, request_start_date=request_start_date, request_visit_count=request_visit_count)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_get_client_services: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_client_id** | **str**| The ID of the client to query. The results are a list of pricing options that the client has purchased. Note that “service” and “pricing option” are synonymous in this section of the documentation. | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_class_id** | **int**| Filters results to only those pricing options that can be used to pay for this class. | [optional] 
 **request_client_associated_sites_offset** | **int**| Used to retrieve a client’s pricing options from multiple sites within an organization when the client is associated with more than ten sites. To change which ten sites are searched, change this offset value. A value of 0 means that no sites are skipped and the first ten sites are returned. You can use the &#x60;CrossRegionalClientAssociations&#x60; value from &#x60;GET CrossRegionalClientAssociations&#x60; to determine how many sites the client is associated with. Note that you must always have &#x60;CrossRegionalLookup&#x60; set to &#x60;true&#x60; to use this parameter.&lt;br /&gt;  Default: **0**    For example, if a client is associated with 25 sites, you need to call &#x60;GetClientServices&#x60; three times, as follows:  * Use &#x60;GET CrossRegionalClientAssociations&#x60; to determine how many sites a client is associated with, which tells you how many additional calls you need to make.  * Either omit &#x60;ClientAssociatedSitesOffset&#x60; or set it to 0 to return the client’s services (pricing options) from sites 1-10.  * Set &#x60;ClientAssociatedSitesOffset&#x60; to 10 to return the client pricing options from sites 11-20  * Set &#x60;ClientAssociatedSitesOffset&#x60; to 20 to return the client pricing options from sites 21-25 | [optional] 
 **request_cross_regional_lookup** | **bool**| Used to retrieve a client’s pricing options from multiple sites within an organization. When included and set to &#x60;true&#x60;, it searches a maximum of ten sites with which this client is associated. When a client is associated with more than ten sites, use &#x60;ClientAssociatedSitesOffset&#x60; as many times as needed to search the additional sites with which the client is associated. You can use the &#x60;CrossRegionalClientAssociations&#x60; value from &#x60;GET CrossRegionalClientAssociations&#x60; to determine how many sites the client is associated with. Note that a &#x60;SiteID&#x60; is returned and populated in the &#x60;ClientServices&#x60; response when &#x60;CrossRegionalLookup&#x60; is set to &#x60;true&#x60;.  Default: **false** | [optional] 
 **request_end_date** | **datetime**| Filters results to pricing options that are valid on or before this date. | [optional] 
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_location_ids** | [**list[int]**](int.md)| Filters results to pricing options that can be used at the listed location IDs. | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 
 **request_program_ids** | [**list[int]**](int.md)| Filters results to pricing options that belong to one of the given program IDs. | [optional] 
 **request_session_type_id** | **int**| Filters results to pricing options that will pay for the given session type ID. Use this to find pricing options that will pay for a specific appointment type. | [optional] 
 **request_show_active_only** | **bool**| When &#x60;true&#x60;, includes active services only.  Default: **false** | [optional] 
 **request_start_date** | **datetime**| Filters results to pricing options that are valid on or after this date. | [optional] 
 **request_visit_count** | **int**| A filter on the minimum number of visits a service can pay for. | [optional] 

### Return type

[**GetClientServicesResponse**](GetClientServicesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_get_client_visits**
> GetClientVisitsResponse client_get_client_visits(request_client_id, site_id, version, authorization=authorization, request_client_associated_sites_offset=request_client_associated_sites_offset, request_cross_regional_lookup=request_cross_regional_lookup, request_end_date=request_end_date, request_limit=request_limit, request_offset=request_offset, request_start_date=request_start_date, request_unpaids_only=request_unpaids_only)

Get a client's visit history.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request_client_id = 'request_client_id_example' # str | The ID of the requested client.
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_client_associated_sites_offset = 56 # int | The number of sites to skip when returning the site associated with a client. (optional)
request_cross_regional_lookup = true # bool | When `true`, indicates that past and scheduled client visits across all sites in the region are returned.<br />  When `false`, indicates that only visits at the current site are returned. (optional)
request_end_date = '2013-10-20T19:20:30+01:00' # datetime | The date past which class visits are not returned.  Default: **today’s date** (optional)
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)
request_start_date = '2013-10-20T19:20:30+01:00' # datetime | The date before which class visits are not returned.  Default: **the end date** (optional)
request_unpaids_only = true # bool | When `true`, indicates that only visits that have not been paid for are returned.<br />  When `false`, indicates that all visits are returned, regardless of whether they have been paid for.<br />  Default: **false** (optional)

try:
    # Get a client's visit history.
    api_response = api_instance.client_get_client_visits(request_client_id, site_id, version, authorization=authorization, request_client_associated_sites_offset=request_client_associated_sites_offset, request_cross_regional_lookup=request_cross_regional_lookup, request_end_date=request_end_date, request_limit=request_limit, request_offset=request_offset, request_start_date=request_start_date, request_unpaids_only=request_unpaids_only)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_get_client_visits: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_client_id** | **str**| The ID of the requested client. | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_client_associated_sites_offset** | **int**| The number of sites to skip when returning the site associated with a client. | [optional] 
 **request_cross_regional_lookup** | **bool**| When &#x60;true&#x60;, indicates that past and scheduled client visits across all sites in the region are returned.&lt;br /&gt;  When &#x60;false&#x60;, indicates that only visits at the current site are returned. | [optional] 
 **request_end_date** | **datetime**| The date past which class visits are not returned.  Default: **today’s date** | [optional] 
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 
 **request_start_date** | **datetime**| The date before which class visits are not returned.  Default: **the end date** | [optional] 
 **request_unpaids_only** | **bool**| When &#x60;true&#x60;, indicates that only visits that have not been paid for are returned.&lt;br /&gt;  When &#x60;false&#x60;, indicates that all visits are returned, regardless of whether they have been paid for.&lt;br /&gt;  Default: **false** | [optional] 

### Return type

[**GetClientVisitsResponse**](GetClientVisitsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_get_clients**
> GetClientsResponse client_get_clients(site_id, version, authorization=authorization, request_client_i_ds=request_client_i_ds, request_is_prospect=request_is_prospect, request_last_modified_date=request_last_modified_date, request_limit=request_limit, request_offset=request_offset, request_search_text=request_search_text)

Get clients.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_client_i_ds = ['request_client_i_ds_example'] # list[str] | The requested client IDs.  Default: **all IDs** that the authenticated user’s access level allows. (optional)
request_is_prospect = true # bool | When `true`, filters the results to include only those clients marked as prospects for the business.<br />  When `false`, indicates that only those clients who are not marked prospects should be returned. (optional)
request_last_modified_date = '2013-10-20T19:20:30+01:00' # datetime | Filters the results to include only the clients that have been modified on or after this date. (optional)
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)
request_search_text = 'request_search_text_example' # str | Text to use in the search. Can include FirstName, LastName, and Email. Note that user credentials must be provided. (optional)

try:
    # Get clients.
    api_response = api_instance.client_get_clients(site_id, version, authorization=authorization, request_client_i_ds=request_client_i_ds, request_is_prospect=request_is_prospect, request_last_modified_date=request_last_modified_date, request_limit=request_limit, request_offset=request_offset, request_search_text=request_search_text)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_get_clients: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_client_i_ds** | [**list[str]**](str.md)| The requested client IDs.  Default: **all IDs** that the authenticated user’s access level allows. | [optional] 
 **request_is_prospect** | **bool**| When &#x60;true&#x60;, filters the results to include only those clients marked as prospects for the business.&lt;br /&gt;  When &#x60;false&#x60;, indicates that only those clients who are not marked prospects should be returned. | [optional] 
 **request_last_modified_date** | **datetime**| Filters the results to include only the clients that have been modified on or after this date. | [optional] 
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 
 **request_search_text** | **str**| Text to use in the search. Can include FirstName, LastName, and Email. Note that user credentials must be provided. | [optional] 

### Return type

[**GetClientsResponse**](GetClientsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_get_contact_logs**
> GetContactLogsResponse client_get_contact_logs(request_client_id, site_id, version, authorization=authorization, request_end_date=request_end_date, request_limit=request_limit, request_offset=request_offset, request_show_system_generated=request_show_system_generated, request_staff_ids=request_staff_ids, request_start_date=request_start_date, request_subtype_ids=request_subtype_ids, request_type_ids=request_type_ids)

Get contact logs on a client's account.

This endpoint contains a variety of filters that can return not just all contact logs, but also system-generated contact logs, contact logs assigned to specific staff members, and contact logs of specific types or subtypes.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request_client_id = 'request_client_id_example' # str | The ID of the client whose contact logs are being requested.
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_end_date = '2013-10-20T19:20:30+01:00' # datetime | Filters the results to contact logs created before this date.<br />  Default: **the start date** (optional)
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)
request_show_system_generated = true # bool | When `true`, system-generated contact logs are returned in the results.<br />  Default: **false** (optional)
request_staff_ids = [56] # list[int] | Filters the results to return contact logs assigned to one or more staff IDs. (optional)
request_start_date = '2013-10-20T19:20:30+01:00' # datetime | Filters the results to contact logs created on or after this date.<br />  Default: **the current date** (optional)
request_subtype_ids = [56] # list[int] | Filters the results to contact logs assigned one or more of these subtype IDs. (optional)
request_type_ids = [56] # list[int] | Filters the results to contact logs assigned one or more of these type IDs. (optional)

try:
    # Get contact logs on a client's account.
    api_response = api_instance.client_get_contact_logs(request_client_id, site_id, version, authorization=authorization, request_end_date=request_end_date, request_limit=request_limit, request_offset=request_offset, request_show_system_generated=request_show_system_generated, request_staff_ids=request_staff_ids, request_start_date=request_start_date, request_subtype_ids=request_subtype_ids, request_type_ids=request_type_ids)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_get_contact_logs: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_client_id** | **str**| The ID of the client whose contact logs are being requested. | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_end_date** | **datetime**| Filters the results to contact logs created before this date.&lt;br /&gt;  Default: **the start date** | [optional] 
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 
 **request_show_system_generated** | **bool**| When &#x60;true&#x60;, system-generated contact logs are returned in the results.&lt;br /&gt;  Default: **false** | [optional] 
 **request_staff_ids** | [**list[int]**](int.md)| Filters the results to return contact logs assigned to one or more staff IDs. | [optional] 
 **request_start_date** | **datetime**| Filters the results to contact logs created on or after this date.&lt;br /&gt;  Default: **the current date** | [optional] 
 **request_subtype_ids** | [**list[int]**](int.md)| Filters the results to contact logs assigned one or more of these subtype IDs. | [optional] 
 **request_type_ids** | [**list[int]**](int.md)| Filters the results to contact logs assigned one or more of these type IDs. | [optional] 

### Return type

[**GetContactLogsResponse**](GetContactLogsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_get_cross_regional_client_associations**
> GetCrossRegionalClientAssociationsResponse client_get_cross_regional_client_associations(site_id, version, authorization=authorization, request_client_id=request_client_id, request_email=request_email, request_limit=request_limit, request_offset=request_offset)

Get a client's cross regional site associations.

Returns a list of sites that a particular client ID (also referred to as an RSSID) or a client email address is associated with in a cross-regional organization. Either the `ClientID` or `Email` parameter is required. If both are provided, the `ClientID` is used.    Use this endpoint to retrieve information for other Public API endpoints, about the same client at multiple sites within an organization. To use this endpoint, your developer account must have been granted permission to the site’s entire organization.    Note that this endpoint does not work on the Developer Sandbox site, as it is not set up for cross-regional use cases.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_client_id = 'request_client_id_example' # str | Looks up the cross regional associations by the client’s ID. Either `ClientId` or `Email` must be provided. If both are provided, the `ClientId` is used by default. (optional)
request_email = 'request_email_example' # str | Looks up the cross regional associations by the client’s email address. Either `ClientId` or `Email` must be provided. If both are provided, the `ClientId` is used by default. (optional)
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)

try:
    # Get a client's cross regional site associations.
    api_response = api_instance.client_get_cross_regional_client_associations(site_id, version, authorization=authorization, request_client_id=request_client_id, request_email=request_email, request_limit=request_limit, request_offset=request_offset)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_get_cross_regional_client_associations: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]
 **request_client_id** | **str**| Looks up the cross regional associations by the client’s ID. Either &#x60;ClientId&#x60; or &#x60;Email&#x60; must be provided. If both are provided, the &#x60;ClientId&#x60; is used by default. | [optional] 
 **request_email** | **str**| Looks up the cross regional associations by the client’s email address. Either &#x60;ClientId&#x60; or &#x60;Email&#x60; must be provided. If both are provided, the &#x60;ClientId&#x60; is used by default. | [optional] 
 **request_limit** | **int**| Number of results to include, defaults to 100 | [optional] 
 **request_offset** | **int**| Page offset, defaults to 0. | [optional] 

### Return type

[**GetCrossRegionalClientAssociationsResponse**](GetCrossRegionalClientAssociationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_get_custom_client_fields**
> GetCustomClientFieldsResponse client_get_custom_client_fields(site_id, version, authorization=authorization, request_limit=request_limit, request_offset=request_offset)

Get a site's configured custom client fields.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )
request_limit = 56 # int | Number of results to include, defaults to 100 (optional)
request_offset = 56 # int | Page offset, defaults to 0. (optional)

try:
    # Get a site's configured custom client fields.
    api_response = api_instance.client_get_custom_client_fields(site_id, version, authorization=authorization, request_limit=request_limit, request_offset=request_offset)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_get_custom_client_fields: %s\n" % e)
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

[**GetCustomClientFieldsResponse**](GetCustomClientFieldsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_get_required_client_fields**
> GetRequiredClientFieldsResponse client_get_required_client_fields(site_id, version, authorization=authorization)

Get client required fields for a site.

Gets the list of fields that a new client has to fill out in business mode, specifically for the sign-up process. `AddClient` and `UpdateClient` validate against these fields.    This endpoint has no query parameters.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Get client required fields for a site.
    api_response = api_instance.client_get_required_client_fields(site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_get_required_client_fields: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**GetRequiredClientFieldsResponse**](GetRequiredClientFieldsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_send_password_reset_email**
> object client_send_password_reset_email(request, site_id, version, authorization=authorization)

Send a password reset email to a client.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request = swagger_client.SendPasswordResetEmailRequest() # SendPasswordResetEmailRequest | 
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Send a password reset email to a client.
    api_response = api_instance.client_send_password_reset_email(request, site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_send_password_reset_email: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SendPasswordResetEmailRequest**](SendPasswordResetEmailRequest.md)|  | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_update_client**
> UpdateClientResponse client_update_client(request, site_id, version, authorization=authorization)

Update a client at a site.

Updates an existing client for a specific subscriber. Use this endpoint as follows:  * If you need to update the `ReferredBy` parameter, use this endpoint after calling `GET ClientReferralTypes`.  * When updating a client’s home location, use after calling `GET Locations`.  * If you are updating a client’s stored credit card, use after calling `GET AcceptedCardTypes` so that you can make sure the card is a type that is accepted at the subscriber.  If this endpoint is used on a cross-regional site, passing in a client’s RSSID and email address creates a cross-regional link. This means that the client is created in cross-regional sites where the client does not exist and `GET CrossRegionalClientAssociations` returns all appropriate cross-regional sites. When `CrossRegionalUpdate` is omitted or set to `true`, the client’s updated information is propagated to all of the region’s sites. If `CrossRegionalUpdate` is set to `false`, only the local client is updated.    Note that the following items cannot be updated for a cross-regional client:  * `ClientIndexes`  * `ClientRelationships`  * `CustomClientFields`  * `SalesReps`  * `SendAccountEmails`  * `SendAccountTexts`  * `SendPromotionalEmails`  * `SendPromotionalTexts`  * `SendScheduleEmails`  * `SendScheduleTexts`

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request = swagger_client.UpdateClientRequest() # UpdateClientRequest | 
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Update a client at a site.
    api_response = api_instance.client_update_client(request, site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_update_client: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**UpdateClientRequest**](UpdateClientRequest.md)|  | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_update_client_service**
> UpdateClientServiceResponse client_update_client_service(request, site_id, version, authorization=authorization)

Update a client's purchase pricing option.

Updates the active date and/or expiration date of a client pricing option. This request requires staff user credentials. If the active date is modified, the expiration date is also modified accordingly. If the expiration date is modified, the active date is unchanged.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request = swagger_client.UpdateClientServiceRequest() # UpdateClientServiceRequest | 
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Update a client's purchase pricing option.
    api_response = api_instance.client_update_client_service(request, site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_update_client_service: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**UpdateClientServiceRequest**](UpdateClientServiceRequest.md)|  | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**UpdateClientServiceResponse**](UpdateClientServiceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_update_client_visit**
> UpdateClientVisitResponse client_update_client_visit(request, site_id, version, authorization=authorization)

Update a client's visit.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request = swagger_client.UpdateClientVisitRequest() # UpdateClientVisitRequest | 
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Update a client's visit.
    api_response = api_instance.client_update_client_visit(request, site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_update_client_visit: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**UpdateClientVisitRequest**](UpdateClientVisitRequest.md)|  | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**UpdateClientVisitResponse**](UpdateClientVisitResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_update_contact_log**
> ContactLog client_update_contact_log(request, site_id, version, authorization=authorization)

Update a contact log on a client's account.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request = swagger_client.UpdateContactLogRequest() # UpdateContactLogRequest | 
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Update a contact log on a client's account.
    api_response = api_instance.client_update_contact_log(request, site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_update_contact_log: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**UpdateContactLogRequest**](UpdateContactLogRequest.md)|  | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**ContactLog**](ContactLog.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_upload_client_document**
> UploadClientDocumentResponse client_upload_client_document(request, site_id, version, authorization=authorization)

Upload a document to a client's profile.

Returns a string representation of the image byte array. The maximum document size is 1MB.    The maximum size file that can be uploaded is 4 MB.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request = swagger_client.UploadClientDocumentRequest() # UploadClientDocumentRequest | 
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Upload a document to a client's profile.
    api_response = api_instance.client_upload_client_document(request, site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_upload_client_document: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**UploadClientDocumentRequest**](UploadClientDocumentRequest.md)|  | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**UploadClientDocumentResponse**](UploadClientDocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **client_upload_client_photo**
> UploadClientPhotoResponse client_upload_client_photo(request, site_id, version, authorization=authorization)

Upload a profile photo to a client's profile.

The maximum file size is 4 MB and acceptable file types are:  * bmp  * jpeg  * gif  * tiff  * png

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.ClientApi()
request = swagger_client.UploadClientPhotoRequest() # UploadClientPhotoRequest | 
site_id = 'site_id_example' # str | ID of the site from which to pull data.
version = 'version_example' # str | 
authorization = '' # str | A staff user authorization token. (optional) (default to )

try:
    # Upload a profile photo to a client's profile.
    api_response = api_instance.client_upload_client_photo(request, site_id, version, authorization=authorization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClientApi->client_upload_client_photo: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**UploadClientPhotoRequest**](UploadClientPhotoRequest.md)|  | 
 **site_id** | **str**| ID of the site from which to pull data. | 
 **version** | **str**|  | 
 **authorization** | **str**| A staff user authorization token. | [optional] [default to ]

### Return type

[**UploadClientPhotoResponse**](UploadClientPhotoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

