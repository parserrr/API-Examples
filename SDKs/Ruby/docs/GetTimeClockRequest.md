# SwaggerClient::GetTimeClockRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**staff_id** | **Integer** | The staff ID for whom you want to retrieve time card information. If you do not supply a &#x60;StaffId&#x60;, all active staff members return, ordered by staff ID. | [optional] 
**start_date_time** | **DateTime** | The beginning of the date range for the time card information to be returned. If you do not supply a &#x60;StartDateTime&#x60;, data returns for the seven days prior to the &#x60;EndDateTime&#x60; that you supply. The maximum allowed date range is 14 days. | [optional] 
**end_date_time** | **DateTime** | The end of the date range for the time card information to be returned. If you do not supply an &#x60;EndDateTime&#x60;, data returns for the seven days prior to today’s date. Classes that begin before the &#x60;EndDateTime&#x60; are included in the response, regardless of the time that the class ends. The maximum allowed date range is 14 days.&lt;br /&gt;  Default: **Today’s date** | [optional] 
**include_inactive_staff** | **BOOLEAN** | When &#x60;true&#x60;, payroll information returns for both active and inactive staff members.&lt;br /&gt;  Default: **false** | [optional] 
**limit** | **Integer** | Number of results to include, defaults to 100 | [optional] 
**offset** | **Integer** | Page offset, defaults to 0. | [optional] 


