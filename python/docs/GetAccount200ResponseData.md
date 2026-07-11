# GetAccount200ResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**organization_id** | **UUID** |  | [optional] 
**user_id** | **UUID** | key 创建者 | [optional] 
**role** | **str** |  | [optional] 
**scopes** | **List[str]** |  | [optional] 
**rate_limit_per_min** | **int** |  | [optional] 

## Example

```python
from dgnlinks_api.models.get_account200_response_data import GetAccount200ResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of GetAccount200ResponseData from a JSON string
get_account200_response_data_instance = GetAccount200ResponseData.from_json(json)
# print the JSON string representation of the object
print(GetAccount200ResponseData.to_json())

# convert the object into a dict
get_account200_response_data_dict = get_account200_response_data_instance.to_dict()
# create an instance of GetAccount200ResponseData from a dict
get_account200_response_data_from_dict = GetAccount200ResponseData.from_dict(get_account200_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


