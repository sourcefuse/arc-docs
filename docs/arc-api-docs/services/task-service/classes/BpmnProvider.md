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

[services/task-service/src/providers/bpmn.provider.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/providers/bpmn.provider.ts#L18)

## Properties

### camunda

• `Private` `Readonly` **camunda**: [`CamundaService`](CamundaService.md)

#### Defined in

[services/task-service/src/providers/bpmn.provider.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/providers/bpmn.provider.ts#L20)

## Methods

### value

▸ **value**(): `WorflowManager`<`AnyObject`, `AnyObject`\>

The function returns an object with methods for interacting with workflows, including getting,
starting, creating, updating, and deleting workflows and workflow versions using Camunda.

#### Returns

`WorflowManager`<`AnyObject`, `AnyObject`\>

A `WorkflowManager` object is being returned, which contains methods for interacting with
workflows such as `getWorkflowById`, `startWorkflow`, `createWorkflow`, `updateWorkflow`,
`deleteWorkflowById`, and `deleteWorkflowVersionById`. Each method is asynchronous and performs
operations related to workflows using the provided `camunda` service.

#### Implementation of

Provider.value

#### Defined in

[services/task-service/src/providers/bpmn.provider.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/providers/bpmn.provider.ts#L30)
