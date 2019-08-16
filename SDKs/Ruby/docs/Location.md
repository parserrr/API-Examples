# SwaggerClient::Location

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_image_ur_ls** | **Array&lt;String&gt;** | A list of URLs of any images associated with this location. | [optional] 
**address** | **String** | The first line of the location’s street address. | [optional] 
**address2** | **String** | A second address line for the location’s street address, if needed. | [optional] 
**amenities** | [**Array&lt;Amenity&gt;**](Amenity.md) | A list of strings representing amenities available at the location. | [optional] 
**business_description** | **String** | The business description for the location, as configured by the business owner. | [optional] 
**city** | **String** | The location’s city. | [optional] 
**description** | **String** | A description of the location. | [optional] 
**has_classes** | **BOOLEAN** | When &#x60;true&#x60;, indicates that classes are held at this location.&lt;br /&gt;  When &#x60;false&#x60;, Indicates that classes are not held at this location. | [optional] 
**id** | **Integer** | The ID assigned to this location. | [optional] 
**latitude** | **Float** | The location’s latitude. | [optional] 
**longitude** | **Float** | The location’s longitude. | [optional] 
**name** | **String** | The name of this location. | [optional] 
**phone** | **String** | The location’s phone number. | [optional] 
**phone_extension** | **String** | The location’s phone extension. | [optional] 
**postal_code** | **String** | The location’s postal code. | [optional] 
**site_id** | **Integer** | The ID number assigned to this location. | [optional] 
**state_prov_code** | **String** | The location’s state or province code. | [optional] 
**tax1** | **Float** | A decimal representation of the location’s first tax rate. Tax properties are provided to apply all taxes to the purchase price that the purchase is subject to. Use as many tax properties as needed to represent all the taxes that apply in the location. Enter a decimal number that represents the appropriate tax rate. For example, for an 8% sales tax, enter 0.08. | [optional] 
**tax2** | **Float** | A decimal representation of the location’s second tax rate. See the example in the description of Tax1. | [optional] 
**tax3** | **Float** | A decimal representation of the location’s third tax rate. See the example in the description of Tax1. | [optional] 
**tax4** | **Float** | A decimal representation of the location’s fourth tax rate. See the example in the description of Tax1. | [optional] 
**tax5** | **Float** | A decimal representation of the location’s fifth tax rate. See the example in the description of Tax1. | [optional] 
**total_number_of_ratings** | **Integer** | The number of reviews that clients have left for this location. | [optional] 
**average_rating** | **Float** | The average rating for the location, out of five stars. | [optional] 
**total_number_of_deals** | **Integer** | The number of distinct introductory pricing options available for purchase at this location. | [optional] 


