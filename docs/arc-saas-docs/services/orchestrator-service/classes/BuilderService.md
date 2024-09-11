[@sourceloop/ctrl-plane-orchestrator-service](../README.md) / [Exports](../modules.md) / BuilderService

# Class: BuilderService

## Implements

- [`BuilderServiceInterface`](../interfaces/BuilderServiceInterface.md)

## Table of contents

### Constructors

- [constructor](BuilderService.md#constructor)

### Methods

- [startJob](BuilderService.md#startjob)

## Constructors

### constructor

• **new BuilderService**()

#### Defined in

[services/builder.service.ts:7](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/builder.service.ts#L7)

## Methods

### startJob

▸ **startJob**(`jobName`, `params`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `jobName` | `string` |
| `params` | `AnyObject` |

#### Returns

`Promise`<`void`\>

#### Implementation of

[BuilderServiceInterface](../interfaces/BuilderServiceInterface.md).[startJob](../interfaces/BuilderServiceInterface.md#startjob)

#### Defined in

[services/builder.service.ts:9](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/builder.service.ts#L9)
