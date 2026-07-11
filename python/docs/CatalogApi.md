# dgnlinks_api.CatalogApi

All URIs are relative to *https://app.dgnlinks.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_sku**](CatalogApi.md#get_sku) | **GET** /skus/{code} | 按 code 查单个 SKU
[**list_images**](CatalogApi.md#list_images) | **GET** /images | 列出操作系统镜像
[**list_skus**](CatalogApi.md#list_skus) | **GET** /skus | 列出可购 SKU（含 sku_version_id 与价格）
[**list_zones**](CatalogApi.md#list_zones) | **GET** /zones | 列出可用区


# **get_sku**
> GetSku200Response get_sku(code)

按 code 查单个 SKU

需要 scope `catalog:read`。

### Example

* Bearer Authentication (apiKey):

```python
import dgnlinks_api
from dgnlinks_api.models.get_sku200_response import GetSku200Response
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
    api_instance = dgnlinks_api.CatalogApi(api_client)
    code = 'vm.c1a.x2medium' # str | 

    try:
        # 按 code 查单个 SKU
        api_response = api_instance.get_sku(code)
        print("The response of CatalogApi->get_sku:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CatalogApi->get_sku: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **str**|  | 

### Return type

[**GetSku200Response**](GetSku200Response.md)

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
**404** | 资源不存在或不属于当前组织（不区分，防探测） |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_images**
> ListImages200Response list_images()

列出操作系统镜像

Returns all images, not paginated（非分页全量）。
需要 scope `catalog:read`。`code` 即创建 VM 时 `vm_configuration.image_code` 用的值。


### Example

* Bearer Authentication (apiKey):

```python
import dgnlinks_api
from dgnlinks_api.models.list_images200_response import ListImages200Response
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
    api_instance = dgnlinks_api.CatalogApi(api_client)

    try:
        # 列出操作系统镜像
        api_response = api_instance.list_images()
        print("The response of CatalogApi->list_images:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CatalogApi->list_images: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ListImages200Response**](ListImages200Response.md)

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

# **list_skus**
> ListSkus200Response list_skus(resource_type=resource_type, limit=limit, offset=offset)

列出可购 SKU（含 sku_version_id 与价格）

需要 scope `catalog:read`。分页四字段契约。
`versions[].id` 即创建 VM 时 `order_lines[].sku_version_id` 用的值。
暂不支持按可用区过滤——请结合 `GET /zones` 的 `effective_sellable` 自行判断。


### Example

* Bearer Authentication (apiKey):

```python
import dgnlinks_api
from dgnlinks_api.models.list_skus200_response import ListSkus200Response
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
    api_instance = dgnlinks_api.CatalogApi(api_client)
    resource_type = 'resource_type_example' # str | 按资源类型过滤 (optional)
    limit = 20 # int |  (optional) (default to 20)
    offset = 0 # int |  (optional) (default to 0)

    try:
        # 列出可购 SKU（含 sku_version_id 与价格）
        api_response = api_instance.list_skus(resource_type=resource_type, limit=limit, offset=offset)
        print("The response of CatalogApi->list_skus:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CatalogApi->list_skus: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_type** | **str**| 按资源类型过滤 | [optional] 
 **limit** | **int**|  | [optional] [default to 20]
 **offset** | **int**|  | [optional] [default to 0]

### Return type

[**ListSkus200Response**](ListSkus200Response.md)

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

# **list_zones**
> ListZones200Response list_zones()

列出可用区

Returns all zones, not paginated（非分页全量，数据量小）。
需要 scope `catalog:read`。`id` 即创建 VM 时 `vm_configuration.zone_id` 用的值；
`effective_sellable=false` 的可用区暂不可下单。


### Example

* Bearer Authentication (apiKey):

```python
import dgnlinks_api
from dgnlinks_api.models.list_zones200_response import ListZones200Response
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
    api_instance = dgnlinks_api.CatalogApi(api_client)

    try:
        # 列出可用区
        api_response = api_instance.list_zones()
        print("The response of CatalogApi->list_zones:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CatalogApi->list_zones: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ListZones200Response**](ListZones200Response.md)

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

