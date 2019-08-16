# SwaggerClient::GetClientContractsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_id** | **String** | The ID of the client. | 
**cross_regional_lookup** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the requesting client’s cross regional contracts are returned, if any.&lt;br /&gt;  When &#x60;false&#x60;, indicates that cross regional contracts are not returned. | [optional] 
**client_associated_sites_offset** | **Integer** | Determines how many sites are skipped over when retrieving a client’s cross regional contracts. Used when a client ID is linked to more than ten sites in an organization. Only a maximum of ten site databases are queried when this call is made and &#x60;CrossRegionalLookup&#x60; is set to &#x60;true&#x60;. To change which sites are queried, change this offset value.  Default: **0** | [optional] 
**limit** | **Integer** | Number of results to include, defaults to 100 | [optional] 
**offset** | **Integer** | Page offset, defaults to 0. | [optional] 


