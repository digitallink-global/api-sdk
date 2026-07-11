# ListZones200ResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**items** | [**List[Zone]**](Zone.md) |  | [optional] 
**total** | **int** |  | [optional] 

## Example

```python
from dgnlinks_api.models.list_zones200_response_data import ListZones200ResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of ListZones200ResponseData from a JSON string
list_zones200_response_data_instance = ListZones200ResponseData.from_json(json)
# print the JSON string representation of the object
print(ListZones200ResponseData.to_json())

# convert the object into a dict
list_zones200_response_data_dict = list_zones200_response_data_instance.to_dict()
# create an instance of ListZones200ResponseData from a dict
list_zones200_response_data_from_dict = ListZones200ResponseData.from_dict(list_zones200_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


