
# Vm

VM 聚合视图（console 同源；字段只增不删）

## Properties

Name | Type
------------ | -------------
`id` | string
`status` | string
`hostname` | string
`zoneCode` | string
`specName` | string
`privateIp` | string
`publicIp` | string
`createdAt` | number

## Example

```typescript
import type { Vm } from '@digitallink-global/api-sdk'

// TODO: Update the object below with actual values
const example = {
  "id": null,
  "status": null,
  "hostname": null,
  "zoneCode": null,
  "specName": null,
  "privateIp": null,
  "publicIp": null,
  "createdAt": null,
} satisfies Vm

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Vm
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


