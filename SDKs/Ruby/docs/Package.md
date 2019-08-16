# SwaggerClient::Package

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The ID of the package. | [optional] 
**name** | **String** | The name of the package. | [optional] 
**discount_percentage** | **Float** | The discount percentage applied to the package. | [optional] 
**sell_online** | **BOOLEAN** | When &#x60;true&#x60;, only products that can be sold online are returned.&lt;br /&gt;  When &#x60;false&#x60;, all products are returned. | [optional] 
**services** | [**Array&lt;Service&gt;**](Service.md) | Information about the services in the packages. | [optional] 
**products** | [**Array&lt;Product&gt;**](Product.md) | Information about the products in the packages. | [optional] 


