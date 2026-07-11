# CatalogApi

All URIs are relative to *https://app.dgnlinks.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getSku**](CatalogApi.md#getsku) | **GET** /skus/{code} | 按 code 查单个 SKU |
| [**listImages**](CatalogApi.md#listimages) | **GET** /images | 列出操作系统镜像 |
| [**listSkus**](CatalogApi.md#listskus) | **GET** /skus | 列出可购 SKU（含 sku_version_id 与价格） |
| [**listZones**](CatalogApi.md#listzones) | **GET** /zones | 列出可用区 |



## getSku

> GetSku200Response getSku(code)

按 code 查单个 SKU

需要 scope &#x60;catalog:read&#x60;。

### Example

```ts
import {
  Configuration,
  CatalogApi,
} from '@digitallink-global/api-sdk';
import type { GetSkuRequest } from '@digitallink-global/api-sdk';

async function example() {
  console.log("🚀 Testing @digitallink-global/api-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: apiKey
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CatalogApi(config);

  const body = {
    // string
    code: vm.c1a.x2medium,
  } satisfies GetSkuRequest;

  try {
    const data = await api.getSku(body);
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
| **code** | `string` |  | [Defaults to `undefined`] |

### Return type

[**GetSku200Response**](GetSku200Response.md)

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


## listImages

> ListImages200Response listImages()

列出操作系统镜像

Returns all images, not paginated（非分页全量）。 需要 scope &#x60;catalog:read&#x60;。&#x60;code&#x60; 即创建 VM 时 &#x60;vm_configuration.image_code&#x60; 用的值。 

### Example

```ts
import {
  Configuration,
  CatalogApi,
} from '@digitallink-global/api-sdk';
import type { ListImagesRequest } from '@digitallink-global/api-sdk';

async function example() {
  console.log("🚀 Testing @digitallink-global/api-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: apiKey
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CatalogApi(config);

  try {
    const data = await api.listImages();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListImages200Response**](ListImages200Response.md)

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


## listSkus

> ListSkus200Response listSkus(resourceType, limit, offset)

列出可购 SKU（含 sku_version_id 与价格）

需要 scope &#x60;catalog:read&#x60;。分页四字段契约。 &#x60;versions[].id&#x60; 即创建 VM 时 &#x60;order_lines[].sku_version_id&#x60; 用的值。 暂不支持按可用区过滤——请结合 &#x60;GET /zones&#x60; 的 &#x60;effective_sellable&#x60; 自行判断。 

### Example

```ts
import {
  Configuration,
  CatalogApi,
} from '@digitallink-global/api-sdk';
import type { ListSkusRequest } from '@digitallink-global/api-sdk';

async function example() {
  console.log("🚀 Testing @digitallink-global/api-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: apiKey
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CatalogApi(config);

  const body = {
    // 'vm_bundle' | 'disk' | 'eip' | 按资源类型过滤 (optional)
    resourceType: resourceType_example,
    // number (optional)
    limit: 56,
    // number (optional)
    offset: 56,
  } satisfies ListSkusRequest;

  try {
    const data = await api.listSkus(body);
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
| **resourceType** | `vm_bundle`, `disk`, `eip` | 按资源类型过滤 | [Optional] [Defaults to `undefined`] [Enum: vm_bundle, disk, eip] |
| **limit** | `number` |  | [Optional] [Defaults to `20`] |
| **offset** | `number` |  | [Optional] [Defaults to `0`] |

### Return type

[**ListSkus200Response**](ListSkus200Response.md)

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


## listZones

> ListZones200Response listZones()

列出可用区

Returns all zones, not paginated（非分页全量，数据量小）。 需要 scope &#x60;catalog:read&#x60;。&#x60;id&#x60; 即创建 VM 时 &#x60;vm_configuration.zone_id&#x60; 用的值； &#x60;effective_sellable&#x3D;false&#x60; 的可用区暂不可下单。 

### Example

```ts
import {
  Configuration,
  CatalogApi,
} from '@digitallink-global/api-sdk';
import type { ListZonesRequest } from '@digitallink-global/api-sdk';

async function example() {
  console.log("🚀 Testing @digitallink-global/api-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: apiKey
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CatalogApi(config);

  try {
    const data = await api.listZones();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListZones200Response**](ListZones200Response.md)

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

