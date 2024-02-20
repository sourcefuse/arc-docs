[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / BpmnProvider

# Class: BpmnProvider

## Implements

- `Provider`<`WorflowManager`\>

## Table of contents

### Constructors

- [constructor](BpmnProvider.md#constructor)

### Properties

- [camunda](BpmnProvider.md#camunda)

### Methods

- [value](BpmnProvider.md#value)

## Constructors

### constructor

• **new BpmnProvider**(`camunda`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `camunda` | [`CamundaService`](CamundaService.md) |

#### Defined in

[services/task-service/src/providers/bpmn.provider.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/providers/bpmn.provider.ts#L18)

## Properties

### camunda

• `Private` `Readonly` **camunda**: [`CamundaService`](CamundaService.md)

#### Defined in

[services/task-service/src/providers/bpmn.provider.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/providers/bpmn.provider.ts#L20)

## Methods

### value

▸ **value**(): `WorflowManager`<`AnyObject`, `AnyObject`\>

#### Returns

`WorflowManager`<`AnyObject`, `AnyObject`\>

#### Implementation of

Provider.value

#### Defined in

[services/task-service/src/providers/bpmn.provider.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/providers/bpmn.provider.ts#L22)
