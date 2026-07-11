# GetSku200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Sku**](Sku.md) |  | [optional] 

## Example

```python
from dgnlinks_api.models.get_sku200_response import GetSku200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetSku200Response from a JSON string
get_sku200_response_instance = GetSku200Response.from_json(json)
# print the JSON string representation of the object
print(GetSku200Response.to_json())

# convert the object into a dict
get_sku200_response_dict = get_sku200_response_instance.to_dict()
# create an instance of GetSku200Response from a dict
get_sku200_response_from_dict = GetSku200Response.from_dict(get_sku200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


