
# CreateVmRequestOrderLinesInnerVmConfiguration


## Properties

Name | Type
------------ | -------------
`zoneId` | string
`imageCode` | string
`hostname` | string
`systemDiskGib` | number
`auth` | [CreateVmRequestOrderLinesInnerVmConfigurationAuth](CreateVmRequestOrderLinesInnerVmConfigurationAuth.md)
`dataDisks` | [Array&lt;CreateVmRequestOrderLinesInnerVmConfigurationDataDisksInner&gt;](CreateVmRequestOrderLinesInnerVmConfigurationDataDisksInner.md)
`eip` | [CreateVmRequestOrderLinesInnerVmConfigurationEip](CreateVmRequestOrderLinesInnerVmConfigurationEip.md)

## Example

```typescript
import type { CreateVmRequestOrderLinesInnerVmConfiguration } from '@digitallink-global/api-sdk'

// TODO: Update the object below with actual values
const example = {
  "zoneId": null,
  "imageCode": debian_12,
  "hostname": null,
  "systemDiskGib": 40,
  "auth": null,
  "dataDisks": null,
  "eip": null,
} satisfies CreateVmRequestOrderLinesInnerVmConfiguration

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as CreateVmRequestOrderLinesInnerVmConfiguration
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


