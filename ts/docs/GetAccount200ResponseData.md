
# GetAccount200ResponseData


## Properties

Name | Type
------------ | -------------
`organizationId` | string
`userId` | string
`role` | string
`scopes` | Array&lt;string&gt;
`rateLimitPerMin` | number

## Example

```typescript
import type { GetAccount200ResponseData } from '@digitallink-global/api-sdk'

// TODO: Update the object below with actual values
const example = {
  "organizationId": null,
  "userId": null,
  "role": null,
  "scopes": null,
  "rateLimitPerMin": null,
} satisfies GetAccount200ResponseData

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as GetAccount200ResponseData
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


