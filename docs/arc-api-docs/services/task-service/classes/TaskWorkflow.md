[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / TaskWorkflow

# Class: TaskWorkflow

## Hierarchy

- `UserModifiableEntity`<[`TaskWorkflow`](TaskWorkflow.md)\>

  ↳ **`TaskWorkflow`**

## Table of contents

### Constructors

- [constructor](TaskWorkflow.md#constructor)

### Properties

- [createdBy](TaskWorkflow.md#createdby)
- [createdOn](TaskWorkflow.md#createdon)
- [id](TaskWorkflow.md#id)
- [modifiedBy](TaskWorkflow.md#modifiedby)
- [modifiedOn](TaskWorkflow.md#modifiedon)
- [taskKey](TaskWorkflow.md#taskkey)
- [workflowKey](TaskWorkflow.md#workflowkey)

## Constructors

### constructor

• **new TaskWorkflow**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`TaskWorkflow`](TaskWorkflow.md)\> |

#### Inherited from

UserModifiableEntity<TaskWorkflow\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/task-service/src/models/task-workflow.model.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task-workflow.model.ts#L13)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### taskKey

• **taskKey**: `string`

#### Defined in

[services/task-service/src/models/task-workflow.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task-workflow.model.ts#L29)

___

### workflowKey

• **workflowKey**: `string`

#### Defined in

[services/task-service/src/models/task-workflow.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task-workflow.model.ts#L21)
