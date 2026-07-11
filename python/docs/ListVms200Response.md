# ListVms200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**ListVms200ResponseData**](ListVms200ResponseData.md) |  | [optional] 

## Example

```python
from dgnlinks_api.models.list_vms200_response import ListVms200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ListVms200Response from a JSON string
list_vms200_response_instance = ListVms200Response.from_json(json)
# print the JSON string representation of the object
print(ListVms200Response.to_json())

# convert the object into a dict
list_vms200_response_dict = list_vms200_response_instance.to_dict()
# create an instance of ListVms200Response from a dict
list_vms200_response_from_dict = ListVms200Response.from_dict(list_vms200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


