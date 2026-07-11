# dgnlinks_api.VMsApi

All URIs are relative to *https://app.dgnlinks.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_vm**](VMsApi.md#create_vm) | **POST** /vms | 创建 VM（下单 + 立即钱包扣款 + 开始交付）
[**delete_vm**](VMsApi.md#delete_vm) | **DELETE** /vms/{id} | 销毁 VM（按本周期剩余比例退款）
[**get_vm**](VMsApi.md#get_vm) | **GET** /vms/{id} | VM 详情
[**list_vms**](VMsApi.md#list_vms) | **GET** /vms | 列出 VM
[**restart_vm**](VMsApi.md#restart_vm) | **POST** /vms/{id}/restart | 重启
[**start_vm**](VMsApi.md#start_vm) | **POST** /vms/{id}/start | 开机
[**stop_vm**](VMsApi.md#stop_vm) | **POST** /vms/{id}/stop | 关机


# **create_vm**
> CreateVm201Response create_vm(idempotency_key, create_vm_request)

创建 VM（下单 + 立即钱包扣款 + 开始交付）

需要 scope `vm:write`。**一次调用直接从钱包扣款**并开始交付；
`Idempotency-Key` 必填——同 key 重试幂等回放（200），不会二次扣款。
余额不足返 422 `insufficient_balance`（订单保留，可充值后在控制台支付）。
返回后轮询 `GET /vms/{id}` 直到 `status=active`。


### Example

* Bearer Authentication (apiKey):

```python
import dgnlinks_api
from dgnlinks_api.models.create_vm201_response import CreateVm201Response
from dgnlinks_api.models.create_vm_request import CreateVmRequest
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
    api_instance = dgnlinks_api.VMsApi(api_client)
    idempotency_key = 'idempotency_key_example' # str | 
    create_vm_request = dgnlinks_api.CreateVmRequest() # CreateVmRequest | 

    try:
        # 创建 VM（下单 + 立即钱包扣款 + 开始交付）
        api_response = api_instance.create_vm(idempotency_key, create_vm_request)
        print("The response of VMsApi->create_vm:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VMsApi->create_vm: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idempotency_key** | **str**|  | 
 **create_vm_request** | [**CreateVmRequest**](CreateVmRequest.md)|  | 

### Return type

[**CreateVm201Response**](CreateVm201Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | 已扣款并开始交付 |  -  |
**200** | 幂等重放（同 Idempotency-Key 已成功处理过） |  -  |
**400** | 参数错误 / 缺 Idempotency-Key |  -  |
**401** | key 缺失/无效/过期/已吊销/创建者失效 |  -  |
**403** | 缺所需 scope |  -  |
**422** | 余额不足（insufficient_balance）或支付失败（payment_failed） |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_vm**
> DeleteVm200Response delete_vm(id, release_eip=release_eip)

销毁 VM（按本周期剩余比例退款）

需要 scope `vm:write`。异步销毁，返回 task_ids 供追踪。
`release_eip=true`（默认）一并释放绑定的 EIP。


### Example

* Bearer Authentication (apiKey):

```python
import dgnlinks_api
from dgnlinks_api.models.delete_vm200_response import DeleteVm200Response
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
    api_instance = dgnlinks_api.VMsApi(api_client)
    id = UUID('38400000-8cf0-11bd-b23e-10b96e4ef00d') # UUID | 
    release_eip = True # bool |  (optional) (default to True)

    try:
        # 销毁 VM（按本周期剩余比例退款）
        api_response = api_instance.delete_vm(id, release_eip=release_eip)
        print("The response of VMsApi->delete_vm:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VMsApi->delete_vm: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID**|  | 
 **release_eip** | **bool**|  | [optional] [default to True]

### Return type

[**DeleteVm200Response**](DeleteVm200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | 已受理（异步），按 task_ids 追踪或轮询 VM 详情 |  -  |
**401** | key 缺失/无效/过期/已吊销/创建者失效 |  -  |
**403** | 缺所需 scope |  -  |
**404** | 资源不存在或不属于当前组织（不区分，防探测） |  -  |
**409** | VM 处于过渡态（provisioning/deleting 等）暂不可操作 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_vm**
> GetVm200Response get_vm(id)

VM 详情

需要 scope `vm:read`。含实时状态/IP/关联盘与 EIP。

### Example

* Bearer Authentication (apiKey):

```python
import dgnlinks_api
from dgnlinks_api.models.get_vm200_response import GetVm200Response
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
    api_instance = dgnlinks_api.VMsApi(api_client)
    id = UUID('38400000-8cf0-11bd-b23e-10b96e4ef00d') # UUID | 

    try:
        # VM 详情
        api_response = api_instance.get_vm(id)
        print("The response of VMsApi->get_vm:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VMsApi->get_vm: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID**|  | 

### Return type

[**GetVm200Response**](GetVm200Response.md)

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

# **list_vms**
> ListVms200Response list_vms(limit=limit, offset=offset)

列出 VM

需要 scope `vm:read`。分页四字段契约。

### Example

* Bearer Authentication (apiKey):

```python
import dgnlinks_api
from dgnlinks_api.models.list_vms200_response import ListVms200Response
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
    api_instance = dgnlinks_api.VMsApi(api_client)
    limit = 20 # int |  (optional) (default to 20)
    offset = 0 # int |  (optional) (default to 0)

    try:
        # 列出 VM
        api_response = api_instance.list_vms(limit=limit, offset=offset)
        print("The response of VMsApi->list_vms:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VMsApi->list_vms: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] [default to 20]
 **offset** | **int**|  | [optional] [default to 0]

### Return type

[**ListVms200Response**](ListVms200Response.md)

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

# **restart_vm**
> DeleteVm200Response restart_vm(id)

重启

### Example

* Bearer Authentication (apiKey):

```python
import dgnlinks_api
from dgnlinks_api.models.delete_vm200_response import DeleteVm200Response
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
    api_instance = dgnlinks_api.VMsApi(api_client)
    id = UUID('38400000-8cf0-11bd-b23e-10b96e4ef00d') # UUID | 

    try:
        # 重启
        api_response = api_instance.restart_vm(id)
        print("The response of VMsApi->restart_vm:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VMsApi->restart_vm: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID**|  | 

### Return type

[**DeleteVm200Response**](DeleteVm200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | 已受理（异步），按 task_ids 追踪或轮询 VM 详情 |  -  |
**401** | key 缺失/无效/过期/已吊销/创建者失效 |  -  |
**403** | 缺所需 scope |  -  |
**404** | 资源不存在或不属于当前组织（不区分，防探测） |  -  |
**409** | VM 处于过渡态（provisioning/deleting 等）暂不可操作 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **start_vm**
> DeleteVm200Response start_vm(id)

开机

### Example

* Bearer Authentication (apiKey):

```python
import dgnlinks_api
from dgnlinks_api.models.delete_vm200_response import DeleteVm200Response
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
    api_instance = dgnlinks_api.VMsApi(api_client)
    id = UUID('38400000-8cf0-11bd-b23e-10b96e4ef00d') # UUID | 

    try:
        # 开机
        api_response = api_instance.start_vm(id)
        print("The response of VMsApi->start_vm:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VMsApi->start_vm: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID**|  | 

### Return type

[**DeleteVm200Response**](DeleteVm200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | 已受理（异步），按 task_ids 追踪或轮询 VM 详情 |  -  |
**401** | key 缺失/无效/过期/已吊销/创建者失效 |  -  |
**403** | 缺所需 scope |  -  |
**404** | 资源不存在或不属于当前组织（不区分，防探测） |  -  |
**409** | VM 处于过渡态（provisioning/deleting 等）暂不可操作 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stop_vm**
> DeleteVm200Response stop_vm(id)

关机

### Example

* Bearer Authentication (apiKey):

```python
import dgnlinks_api
from dgnlinks_api.models.delete_vm200_response import DeleteVm200Response
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
    api_instance = dgnlinks_api.VMsApi(api_client)
    id = UUID('38400000-8cf0-11bd-b23e-10b96e4ef00d') # UUID | 

    try:
        # 关机
        api_response = api_instance.stop_vm(id)
        print("The response of VMsApi->stop_vm:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VMsApi->stop_vm: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID**|  | 

### Return type

[**DeleteVm200Response**](DeleteVm200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | 已受理（异步），按 task_ids 追踪或轮询 VM 详情 |  -  |
**401** | key 缺失/无效/过期/已吊销/创建者失效 |  -  |
**403** | 缺所需 scope |  -  |
**404** | 资源不存在或不属于当前组织（不区分，防探测） |  -  |
**409** | VM 处于过渡态（provisioning/deleting 等）暂不可操作 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

