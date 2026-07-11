# VmCreateResult


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_id** | **UUID** |  | [optional] 
**vm_id** | **UUID** | 轮询 GET /vms/{vm_id} | [optional] 
**status** | **str** |  | [optional] 

## Example

```python
from dgnlinks_api.models.vm_create_result import VmCreateResult

# TODO update the JSON string below
json = "{}"
# create an instance of VmCreateResult from a JSON string
vm_create_result_instance = VmCreateResult.from_json(json)
# print the JSON string representation of the object
print(VmCreateResult.to_json())

# convert the object into a dict
vm_create_result_dict = vm_create_result_instance.to_dict()
# create an instance of VmCreateResult from a dict
vm_create_result_from_dict = VmCreateResult.from_dict(vm_create_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


