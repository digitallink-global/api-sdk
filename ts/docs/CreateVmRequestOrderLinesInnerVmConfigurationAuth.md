
# CreateVmRequestOrderLinesInnerVmConfigurationAuth

password 或 public_keys 二选一

## Properties

Name | Type
------------ | -------------
`method` | string
`password` | string
`publicKeys` | Array&lt;string&gt;

## Example

```typescript
import type { CreateVmRequestOrderLinesInnerVmConfigurationAuth } from '@digitallink-global/api-sdk'

// TODO: Update the object below with actual values
const example = {
  "method": null,
  "password": null,
  "publicKeys": null,
} satisfies CreateVmRequestOrderLinesInnerVmConfigurationAuth

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as CreateVmRequestOrderLinesInnerVmConfigurationAuth
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


