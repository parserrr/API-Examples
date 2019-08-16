# SwaggerClient::GetClientPurchasesRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_id** | **String** | The ID of the client you are querying for purchases. | 
**start_date** | **DateTime** | Filters results to purchases made on or after this timestamp.&lt;br /&gt;  Default: **now** | [optional] 
**end_date** | **DateTime** | Filters results to purchases made before this timestamp.&lt;br /&gt;  Default: **end of today** | [optional] 
**sale_id** | **Integer** | Filters results to the single record associated with this ID. | [optional] 
**limit** | **Integer** | Number of results to include, defaults to 100 | [optional] 
**offset** | **Integer** | Page offset, defaults to 0. | [optional] 


