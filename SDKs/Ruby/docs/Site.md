# SwaggerClient::Site

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accepts_american_express** | **BOOLEAN** | When &#x60;true&#x60;, indicates that this site accepts American Express cards.&lt;br /&gt;  When &#x60;false&#x60;, indicates that this site does not accept American Express credit cards. | [optional] 
**accepts_discover** | **BOOLEAN** | When &#x60;true&#x60;, indicates that this site accepts Discover cards.&lt;br /&gt;  When &#x60;false&#x60;, indicates that this site does not accept Discover credit cards. | [optional] 
**accepts_master_card** | **BOOLEAN** | When &#x60;true&#x60;, indicates that this site accepts MasterCard cards.&lt;br /&gt;  When &#x60;false&#x60;, indicates that this site does not accept MasterCard credit cards. | [optional] 
**accepts_visa** | **BOOLEAN** | When &#x60;true&#x60;, indicates that this site accepts Visa cards.&lt;br /&gt;  When &#x60;false&#x60;, indicates that this site does not accept Visa credit cards. | [optional] 
**allows_dashboard_access** | **BOOLEAN** | When &#x60;true&#x60;, indicates that this site allows access to its dashboard.&lt;br /&gt;  When &#x60;false&#x60;, indicates that this site does not allow access to its dashboard. | [optional] 
**contact_email** | **String** | The site’s email address. | [optional] 
**description** | **String** | A description of the site. | [optional] 
**id** | **Integer** | The site ID. | [optional] 
**logo_url** | **String** | The URL to the site’s logo. | [optional] 
**name** | **String** | The name of the site. | [optional] 
**page_color1** | **String** | A hex code for a color the business owner uses in marketing. This color can be used to set a theme for an integration so that it matches the configured color-scheme for the business. | [optional] 
**page_color2** | **String** | The hex code for a second color, to be used in the same manner as &#x60;pageColor1&#x60;. | [optional] 
**page_color3** | **String** | The hex code for a third color, to be used in the same manner as &#x60;pageColor1&#x60;. | [optional] 
**page_color4** | **String** | The hex code for a fourth color, to be used in the same manner as &#x60;pageColor1&#x60;. | [optional] 
**pricing_level** | **String** | The MINDBODY pricing level for the business. Possible values are:  Accelerate - The business is on MINDBODY’s Accelerate pricing tier.  Grow - The business is on MINDBODY’s Essential pricing tier.  Legacy - The business is on an older MINDBODY pricing tier that is no longer offered.  Listing - The business is on an older MINDBODY pricing tier that is no longer offered.  Pro - The business is on an older MINDBODY pricing tier that is no longer offered.  Solo - The business is on an older MINDBODY pricing tier that is no longer offered.  Ultimate - The business is on MINDBODY’s Ultimate pricing tier. | [optional] 
**sms_package_enabled** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the business uses SMS text messages to communicate with its clients.&lt;br /&gt;  When &#x60;false&#x60;, indicates that the business does not use SMS text messages to communicate with its clients. | [optional] 
**tax_inclusive_prices** | **BOOLEAN** | When &#x60;true&#x60;, indicates that the total includes tax.&lt;br /&gt;  When &#x60;false&#x60;, indicates that the total does not include tax. | [optional] 
**currency_iso_code** | **String** | The currency ISO code for the site. | [optional] 
**country_code** | **String** | The country code for the site. | [optional] 
**time_zone** | **String** | The time zone the site is located in. | [optional] 


