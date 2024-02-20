[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / IUserTaskService

# Interface: IUserTaskService

## Implemented by

- [`UserTaskService`](../classes/UserTaskService.md)

## Table of contents

### Methods

- [complete](IUserTaskService.md#complete)
- [updateList](IUserTaskService.md#updatelist)

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

#### Defined in

[services/task-service/src/interfaces/i-user-task-service.ts:2](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/interfaces/i-user-task-service.ts#L2)

___

### updateList

▸ **updateList**(`taskId`, `processInstanceId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `taskId` | `string` |
| `processInstanceId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/task-service/src/interfaces/i-user-task-service.ts:4](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/interfaces/i-user-task-service.ts#L4)
