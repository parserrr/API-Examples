# SwaggerClient::CheckoutItemWrapper

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item** | [**CheckoutItem**](CheckoutItem.md) | Information about an item in the cart. | [optional] 
**discount_amount** | **Float** | The amount the item is discounted. This parameter is ignored for packages. | [optional] 
**appointment_booking_requests** | [**Array&lt;CheckoutAppointmentBookingRequest&gt;**](CheckoutAppointmentBookingRequest.md) | A list of appointments to be booked then paid for by this item. This parameter applies only to pricing option items. | [optional] 
**enrollment_ids** | **Array&lt;Integer&gt;** | A list of enrollment IDs that this item is to pay for. This parameter applies only to pricing option items. | [optional] 
**class_ids** | **Array&lt;Integer&gt;** | A list of class IDs that this item is to pay for. This parameter applies only to pricing option items. | [optional] 
**course_ids** | **Array&lt;Integer&gt;** | A list of course IDs that this item is to pay for. This parameter applies only to pricing option items. | [optional] 
**visit_ids** | **Array&lt;Integer&gt;** | A list of visit IDs that this item is to pay for. This parameter applies only to pricing option items. | [optional] 
**appointment_ids** | **Array&lt;Integer&gt;** | A list of appointment IDs that this item is to reconcile. | [optional] 
**id** | **Integer** | The item’s unique ID within the cart. | [optional] 
**quantity** | **Integer** | The number of this item to be purchased. | [optional] 


