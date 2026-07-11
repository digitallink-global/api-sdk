# Vm

VM 聚合视图（console 同源；字段只增不删）

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | 所有 VM 操作端点用的资源 id | [optional] 
**status** | **str** | provisioning/active/suspended/deleting 等 | [optional] 
**hostname** | **str** |  | [optional] 
**zone_code** | **str** |  | [optional] 
**spec_name** | **str** |  | [optional] 
**private_ip** | **str** |  | [optional] 
**public_ip** | **str** |  | [optional] 
**created_at** | **int** | UTC ms | [optional] 

## Example

```python
from dgnlinks_api.models.vm import Vm

# TODO update the JSON string below
json = "{}"
# create an instance of Vm from a JSON string
vm_instance = Vm.from_json(json)
# print the JSON string representation of the object
print(Vm.to_json())

# convert the object into a dict
vm_dict = vm_instance.to_dict()
# create an instance of Vm from a dict
vm_from_dict = Vm.from_dict(vm_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


