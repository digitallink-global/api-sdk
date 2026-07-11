
# CreateVmRequestOrderLinesInner


## Properties

Name | Type
------------ | -------------
`skuVersionId` | string
`quantity` | number
`autoRenew` | boolean
`vmConfiguration` | [CreateVmRequestOrderLinesInnerVmConfiguration](CreateVmRequestOrderLinesInnerVmConfiguration.md)

## Example

```typescript
import type { CreateVmRequestOrderLinesInner } from '@digitallink-global/api-sdk'

// TODO: Update the object below with actual values
const example = {
  "skuVersionId": null,
  "quantity": null,
  "autoRenew": null,
  "vmConfiguration": null,
} satisfies CreateVmRequestOrderLinesInner

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as CreateVmRequestOrderLinesInner
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


