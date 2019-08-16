# SwaggerClient::Sale

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The sale ID. | [optional] 
**sale_date** | **DateTime** | The date the item was sold. | [optional] 
**sale_time** | **String** | The time the item was sold. | [optional] 
**sale_date_time** | **DateTime** | The date and time the item was sold. | [optional] 
**client_id** | **String** | The ID of the client who made the purchase. | [optional] 
**purchased_items** | [**Array&lt;PurchasedItem&gt;**](PurchasedItem.md) | Contains information that describes the purchased items. | [optional] 
**location_id** | **Integer** | The ID of the location where the sale takes place. | [optional] 
**payments** | [**Array&lt;SalePayment&gt;**](SalePayment.md) | Contains information that describes the payments that contributed to this sale. | [optional] 


