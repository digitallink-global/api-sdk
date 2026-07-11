# ListVms200ResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**items** | [**List[Vm]**](Vm.md) |  | [optional] 
**total** | **int** |  | [optional] 
**limit** | **int** |  | [optional] 
**offset** | **int** |  | [optional] 

## Example

```python
from dgnlinks_api.models.list_vms200_response_data import ListVms200ResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of ListVms200ResponseData from a JSON string
list_vms200_response_data_instance = ListVms200ResponseData.from_json(json)
# print the JSON string representation of the object
print(ListVms200ResponseData.to_json())

# convert the object into a dict
list_vms200_response_data_dict = list_vms200_response_data_instance.to_dict()
# create an instance of ListVms200ResponseData from a dict
list_vms200_response_data_from_dict = ListVms200ResponseData.from_dict(list_vms200_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


