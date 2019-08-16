# SwaggerClient::AutopaySchedule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**frequency_type** | **String** | Defines how often clients are charged. Possible values are:  * SetNumberOfAutopays  * MonthToMonth | [optional] 
**frequency_value** | **Integer** | The interval of AutoPay frequency, combined with &#x60;FrequencyTimeUnit&#x60;. This value is null if &#x60;FrequencyType&#x60; is &#x60;MonthToMonth&#x60;. | [optional] 
**frequency_time_unit** | **String** | Defines the time unit that sets how often to run the AutoPay, combined with &#x60;FrequencyValue&#x60;. This value is null if &#x60;FrequencyType&#x60; is &#x60;MonthToMonth&#x60;. Possible values are:  * Weekly  * Monthly  * Yearly | [optional] 


