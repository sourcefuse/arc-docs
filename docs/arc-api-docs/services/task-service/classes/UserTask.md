[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / UserTask

# Class: UserTask

## Hierarchy

- `UserModifiableEntity`<[`Task`](Task.md)\>

  ↳ **`UserTask`**

## Table of contents

### Constructors

- [constructor](UserTask.md#constructor)

### Properties

- [createdBy](UserTask.md#createdby)
- [createdOn](UserTask.md#createdon)
- [externalId](UserTask.md#externalid)
- [id](UserTask.md#id)
- [modifiedBy](UserTask.md#modifiedby)
- [modifiedOn](UserTask.md#modifiedon)
- [name](UserTask.md#name)
- [status](UserTask.md#status)
- [taskId](UserTask.md#taskid)

## Constructors

### constructor

• **new UserTask**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\> |

#### Inherited from

UserModifiableEntity<Task\>.constructor

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

### externalId

• **externalId**: `string`

#### Defined in

[services/task-service/src/models/user-task.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/user-task.model.ts#L41)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/task-service/src/models/user-task.model.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/user-task.model.ts#L15)

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

### name

• **name**: `string`

#### Defined in

[services/task-service/src/models/user-task.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/user-task.model.ts#L21)

___

### status

• **status**: [`UserTaskStatus`](../enums/UserTaskStatus.md)

#### Defined in

[services/task-service/src/models/user-task.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/user-task.model.ts#L34)

___

### taskId

• **taskId**: `string`

#### Defined in

[services/task-service/src/models/user-task.model.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/user-task.model.ts#L28)
