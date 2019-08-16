# SwaggerClient::GetProductsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_ids** | **Array&lt;String&gt;** | An ID filter for products. | [optional] 
**search_text** | **String** | A search filter, used for searching by term. | [optional] 
**category_ids** | **Array&lt;Integer&gt;** | A list of category IDs to filter by. | [optional] 
**sub_category_ids** | **Array&lt;Integer&gt;** | A list of subcategory IDs to filter by. | [optional] 
**sell_online** | **BOOLEAN** | When &#x60;true&#x60;, only products that can be sold online are returned.&lt;br /&gt;  When &#x60;false&#x60;, all products are returned.&lt;br /&gt;  Default: **false** | [optional] 
**location_id** | **Integer** | The location ID to use to determine the tax for the products that this request returns.&lt;br /&gt;  Default: **online store** | [optional] 
**limit** | **Integer** | Number of results to include, defaults to 100 | [optional] 
**offset** | **Integer** | Page offset, defaults to 0. | [optional] 


