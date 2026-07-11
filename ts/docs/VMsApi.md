# VMsApi

All URIs are relative to *https://app.dgnlinks.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createVm**](VMsApi.md#createvmoperation) | **POST** /vms | 创建 VM（下单 + 立即钱包扣款 + 开始交付） |
| [**deleteVm**](VMsApi.md#deletevm) | **DELETE** /vms/{id} | 销毁 VM（按本周期剩余比例退款） |
| [**getVm**](VMsApi.md#getvm) | **GET** /vms/{id} | VM 详情 |
| [**listVms**](VMsApi.md#listvms) | **GET** /vms | 列出 VM |
| [**restartVm**](VMsApi.md#restartvm) | **POST** /vms/{id}/restart | 重启 |
| [**startVm**](VMsApi.md#startvm) | **POST** /vms/{id}/start | 开机 |
| [**stopVm**](VMsApi.md#stopvm) | **POST** /vms/{id}/stop | 关机 |



## createVm

> CreateVm201Response createVm(idempotencyKey, createVmRequest)

创建 VM（下单 + 立即钱包扣款 + 开始交付）

需要 scope &#x60;vm:write&#x60;。**一次调用直接从钱包扣款**并开始交付； &#x60;Idempotency-Key&#x60; 必填——同 key 重试幂等回放（200），不会二次扣款。 余额不足返 422 &#x60;insufficient_balance&#x60;（订单保留，可充值后在控制台支付）。 返回后轮询 &#x60;GET /vms/{id}&#x60; 直到 &#x60;status&#x3D;active&#x60;。 

### Example

```ts
import {
  Configuration,
  VMsApi,
} from '@digitallink-global/api-sdk';
import type { CreateVmOperationRequest } from '@digitallink-global/api-sdk';

async function example() {
  console.log("🚀 Testing @digitallink-global/api-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: apiKey
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new VMsApi(config);

  const body = {
    // string
    idempotencyKey: idempotencyKey_example,
    // CreateVmRequest
    createVmRequest: ...,
  } satisfies CreateVmOperationRequest;

  try {
    const data = await api.createVm(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **idempotencyKey** | `string` |  | [Defaults to `undefined`] |
| **createVmRequest** | [CreateVmRequest](CreateVmRequest.md) |  | |

### Return type

[**CreateVm201Response**](CreateVm201Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | 已扣款并开始交付 |  -  |
| **200** | 幂等重放（同 Idempotency-Key 已成功处理过） |  -  |
| **400** | 参数错误 / 缺 Idempotency-Key |  -  |
| **401** | key 缺失/无效/过期/已吊销/创建者失效 |  -  |
| **403** | 缺所需 scope |  -  |
| **422** | 余额不足（insufficient_balance）或支付失败（payment_failed） |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## deleteVm

> DeleteVm200Response deleteVm(id, releaseEip)

销毁 VM（按本周期剩余比例退款）

需要 scope &#x60;vm:write&#x60;。异步销毁，返回 task_ids 供追踪。 &#x60;release_eip&#x3D;true&#x60;（默认）一并释放绑定的 EIP。 

### Example

```ts
import {
  Configuration,
  VMsApi,
} from '@digitallink-global/api-sdk';
import type { DeleteVmRequest } from '@digitallink-global/api-sdk';

async function example() {
  console.log("🚀 Testing @digitallink-global/api-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: apiKey
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new VMsApi(config);

  const body = {
    // string
    id: 38400000-8cf0-11bd-b23e-10b96e4ef00d,
    // boolean (optional)
    releaseEip: true,
  } satisfies DeleteVmRequest;

  try {
    const data = await api.deleteVm(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | `string` |  | [Defaults to `undefined`] |
| **releaseEip** | `boolean` |  | [Optional] [Defaults to `true`] |

### Return type

[**DeleteVm200Response**](DeleteVm200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | 已受理（异步），按 task_ids 追踪或轮询 VM 详情 |  -  |
| **401** | key 缺失/无效/过期/已吊销/创建者失效 |  -  |
| **403** | 缺所需 scope |  -  |
| **404** | 资源不存在或不属于当前组织（不区分，防探测） |  -  |
| **409** | VM 处于过渡态（provisioning/deleting 等）暂不可操作 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getVm

> GetVm200Response getVm(id)

VM 详情

需要 scope &#x60;vm:read&#x60;。含实时状态/IP/关联盘与 EIP。

### Example

```ts
import {
  Configuration,
  VMsApi,
} from '@digitallink-global/api-sdk';
import type { GetVmRequest } from '@digitallink-global/api-sdk';

async function example() {
  console.log("🚀 Testing @digitallink-global/api-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: apiKey
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new VMsApi(config);

  const body = {
    // string
    id: 38400000-8cf0-11bd-b23e-10b96e4ef00d,
  } satisfies GetVmRequest;

  try {
    const data = await api.getVm(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | `string` |  | [Defaults to `undefined`] |

### Return type

[**GetVm200Response**](GetVm200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **401** | key 缺失/无效/过期/已吊销/创建者失效 |  -  |
| **403** | 缺所需 scope |  -  |
| **404** | 资源不存在或不属于当前组织（不区分，防探测） |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## listVms

> ListVms200Response listVms(limit, offset)

列出 VM

需要 scope &#x60;vm:read&#x60;。分页四字段契约。

### Example

```ts
import {
  Configuration,
  VMsApi,
} from '@digitallink-global/api-sdk';
import type { ListVmsRequest } from '@digitallink-global/api-sdk';

async function example() {
  console.log("🚀 Testing @digitallink-global/api-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: apiKey
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new VMsApi(config);

  const body = {
    // number (optional)
    limit: 56,
    // number (optional)
    offset: 56,
  } satisfies ListVmsRequest;

  try {
    const data = await api.listVms(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **limit** | `number` |  | [Optional] [Defaults to `20`] |
| **offset** | `number` |  | [Optional] [Defaults to `0`] |

### Return type

[**ListVms200Response**](ListVms200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **401** | key 缺失/无效/过期/已吊销/创建者失效 |  -  |
| **403** | 缺所需 scope |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## restartVm

> DeleteVm200Response restartVm(id)

重启

### Example

```ts
import {
  Configuration,
  VMsApi,
} from '@digitallink-global/api-sdk';
import type { RestartVmRequest } from '@digitallink-global/api-sdk';

async function example() {
  console.log("🚀 Testing @digitallink-global/api-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: apiKey
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new VMsApi(config);

  const body = {
    // string
    id: 38400000-8cf0-11bd-b23e-10b96e4ef00d,
  } satisfies RestartVmRequest;

  try {
    const data = await api.restartVm(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | `string` |  | [Defaults to `undefined`] |

### Return type

[**DeleteVm200Response**](DeleteVm200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | 已受理（异步），按 task_ids 追踪或轮询 VM 详情 |  -  |
| **401** | key 缺失/无效/过期/已吊销/创建者失效 |  -  |
| **403** | 缺所需 scope |  -  |
| **404** | 资源不存在或不属于当前组织（不区分，防探测） |  -  |
| **409** | VM 处于过渡态（provisioning/deleting 等）暂不可操作 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## startVm

> DeleteVm200Response startVm(id)

开机

### Example

```ts
import {
  Configuration,
  VMsApi,
} from '@digitallink-global/api-sdk';
import type { StartVmRequest } from '@digitallink-global/api-sdk';

async function example() {
  console.log("🚀 Testing @digitallink-global/api-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: apiKey
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new VMsApi(config);

  const body = {
    // string
    id: 38400000-8cf0-11bd-b23e-10b96e4ef00d,
  } satisfies StartVmRequest;

  try {
    const data = await api.startVm(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | `string` |  | [Defaults to `undefined`] |

### Return type

[**DeleteVm200Response**](DeleteVm200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | 已受理（异步），按 task_ids 追踪或轮询 VM 详情 |  -  |
| **401** | key 缺失/无效/过期/已吊销/创建者失效 |  -  |
| **403** | 缺所需 scope |  -  |
| **404** | 资源不存在或不属于当前组织（不区分，防探测） |  -  |
| **409** | VM 处于过渡态（provisioning/deleting 等）暂不可操作 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## stopVm

> DeleteVm200Response stopVm(id)

关机

### Example

```ts
import {
  Configuration,
  VMsApi,
} from '@digitallink-global/api-sdk';
import type { StopVmRequest } from '@digitallink-global/api-sdk';

async function example() {
  console.log("🚀 Testing @digitallink-global/api-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: apiKey
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new VMsApi(config);

  const body = {
    // string
    id: 38400000-8cf0-11bd-b23e-10b96e4ef00d,
  } satisfies StopVmRequest;

  try {
    const data = await api.stopVm(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | `string` |  | [Defaults to `undefined`] |

### Return type

[**DeleteVm200Response**](DeleteVm200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | 已受理（异步），按 task_ids 追踪或轮询 VM 详情 |  -  |
| **401** | key 缺失/无效/过期/已吊销/创建者失效 |  -  |
| **403** | 缺所需 scope |  -  |
| **404** | 资源不存在或不属于当前组织（不区分，防探测） |  -  |
| **409** | VM 处于过渡态（provisioning/deleting 等）暂不可操作 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

