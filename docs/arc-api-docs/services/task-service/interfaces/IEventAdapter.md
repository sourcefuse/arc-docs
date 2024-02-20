[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / IEventAdapter

# Interface: IEventAdapter<T, Event, R\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `T` |
| `Event` | `Event` |
| `R` | `Event` |

## Table of contents

### Methods

- [adaptFrom](IEventAdapter.md#adaptfrom)
- [adaptTo](IEventAdapter.md#adaptto)

## Methods

### adaptFrom

▸ **adaptFrom**(`event`): `Promise`<`R`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `event` | `Event` |

#### Returns

`Promise`<`R`\>

#### Defined in

[services/task-service/src/interfaces/i-event-adapter.ts:3](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/interfaces/i-event-adapter.ts#L3)

___

### adaptTo

▸ **adaptTo**(`event`): `Promise`<`Event`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `event` | `T` |

#### Returns

`Promise`<`Event`\>

#### Defined in

[services/task-service/src/interfaces/i-event-adapter.ts:2](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/interfaces/i-event-adapter.ts#L2)
