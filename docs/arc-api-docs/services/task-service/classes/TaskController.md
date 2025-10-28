[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / TaskController

# Class: TaskController

## Table of contents

### Constructors

- [constructor](TaskController.md#constructor)

### Properties

- [camundaService](TaskController.md#camundaservice)
- [logger](TaskController.md#logger)
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
- [updateAll](TaskController.md#updateall)
- [updateById](TaskController.md#updatebyid)

## Constructors

### constructor

• **new TaskController**(`taskRepo`, `userTaskRepository`, `taskWorkflowMapping`, `camundaService`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `taskRepo` | [`TaskRepository`](TaskRepository.md) |
| `userTaskRepository` | [`UserTaskRepository`](UserTaskRepository.md) |
| `taskWorkflowMapping` | [`TaskWorkFlowRepository`](TaskWorkFlowRepository.md) |
| `camundaService` | [`CamundaService`](CamundaService.md) |
| `logger` | `ILogger` |

#### Defined in

[services/task-service/src/controllers/task.controller.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/controllers/task.controller.ts#L42)

## Properties

### camundaService

• `Private` `Readonly` **camundaService**: [`CamundaService`](CamundaService.md)

#### Defined in

[services/task-service/src/controllers/task.controller.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/controllers/task.controller.ts#L50)

___

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/task-service/src/controllers/task.controller.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/controllers/task.controller.ts#L51)

___

### taskRepo

• `Private` `Readonly` **taskRepo**: [`TaskRepository`](TaskRepository.md)

#### Defined in

[services/task-service/src/controllers/task.controller.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/controllers/task.controller.ts#L44)

___

### taskWorkflowMapping

• `Private` `Readonly` **taskWorkflowMapping**: [`TaskWorkFlowRepository`](TaskWorkFlowRepository.md)

#### Defined in

[services/task-service/src/controllers/task.controller.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/controllers/task.controller.ts#L48)

___

### userTaskRepository

• `Private` `Readonly` **userTaskRepository**: [`UserTaskRepository`](UserTaskRepository.md)

#### Defined in

[services/task-service/src/controllers/task.controller.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/controllers/task.controller.ts#L46)

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

[services/task-service/src/controllers/task.controller.ts:103](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/controllers/task.controller.ts#L103)

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

[services/task-service/src/controllers/task.controller.ts:263](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/controllers/task.controller.ts#L263)

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

[services/task-service/src/controllers/task.controller.ts:227](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/controllers/task.controller.ts#L227)

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

[services/task-service/src/controllers/task.controller.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/controllers/task.controller.ts#L54)

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

[services/task-service/src/controllers/task.controller.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/controllers/task.controller.ts#L78)

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

[services/task-service/src/controllers/task.controller.ts:120](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/controllers/task.controller.ts#L120)

___

### updateAll

▸ **updateAll**(`tasks`, `where?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `tasks` | [`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\> |
| `where?` | `Where`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\> |

#### Returns

`Promise`<`Count`\>

#### Defined in

[services/task-service/src/controllers/task.controller.ts:180](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/controllers/task.controller.ts#L180)

___

### updateById

▸ **updateById**(`id`, `task`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `task` | [`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/task-service/src/controllers/task.controller.ts:141](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/controllers/task.controller.ts#L141)
