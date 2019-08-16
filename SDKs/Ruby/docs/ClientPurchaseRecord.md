# SwaggerClient::ClientPurchaseRecord

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sale** | [**Sale**](Sale.md) | Contains details about the sale and payment for a purchase event. | [optional] 
**description** | **String** | The item name and description. | [optional] 
**account_payment** | **BOOLEAN** | If &#x60;true&#x60;, the item was a payment credited to an account. | [optional] 
**price** | **Float** | The item&#39;s price before taxes and discounts. | [optional] 
**amount_paid** | **Float** | The amount paid for the item. | [optional] 
**discount** | **Float** | The discount amount that was applied to the item. | [optional] 
**tax** | **Float** | The amount of tax that was applied to the item. | [optional] 
**returned** | **BOOLEAN** | The return status of the item. If &#x60;true&#x60;, this item was returned. | [optional] 
**quantity** | **Integer** | The quantity of the item purchased. | [optional] 


