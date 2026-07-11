
# Sku

可购商品（enabled 状态；含已发布计费版本）

## Properties

Name | Type
------------ | -------------
`id` | string
`code` | string
`resourceType` | string
`displayName` | string
`description` | string
`versions` | [Array&lt;SkuVersionsInner&gt;](SkuVersionsInner.md)

## Example

```typescript
import type { Sku } from '@digitallink-global/api-sdk'

// TODO: Update the object below with actual values
const example = {
  "id": null,
  "code": vm.c1a.x2medium,
  "resourceType": null,
  "displayName": null,
  "description": null,
  "versions": null,
} satisfies Sku

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Sku
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


