# Zone


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | 即 vm_configuration.zone_id | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**name_zh** | **str** |  | [optional] 
**region** | **str** |  | [optional] 
**region_zh** | **str** |  | [optional] 
**zone_type** | **str** |  | [optional] 
**display_name** | **str** |  | [optional] 
**effective_sellable** | **bool** |  | [optional] 

## Example

```python
from dgnlinks_api.models.zone import Zone

# TODO update the JSON string below
json = "{}"
# create an instance of Zone from a JSON string
zone_instance = Zone.from_json(json)
# print the JSON string representation of the object
print(Zone.to_json())

# convert the object into a dict
zone_dict = zone_instance.to_dict()
# create an instance of Zone from a dict
zone_from_dict = Zone.from_dict(zone_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


