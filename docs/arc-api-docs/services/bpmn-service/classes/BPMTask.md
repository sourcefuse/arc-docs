[@sourceloop/bpmn-service](../README.md) / [Exports](../modules.md) / BPMTask

# Class: BPMTask<T, R\>

## Type parameters

| Name |
| :------ |
| `T` |
| `R` |

## Implements

- [`IBPMTask`](../interfaces/IBPMTask.md)<`T`, `R`\>

## Table of contents

### Constructors

- [constructor](BPMTask.md#constructor)

### Properties

- [command](BPMTask.md#command)

### Methods

- [operation](BPMTask.md#operation)

## Constructors

### constructor

• **new BPMTask**<`T`, `R`\>(`cmd?`)

#### Type parameters

| Name |
| :------ |
| `T` |
| `R` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `cmd?` | [`ICommand`](../interfaces/ICommand.md) |

#### Defined in

[services/bpmn-service/src/types/bpm-task.ts:8](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/bpm-task.ts#L8)

## Properties

### command

• **command**: [`ICommand`](../interfaces/ICommand.md)

#### Implementation of

[IBPMTask](../interfaces/IBPMTask.md).[command](../interfaces/IBPMTask.md#command)

#### Defined in

[services/bpmn-service/src/types/bpm-task.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/bpm-task.ts#L14)

## Methods

### operation

▸ **operation**(`data`, `done?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `T` |
| `done?` | (`data`: `R`) => `void` |

#### Returns

`void`

#### Implementation of

[IBPMTask](../interfaces/IBPMTask.md).[operation](../interfaces/IBPMTask.md#operation)

#### Defined in

[services/bpmn-service/src/types/bpm-task.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/bpm-task.ts#L16)
