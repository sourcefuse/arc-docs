[@sourceloop/bpmn-service](../README.md) / [Exports](../modules.md) / ExecuteWorkflowDto

# Class: ExecuteWorkflowDto<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `AnyObject` |

## Hierarchy

- `CoreModel`<[`ExecuteWorkflowDto`](ExecuteWorkflowDto.md)<`T`\>\>

  ↳ **`ExecuteWorkflowDto`**

## Table of contents

### Constructors

- [constructor](ExecuteWorkflowDto.md#constructor)

### Properties

- [input](ExecuteWorkflowDto.md#input)
- [workflowVersion](ExecuteWorkflowDto.md#workflowversion)

## Constructors

### constructor

• **new ExecuteWorkflowDto**<`T`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `AnyObject` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`ExecuteWorkflowDto`](ExecuteWorkflowDto.md)<`T`\>\> |

#### Inherited from

CoreModel<
  ExecuteWorkflowDto<T\>
\>.constructor

#### Defined in

packages/core/dist/models/core-model.d.ts:3

## Properties

### input

• **input**: `T`

#### Defined in

[services/bpmn-service/src/models/execute-workflow-dto.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/models/execute-workflow-dto.ts#L21)

___

### workflowVersion

• `Optional` **workflowVersion**: `number`

#### Defined in

[services/bpmn-service/src/models/execute-workflow-dto.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/models/execute-workflow-dto.ts#L15)
