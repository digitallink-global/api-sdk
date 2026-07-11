# dgnlinks_api.AccountApi

All URIs are relative to *https://app.dgnlinks.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account**](AccountApi.md#get_account) | **GET** /account | whoami——回显当前 key 的身份/scope/限额


# **get_account**
> GetAccount200Response get_account()

whoami——回显当前 key 的身份/scope/限额

需要 scope `account:read`。CLI/SDK 冒烟验证用。

### Example

* Bearer Authentication (apiKey):

```python
import dgnlinks_api
from dgnlinks_api.models.get_account200_response import GetAccount200Response
from dgnlinks_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.dgnlinks.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = dgnlinks_api.Configuration(
    host = "https://app.dgnlinks.com/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: apiKey
configuration = dgnlinks_api.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with dgnlinks_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = dgnlinks_api.AccountApi(api_client)

    try:
        # whoami——回显当前 key 的身份/scope/限额
        api_response = api_instance.get_account()
        print("The response of AccountApi->get_account:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccountApi->get_account: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAccount200Response**](GetAccount200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**401** | key 缺失/无效/过期/已吊销/创建者失效 |  -  |
**403** | 缺所需 scope |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

