# CreateVmRequestOrderLinesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sku_version_id** | **UUID** | 已发布的 VM SKU version id | 
**quantity** | **int** |  | 
**auto_renew** | **bool** |  | [optional] [default to False]
**vm_configuration** | [**CreateVmRequestOrderLinesInnerVmConfiguration**](CreateVmRequestOrderLinesInnerVmConfiguration.md) |  | 

## Example

```python
from dgnlinks_api.models.create_vm_request_order_lines_inner import CreateVmRequestOrderLinesInner

# TODO update the JSON string below
json = "{}"
# create an instance of CreateVmRequestOrderLinesInner from a JSON string
create_vm_request_order_lines_inner_instance = CreateVmRequestOrderLinesInner.from_json(json)
# print the JSON string representation of the object
print(CreateVmRequestOrderLinesInner.to_json())

# convert the object into a dict
create_vm_request_order_lines_inner_dict = create_vm_request_order_lines_inner_instance.to_dict()
# create an instance of CreateVmRequestOrderLinesInner from a dict
create_vm_request_order_lines_inner_from_dict = CreateVmRequestOrderLinesInner.from_dict(create_vm_request_order_lines_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


