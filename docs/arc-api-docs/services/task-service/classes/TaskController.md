[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / TaskController

# Class: TaskController

## Table of contents

### Constructors

- [constructor](TaskController.md#constructor)

### Properties

- [taskRepo](TaskController.md#taskrepo)
- [taskWorkflowMapping](TaskController.md#taskworkflowmapping)
- [userTaskRepository](TaskController.md#usertaskrepository)

### Methods

- [count](TaskController.md#count)
- [delete](TaskController.md#delete)
- [deleteById](TaskController.md#deletebyid)
- [find](TaskController.md#find)
- [findById](TaskController.md#findbyid)
- [mapTaskToWorkflow](TaskController.md#maptasktoworkflow)

## Constructors

### constructor

• **new TaskController**(`taskRepo`, `userTaskRepository`, `taskWorkflowMapping`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `taskRepo` | [`TaskRepository`](TaskRepository.md) |
| `userTaskRepository` | [`UserTaskRepository`](UserTaskRepository.md) |
| `taskWorkflowMapping` | [`TaskWorkFlowRepository`](TaskWorkFlowRepository.md) |

#### Defined in

[services/task-service/src/controllers/task.controller.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task.controller.ts#L35)

## Properties

### taskRepo

• `Private` `Readonly` **taskRepo**: [`TaskRepository`](TaskRepository.md)

#### Defined in

[services/task-service/src/controllers/task.controller.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task.controller.ts#L37)

___

### taskWorkflowMapping

• `Private` `Readonly` **taskWorkflowMapping**: [`TaskWorkFlowRepository`](TaskWorkFlowRepository.md)

#### Defined in

[services/task-service/src/controllers/task.controller.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task.controller.ts#L41)

___

### userTaskRepository

• `Private` `Readonly` **userTaskRepository**: [`UserTaskRepository`](UserTaskRepository.md)

#### Defined in

[services/task-service/src/controllers/task.controller.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task.controller.ts#L39)

## Methods

### count

▸ **count**(`where?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `where?` | `Where`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\> |

#### Returns

`Promise`<`Count`\>

#### Defined in

[services/task-service/src/controllers/task.controller.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task.controller.ts#L93)

___

### delete

▸ **delete**(`where?`, `cascade?`): `Promise`<`void`\>

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `where?` | `Where`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\> | `undefined` |
| `cascade` | `boolean` | `true` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/task-service/src/controllers/task.controller.ts:157](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task.controller.ts#L157)

___

### deleteById

▸ **deleteById**(`id`, `cascade?`): `Promise`<`void`\>

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `id` | `string` | `undefined` |
| `cascade` | `boolean` | `true` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/task-service/src/controllers/task.controller.ts:131](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task.controller.ts#L131)

___

### find

▸ **find**(`filter?`): `Promise`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `filter?` | `Filter`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\> |

#### Returns

`Promise`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>[]\>

#### Defined in

[services/task-service/src/controllers/task.controller.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task.controller.ts#L44)

___

### findById

▸ **findById**(`id`, `filter?`): `Promise`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `filter?` | `FilterExcludingWhere`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\> |

#### Returns

`Promise`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\>

#### Defined in

[services/task-service/src/controllers/task.controller.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task.controller.ts#L68)

___

### mapTaskToWorkflow

▸ **mapTaskToWorkflow**(`taskWorkflowMapping`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `taskWorkflowMapping` | `Omit`<[`TaskWorkflow`](TaskWorkflow.md), ``"id"``\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/task-service/src/controllers/task.controller.ts:110](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/task.controller.ts#L110)
