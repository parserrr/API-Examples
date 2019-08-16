# Sale

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The sale ID. | [optional] 
**sale_date** | **datetime** | The date the item was sold. | [optional] 
**sale_time** | **str** | The time the item was sold. | [optional] 
**sale_date_time** | **datetime** | The date and time the item was sold. | [optional] 
**client_id** | **str** | The ID of the client who made the purchase. | [optional] 
**purchased_items** | [**list[PurchasedItem]**](PurchasedItem.md) | Contains information that describes the purchased items. | [optional] 
**location_id** | **int** | The ID of the location where the sale takes place. | [optional] 
**payments** | [**list[SalePayment]**](SalePayment.md) | Contains information that describes the payments that contributed to this sale. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


