# DeleteVm200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**DeleteVm200ResponseData**](DeleteVm200ResponseData.md) |  | [optional] 

## Example

```python
from dgnlinks_api.models.delete_vm200_response import DeleteVm200Response

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteVm200Response from a JSON string
delete_vm200_response_instance = DeleteVm200Response.from_json(json)
# print the JSON string representation of the object
print(DeleteVm200Response.to_json())

# convert the object into a dict
delete_vm200_response_dict = delete_vm200_response_instance.to_dict()
# create an instance of DeleteVm200Response from a dict
delete_vm200_response_from_dict = DeleteVm200Response.from_dict(delete_vm200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


