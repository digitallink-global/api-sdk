# CreateVmRequestOrderLinesInnerVmConfiguration


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**zone_id** | **UUID** |  | 
**image_code** | **str** |  | 
**hostname** | **str** |  | [optional] 
**system_disk_gib** | **int** |  | [optional] 
**auth** | [**CreateVmRequestOrderLinesInnerVmConfigurationAuth**](CreateVmRequestOrderLinesInnerVmConfigurationAuth.md) |  | 
**data_disks** | [**List[CreateVmRequestOrderLinesInnerVmConfigurationDataDisksInner]**](CreateVmRequestOrderLinesInnerVmConfigurationDataDisksInner.md) |  | [optional] 
**eip** | [**CreateVmRequestOrderLinesInnerVmConfigurationEip**](CreateVmRequestOrderLinesInnerVmConfigurationEip.md) |  | [optional] 

## Example

```python
from dgnlinks_api.models.create_vm_request_order_lines_inner_vm_configuration import CreateVmRequestOrderLinesInnerVmConfiguration

# TODO update the JSON string below
json = "{}"
# create an instance of CreateVmRequestOrderLinesInnerVmConfiguration from a JSON string
create_vm_request_order_lines_inner_vm_configuration_instance = CreateVmRequestOrderLinesInnerVmConfiguration.from_json(json)
# print the JSON string representation of the object
print(CreateVmRequestOrderLinesInnerVmConfiguration.to_json())

# convert the object into a dict
create_vm_request_order_lines_inner_vm_configuration_dict = create_vm_request_order_lines_inner_vm_configuration_instance.to_dict()
# create an instance of CreateVmRequestOrderLinesInnerVmConfiguration from a dict
create_vm_request_order_lines_inner_vm_configuration_from_dict = CreateVmRequestOrderLinesInnerVmConfiguration.from_dict(create_vm_request_order_lines_inner_vm_configuration_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


