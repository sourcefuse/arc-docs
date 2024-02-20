[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / UserTaskService

# Class: UserTaskService

## Implements

- [`IUserTaskService`](../interfaces/IUserTaskService.md)

## Table of contents

### Constructors

- [constructor](UserTaskService.md#constructor)

### Properties

- [camundaService](UserTaskService.md#camundaservice)
- [outgoing](UserTaskService.md#outgoing)
- [taskRepo](UserTaskService.md#taskrepo)
- [userTaskRepo](UserTaskService.md#usertaskrepo)

### Methods

- [complete](UserTaskService.md#complete)
- [updateList](UserTaskService.md#updatelist)

## Constructors

### constructor

• **new UserTaskService**(`taskRepo`, `userTaskRepo`, `outgoing`, `camundaService`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `taskRepo` | [`TaskRepository`](TaskRepository.md) |
| `userTaskRepo` | [`UserTaskRepository`](UserTaskRepository.md) |
| `outgoing` | [`IOutgoingConnector`](../interfaces/IOutgoingConnector.md)<[`IEvent`](../interfaces/IEvent.md)<`any`\>\> |
| `camundaService` | [`CamundaService`](CamundaService.md) |

#### Defined in

[services/task-service/src/services/user-task.service.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/user-task.service.ts#L10)

## Properties

### camundaService

• `Private` `Readonly` **camundaService**: [`CamundaService`](CamundaService.md)

#### Defined in

[services/task-service/src/services/user-task.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/user-task.service.ts#L18)

___

### outgoing

• `Private` `Readonly` **outgoing**: [`IOutgoingConnector`](../interfaces/IOutgoingConnector.md)<[`IEvent`](../interfaces/IEvent.md)<`any`\>\>

#### Defined in

[services/task-service/src/services/user-task.service.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/user-task.service.ts#L16)

___

### taskRepo

• `Private` **taskRepo**: [`TaskRepository`](TaskRepository.md)

#### Defined in

[services/task-service/src/services/user-task.service.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/user-task.service.ts#L12)

___

### userTaskRepo

• `Private` **userTaskRepo**: [`UserTaskRepository`](UserTaskRepository.md)

#### Defined in

[services/task-service/src/services/user-task.service.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/user-task.service.ts#L14)

## Methods

### complete

▸ **complete**(`taskId`, `userTaskId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `taskId` | `string` |
| `userTaskId` | `string` |

#### Returns

`Promise`<`void`\>

#### Implementation of

[IUserTaskService](../interfaces/IUserTaskService.md).[complete](../interfaces/IUserTaskService.md#complete)

#### Defined in

[services/task-service/src/services/user-task.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/user-task.service.ts#L21)

___

### updateList

▸ **updateList**(`taskId`, `instanceId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `taskId` | `string` |
| `instanceId` | `string` |

#### Returns

`Promise`<`void`\>

#### Implementation of

[IUserTaskService](../interfaces/IUserTaskService.md).[updateList](../interfaces/IUserTaskService.md#updatelist)

#### Defined in

[services/task-service/src/services/user-task.service.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/user-task.service.ts#L43)
