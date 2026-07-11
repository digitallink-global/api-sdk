# SkuVersionsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | 即 sku_version_id | [optional] 
**billing_model** | **str** |  | [optional] 
**billing_cycle** | **str** |  | [optional] 
**price_nanos** | **str** | 字符串 nanos（10⁻⁹ 美元） | [optional] 

## Example

```python
from dgnlinks_api.models.sku_versions_inner import SkuVersionsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SkuVersionsInner from a JSON string
sku_versions_inner_instance = SkuVersionsInner.from_json(json)
# print the JSON string representation of the object
print(SkuVersionsInner.to_json())

# convert the object into a dict
sku_versions_inner_dict = sku_versions_inner_instance.to_dict()
# create an instance of SkuVersionsInner from a dict
sku_versions_inner_from_dict = SkuVersionsInner.from_dict(sku_versions_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


