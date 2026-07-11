# CreateVmRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_lines** | [**List[CreateVmRequestOrderLinesInner]**](CreateVmRequestOrderLinesInner.md) |  | 

## Example

```python
from dgnlinks_api.models.create_vm_request import CreateVmRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateVmRequest from a JSON string
create_vm_request_instance = CreateVmRequest.from_json(json)
# print the JSON string representation of the object
print(CreateVmRequest.to_json())

# convert the object into a dict
create_vm_request_dict = create_vm_request_instance.to_dict()
# create an instance of CreateVmRequest from a dict
create_vm_request_from_dict = CreateVmRequest.from_dict(create_vm_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


