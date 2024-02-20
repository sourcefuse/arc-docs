[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / CreateTaskCommand

# Class: CreateTaskCommand

## Implements

- [`ICommand`](../interfaces/ICommand.md)

## Table of contents

### Constructors

- [constructor](CreateTaskCommand.md#constructor)

### Properties

- [context](CreateTaskCommand.md#context)
- [logger](CreateTaskCommand.md#logger)
- [parameters](CreateTaskCommand.md#parameters)
- [topic](CreateTaskCommand.md#topic)

### Methods

- [\_createTasks](CreateTaskCommand.md#_createtasks)
- [\_startWorkflowsForTasks](CreateTaskCommand.md#_startworkflowsfortasks)
- [execute](CreateTaskCommand.md#execute)

## Constructors

### constructor

• **new CreateTaskCommand**(`context`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `context` | `Context` |

#### Defined in

[services/task-service/src/commands/create-task.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/commands/create-task.ts#L24)

## Properties

### context

• `Private` **context**: `Context`

#### Defined in

[services/task-service/src/commands/create-task.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/commands/create-task.ts#L24)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/task-service/src/commands/create-task.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/commands/create-task.ts#L23)

___

### parameters

• **parameters**: [`CamundaTaskParameters`](../modules.md#camundataskparameters)

#### Implementation of

[ICommand](../interfaces/ICommand.md).[parameters](../interfaces/ICommand.md#parameters)

#### Defined in

[services/task-service/src/commands/create-task.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/commands/create-task.ts#L22)

___

### topic

• **topic**: `string` = `'create-tasks'`

#### Defined in

[services/task-service/src/commands/create-task.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/commands/create-task.ts#L21)

## Methods

### \_createTasks

▸ `Private` **_createTasks**(`tasks`, `context`): `Promise`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `tasks` | [`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>[] |
| `context` | `Context` |

#### Returns

`Promise`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>[]\>

#### Defined in

[services/task-service/src/commands/create-task.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/commands/create-task.ts#L62)

___

### \_startWorkflowsForTasks

▸ `Private` **_startWorkflowsForTasks**(`workflowKey`, `tasks`, `context`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `workflowKey` | `string` |
| `tasks` | [`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>[] |
| `context` | `Context` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/task-service/src/commands/create-task.ts:102](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/commands/create-task.ts#L102)

___

### execute

▸ **execute**(): `Promise`<`void`\>

#### Returns

`Promise`<`void`\>

#### Implementation of

[ICommand](../interfaces/ICommand.md).[execute](../interfaces/ICommand.md#execute)

#### Defined in

[services/task-service/src/commands/create-task.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/commands/create-task.ts#L27)
