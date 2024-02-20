[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / EventWorkflow

# Class: EventWorkflow

## Hierarchy

- `UserModifiableEntity`<[`EventWorkflow`](EventWorkflow.md)\>

  ↳ **`EventWorkflow`**

## Table of contents

### Constructors

- [constructor](EventWorkflow.md#constructor)

### Properties

- [createdBy](EventWorkflow.md#createdby)
- [createdOn](EventWorkflow.md#createdon)
- [eventKey](EventWorkflow.md#eventkey)
- [id](EventWorkflow.md#id)
- [modifiedBy](EventWorkflow.md#modifiedby)
- [modifiedOn](EventWorkflow.md#modifiedon)
- [workflowKey](EventWorkflow.md#workflowkey)

## Constructors

### constructor

• **new EventWorkflow**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`EventWorkflow`](EventWorkflow.md)\> |

#### Inherited from

UserModifiableEntity<EventWorkflow\>.constructor

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

### eventKey

• **eventKey**: `string`

#### Defined in

[services/task-service/src/models/event-workflow.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/event-workflow.model.ts#L22)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/task-service/src/models/event-workflow.model.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/event-workflow.model.ts#L13)

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

### workflowKey

• **workflowKey**: `string`

#### Defined in

[services/task-service/src/models/event-workflow.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/event-workflow.model.ts#L30)
