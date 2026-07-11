
# Zone


## Properties

Name | Type
------------ | -------------
`id` | string
`code` | string
`name` | string
`nameZh` | string
`region` | string
`regionZh` | string
`zoneType` | string
`displayName` | string
`effectiveSellable` | boolean

## Example

```typescript
import type { Zone } from '@digitallink-global/api-sdk'

// TODO: Update the object below with actual values
const example = {
  "id": null,
  "code": null,
  "name": null,
  "nameZh": null,
  "region": null,
  "regionZh": null,
  "zoneType": null,
  "displayName": null,
  "effectiveSellable": null,
} satisfies Zone

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Zone
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


