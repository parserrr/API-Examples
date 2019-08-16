# SwaggerClient::GetSessionTypesRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**program_i_ds** | **Array&lt;Integer&gt;** | Filters results to session types that belong to one of the given program IDs. If omitted, all program IDs return. | [optional] 
**online_only** | **BOOLEAN** | When &#x60;true&#x60;, indicates that only the session types that can be booked online should be returned.&lt;br /&gt;  Default: **false** | [optional] 
**limit** | **Integer** | Number of results to include, defaults to 100 | [optional] 
**offset** | **Integer** | Page offset, defaults to 0. | [optional] 


