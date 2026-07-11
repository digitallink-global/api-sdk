# GetVm200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Vm**](Vm.md) |  | [optional] 

## Example

```python
from dgnlinks_api.models.get_vm200_response import GetVm200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetVm200Response from a JSON string
get_vm200_response_instance = GetVm200Response.from_json(json)
# print the JSON string representation of the object
print(GetVm200Response.to_json())

# convert the object into a dict
get_vm200_response_dict = get_vm200_response_instance.to_dict()
# create an instance of GetVm200Response from a dict
get_vm200_response_from_dict = GetVm200Response.from_dict(get_vm200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


