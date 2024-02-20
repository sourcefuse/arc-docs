[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / TaskUserTaskController

# Class: TaskUserTaskController

## Table of contents

### Constructors

- [constructor](TaskUserTaskController.md#constructor)

### Properties

- [taskRepo](TaskUserTaskController.md#taskrepo)
- [userTaskRepo](TaskUserTaskController.md#usertaskrepo)
- [userTaskService](TaskUserTaskController.md#usertaskservice)

### Methods

- [completeTask](TaskUserTaskController.md#completetask)
- [count](TaskUserTaskController.md#count)
- [delete](TaskUserTaskController.md#delete)
- [deleteById](TaskUserTaskController.md#deletebyid)
- [find](TaskUserTaskController.md#find)
- [findById](TaskUserTaskController.md#findbyid)

## Constructors

### constructor

• **new TaskUserTaskController**(`userTaskService`, `taskRepo`, `userTaskRepo`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userTaskService` | [`IUserTaskService`](../interfaces/IUserTaskService.md) |
| `taskRepo` | [`TaskRepository`](TaskRepository.md) |
| `userTaskRepo` | [`UserTaskRepository`](UserTaskRepository.md) |

#### Defined in

[services/task-service/src/controllers/task-user-task.controller.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task-user-task.controller.ts#L35)

## Properties

### taskRepo

• `Private` `Readonly` **taskRepo**: [`TaskRepository`](TaskRepository.md)

#### Defined in

[services/task-service/src/controllers/task-user-task.controller.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task-user-task.controller.ts#L39)

___

### userTaskRepo

• `Private` `Readonly` **userTaskRepo**: [`UserTaskRepository`](UserTaskRepository.md)

#### Defined in

[services/task-service/src/controllers/task-user-task.controller.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task-user-task.controller.ts#L41)

___

### userTaskService

• `Private` `Readonly` **userTaskService**: [`IUserTaskService`](../interfaces/IUserTaskService.md)

#### Defined in

[services/task-service/src/controllers/task-user-task.controller.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task-user-task.controller.ts#L37)

## Methods

### completeTask

▸ **completeTask**(`id`, `userTaskId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `userTaskId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/task-service/src/controllers/task-user-task.controller.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task-user-task.controller.ts#L43)

___

### count

▸ **count**(`taskId`, `where?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `taskId` | `string` |
| `where?` | `Where`<[`UserTask`](UserTask.md)\> |

#### Returns

`Promise`<`Count`\>

#### Defined in

[services/task-service/src/controllers/task-user-task.controller.ts:119](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task-user-task.controller.ts#L119)

___

### delete

▸ **delete**(`where?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `where?` | `Where`<[`UserTask`](UserTask.md)\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/task-service/src/controllers/task-user-task.controller.ts:159](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task-user-task.controller.ts#L159)

___

### deleteById

▸ **deleteById**(`id`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/task-service/src/controllers/task-user-task.controller.ts:141](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task-user-task.controller.ts#L141)

___

### find

▸ **find**(`taskId`, `filter?`): `Promise`<[`UserTask`](UserTask.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `taskId` | `string` |
| `filter?` | `Filter`<[`UserTask`](UserTask.md)\> |

#### Returns

`Promise`<[`UserTask`](UserTask.md)[]\>

#### Defined in

[services/task-service/src/controllers/task-user-task.controller.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task-user-task.controller.ts#L57)

___

### findById

▸ **findById**(`taskId`, `userTaskId`, `filter?`): `Promise`<[`UserTask`](UserTask.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `taskId` | `string` |
| `userTaskId` | `string` |
| `filter?` | `FilterExcludingWhere`<[`UserTask`](UserTask.md)\> |

#### Returns

`Promise`<[`UserTask`](UserTask.md)\>

#### Defined in

[services/task-service/src/controllers/task-user-task.controller.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task-user-task.controller.ts#L84)
