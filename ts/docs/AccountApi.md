# AccountApi

All URIs are relative to *https://app.dgnlinks.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getAccount**](AccountApi.md#getaccount) | **GET** /account | whoami——回显当前 key 的身份/scope/限额 |



## getAccount

> GetAccount200Response getAccount()

whoami——回显当前 key 的身份/scope/限额

需要 scope &#x60;account:read&#x60;。CLI/SDK 冒烟验证用。

### Example

```ts
import {
  Configuration,
  AccountApi,
} from '@digitallink-global/api-sdk';
import type { GetAccountRequest } from '@digitallink-global/api-sdk';

async function example() {
  console.log("🚀 Testing @digitallink-global/api-sdk SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: apiKey
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new AccountApi(config);

  try {
    const data = await api.getAccount();
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

[**GetAccount200Response**](GetAccount200Response.md)

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

