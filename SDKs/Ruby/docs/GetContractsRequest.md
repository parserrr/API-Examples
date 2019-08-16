# SwaggerClient::GetContractsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_ids** | **Array&lt;Integer&gt;** | When included, the response only contains details about the specified contract IDs. | [optional] 
**sold_online** | **BOOLEAN** | When &#x60;true&#x60;, the response only contains details about contracts and AutoPay options that can be sold online.&lt;br /&gt;  When &#x60;false&#x60;, only contracts that are not intended to be sold online are returned.&lt;br /&gt;  Default: **all contracts** | [optional] 
**location_id** | **Integer** | The ID of the location that has the requested contracts and AutoPay options. | 
**consumer_id** | **Integer** | The ID of the client. | [optional] 
**limit** | **Integer** | Number of results to include, defaults to 100 | [optional] 
**offset** | **Integer** | Page offset, defaults to 0. | [optional] 


