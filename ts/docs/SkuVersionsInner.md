
# SkuVersionsInner


## Properties

Name | Type
------------ | -------------
`id` | string
`billingModel` | string
`billingCycle` | string
`priceNanos` | string

## Example

```typescript
import type { SkuVersionsInner } from '@digitallink-global/api-sdk'

// TODO: Update the object below with actual values
const example = {
  "id": null,
  "billingModel": fixed_cycle,
  "billingCycle": null,
  "priceNanos": null,
} satisfies SkuVersionsInner

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as SkuVersionsInner
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


