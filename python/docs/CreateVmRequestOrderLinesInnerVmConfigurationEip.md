# CreateVmRequestOrderLinesInnerVmConfigurationEip


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional] 
**bandwidth_mbps** | **int** |  | [optional] 
**network_type** | **str** |  | [optional] 

## Example

```python
from dgnlinks_api.models.create_vm_request_order_lines_inner_vm_configuration_eip import CreateVmRequestOrderLinesInnerVmConfigurationEip

# TODO update the JSON string below
json = "{}"
# create an instance of CreateVmRequestOrderLinesInnerVmConfigurationEip from a JSON string
create_vm_request_order_lines_inner_vm_configuration_eip_instance = CreateVmRequestOrderLinesInnerVmConfigurationEip.from_json(json)
# print the JSON string representation of the object
print(CreateVmRequestOrderLinesInnerVmConfigurationEip.to_json())

# convert the object into a dict
create_vm_request_order_lines_inner_vm_configuration_eip_dict = create_vm_request_order_lines_inner_vm_configuration_eip_instance.to_dict()
# create an instance of CreateVmRequestOrderLinesInnerVmConfigurationEip from a dict
create_vm_request_order_lines_inner_vm_configuration_eip_from_dict = CreateVmRequestOrderLinesInnerVmConfigurationEip.from_dict(create_vm_request_order_lines_inner_vm_configuration_eip_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


