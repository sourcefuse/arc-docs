[@sourceloop/bpmn-service](../README.md) / [Exports](../modules.md) / WorkflowProvider

# Class: WorkflowProvider

## Implements

- `Provider`<[`WorflowManager`](../interfaces/WorflowManager.md)\>

## Table of contents

### Constructors

- [constructor](WorkflowProvider.md#constructor)

### Methods

- [value](WorkflowProvider.md#value)

## Constructors

### constructor

• **new WorkflowProvider**()

## Methods

### value

▸ **value**(): `Object`

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `createWorkflow` | () => `Promise`<`never`\> |
| `deleteWorkflowById` | () => `Promise`<`never`\> |
| `deleteWorkflowVersionById` | () => `Promise`<`never`\> |
| `getWorkflowById` | () => `Promise`<`never`\> |
| `startWorkflow` | () => `Promise`<`never`\> |
| `updateWorkflow` | () => `Promise`<`never`\> |

#### Implementation of

Provider.value

#### Defined in

[services/bpmn-service/src/providers/workflow-helper.service.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/providers/workflow-helper.service.ts#L11)
