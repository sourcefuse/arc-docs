[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / Task

# Class: Task<TS\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `TS` | [`TaskStatus`](../enums/TaskStatus.md) |

## Hierarchy

- `UserModifiableEntity`<[`Task`](Task.md)\>

  ↳ **`Task`**

## Table of contents

### Constructors

- [constructor](Task.md#constructor)

### Properties

- [assigneeId](Task.md#assigneeid)
- [createdBy](Task.md#createdby)
- [createdOn](Task.md#createdon)
- [description](Task.md#description)
- [dueDate](Task.md#duedate)
- [endDate](Task.md#enddate)
- [externalId](Task.md#externalid)
- [id](Task.md#id)
- [key](Task.md#key)
- [metadata](Task.md#metadata)
- [modifiedBy](Task.md#modifiedby)
- [modifiedOn](Task.md#modifiedon)
- [name](Task.md#name)
- [priority](Task.md#priority)
- [severity](Task.md#severity)
- [startDate](Task.md#startdate)
- [status](Task.md#status)
- [type](Task.md#type)
- [userTasks](Task.md#usertasks)

## Constructors

### constructor

• **new Task**<`TS`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `TS` | [`TaskStatus`](../enums/TaskStatus.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\> |

#### Inherited from

UserModifiableEntity<Task\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### assigneeId

• `Optional` **assigneeId**: `string`

#### Defined in

[services/task-service/src/models/task.model.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task.model.ts#L88)

___

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

### description

• `Optional` **description**: `string`

#### Defined in

[services/task-service/src/models/task.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task.model.ts#L36)

___

### dueDate

• `Optional` **dueDate**: `Date`

#### Defined in

[services/task-service/src/models/task.model.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task.model.ts#L75)

___

### endDate

• `Optional` **endDate**: `Date`

#### Defined in

[services/task-service/src/models/task.model.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task.model.ts#L82)

___

### externalId

• `Optional` **externalId**: `string`

#### Defined in

[services/task-service/src/models/task.model.ts:105](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task.model.ts#L105)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/task-service/src/models/task.model.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task.model.ts#L15)

___

### key

• **key**: `string`

#### Defined in

[services/task-service/src/models/task.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task.model.ts#L22)

___

### metadata

• **metadata**: `AnyObject`

#### Defined in

[services/task-service/src/models/task.model.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task.model.ts#L94)

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

[services/task-service/src/models/task.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task.model.ts#L29)

___

### priority

• **priority**: `string`

#### Defined in

[services/task-service/src/models/task.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task.model.ts#L49)

___

### severity

• **severity**: `string`

#### Defined in

[services/task-service/src/models/task.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task.model.ts#L55)

___

### startDate

• `Optional` **startDate**: `Date`

#### Defined in

[services/task-service/src/models/task.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task.model.ts#L68)

___

### status

• **status**: `TS`

#### Defined in

[services/task-service/src/models/task.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task.model.ts#L43)

___

### type

• **type**: `string`

#### Defined in

[services/task-service/src/models/task.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task.model.ts#L61)

___

### userTasks

• `Optional` **userTasks**: [`UserTask`](UserTask.md)[]

#### Defined in

[services/task-service/src/models/task.model.ts:99](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/task.model.ts#L99)
