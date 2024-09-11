[@sourceloop/ctrl-plane-orchestrator-service](../README.md) / [Exports](../modules.md) / OrchestratorServiceInterface

# Interface: OrchestratorServiceInterface<EventType, BodyType\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `EventType` | extends `string` = [`DefaultEventTypes`](../enums/DefaultEventTypes.md) |
| `BodyType` | extends `AnyObject` = `AnyObject` |

## Implemented by

- [`OrchestratorService`](../classes/OrchestratorService.md)

## Table of contents

### Methods

- [handleEvent](OrchestratorServiceInterface.md#handleevent)

## Methods

### handleEvent

▸ **handleEvent**(`eventType`, `eventBody`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `eventType` | `EventType` |
| `eventBody` | `BodyType` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/types.ts:49](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/types.ts#L49)
