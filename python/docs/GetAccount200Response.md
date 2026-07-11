# GetAccount200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**GetAccount200ResponseData**](GetAccount200ResponseData.md) |  | [optional] 

## Example

```python
from dgnlinks_api.models.get_account200_response import GetAccount200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetAccount200Response from a JSON string
get_account200_response_instance = GetAccount200Response.from_json(json)
# print the JSON string representation of the object
print(GetAccount200Response.to_json())

# convert the object into a dict
get_account200_response_dict = get_account200_response_instance.to_dict()
# create an instance of GetAccount200Response from a dict
get_account200_response_from_dict = GetAccount200Response.from_dict(get_account200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


