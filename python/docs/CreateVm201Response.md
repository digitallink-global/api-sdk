# CreateVm201Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**VmCreateResult**](VmCreateResult.md) |  | [optional] 

## Example

```python
from dgnlinks_api.models.create_vm201_response import CreateVm201Response

# TODO update the JSON string below
json = "{}"
# create an instance of CreateVm201Response from a JSON string
create_vm201_response_instance = CreateVm201Response.from_json(json)
# print the JSON string representation of the object
print(CreateVm201Response.to_json())

# convert the object into a dict
create_vm201_response_dict = create_vm201_response_instance.to_dict()
# create an instance of CreateVm201Response from a dict
create_vm201_response_from_dict = CreateVm201Response.from_dict(create_vm201_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


