
# Image


## Properties

Name | Type
------------ | -------------
`code` | string
`os` | string
`version` | string
`displayName` | string
`description` | string

## Example

```typescript
import type { Image } from '@digitallink-global/api-sdk'

// TODO: Update the object below with actual values
const example = {
  "code": debian_12,
  "os": Debian,
  "version": 12,
  "displayName": null,
  "description": null,
} satisfies Image

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Image
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


