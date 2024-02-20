[@sourceloop/bpmn-service](../README.md) / [Exports](../modules.md) / IBPMTask

# Interface: IBPMTask<T, R\>

## Type parameters

| Name |
| :------ |
| `T` |
| `R` |

## Implemented by

- [`BPMTask`](../classes/BPMTask.md)

## Table of contents

### Properties

- [command](IBPMTask.md#command)

### Methods

- [operation](IBPMTask.md#operation)

## Properties

### command

• **command**: [`ICommand`](ICommand.md)

#### Defined in

[services/bpmn-service/src/types/types.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/types.ts#L18)

## Methods

### operation

▸ **operation**(`data?`, `done?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `T` |
| `done?` | (`data`: `R`) => `void` |

#### Returns

`void`

#### Defined in

[services/bpmn-service/src/types/types.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/types.ts#L17)
