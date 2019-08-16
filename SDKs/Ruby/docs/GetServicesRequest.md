# SwaggerClient::GetServicesRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**program_ids** | **Array&lt;Integer&gt;** | Filters to pricing options with the specified program IDs. | [optional] 
**session_type_ids** | **Array&lt;Integer&gt;** | Filters to the pricing options with the specified session types IDs. | [optional] 
**service_ids** | **Array&lt;String&gt;** | Filters to the pricing options with the specified IDs. In this context, service and pricing option are used interchangeably. | [optional] 
**class_id** | **Integer** | Filters to the pricing options for the specified class ID. | [optional] 
**class_schedule_id** | **Integer** | Filters to the pricing options for the specified class schedule ID. | [optional] 
**sell_online** | **BOOLEAN** | When &#x60;true&#x60;, filters to the pricing options that can be sold online.&lt;br /&gt;  Default: **false** | [optional] 
**location_id** | **Integer** | When specified, for each returned pricing option, &#x60;TaxRate&#x60; and &#x60;TaxIncluded&#x60; are calculated according to the specified location. Note that this does not filter results to only services provided at the given location, and for locations where Value-Added Tax (VAT) rules apply, the &#x60;TaxRate&#x60; is set to zero. | [optional] 
**hide_related_programs** | **BOOLEAN** | When &#x60;true&#x60;, indicates that pricing options of related programs are omitted from the response.&lt;br /&gt;  Default: **false** | [optional] 
**staff_id** | **Integer** | Sets &#x60;Price&#x60; and &#x60;OnlinePrice&#x60; to the particular pricing of a specific staff member, if allowed by the business. | [optional] 
**limit** | **Integer** | Number of results to include, defaults to 100 | [optional] 
**offset** | **Integer** | Page offset, defaults to 0. | [optional] 


