# ListSkus200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**ListSkus200ResponseData**](ListSkus200ResponseData.md) |  | [optional] 

## Example

```python
from dgnlinks_api.models.list_skus200_response import ListSkus200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ListSkus200Response from a JSON string
list_skus200_response_instance = ListSkus200Response.from_json(json)
# print the JSON string representation of the object
print(ListSkus200Response.to_json())

# convert the object into a dict
list_skus200_response_dict = list_skus200_response_instance.to_dict()
# create an instance of ListSkus200Response from a dict
list_skus200_response_from_dict = ListSkus200Response.from_dict(list_skus200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


