# CreateVmRequestOrderLinesInnerVmConfigurationAuth

password 或 public_keys 二选一

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method** | **str** |  | [optional] 
**password** | **str** |  | [optional] 
**public_keys** | **List[str]** |  | [optional] 

## Example

```python
from dgnlinks_api.models.create_vm_request_order_lines_inner_vm_configuration_auth import CreateVmRequestOrderLinesInnerVmConfigurationAuth

# TODO update the JSON string below
json = "{}"
# create an instance of CreateVmRequestOrderLinesInnerVmConfigurationAuth from a JSON string
create_vm_request_order_lines_inner_vm_configuration_auth_instance = CreateVmRequestOrderLinesInnerVmConfigurationAuth.from_json(json)
# print the JSON string representation of the object
print(CreateVmRequestOrderLinesInnerVmConfigurationAuth.to_json())

# convert the object into a dict
create_vm_request_order_lines_inner_vm_configuration_auth_dict = create_vm_request_order_lines_inner_vm_configuration_auth_instance.to_dict()
# create an instance of CreateVmRequestOrderLinesInnerVmConfigurationAuth from a dict
create_vm_request_order_lines_inner_vm_configuration_auth_from_dict = CreateVmRequestOrderLinesInnerVmConfigurationAuth.from_dict(create_vm_request_order_lines_inner_vm_configuration_auth_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


