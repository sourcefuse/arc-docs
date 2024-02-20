[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / EndTaskCommand

# Class: EndTaskCommand

## Implements

- [`ICommand`](../interfaces/ICommand.md)

## Table of contents

### Constructors

- [constructor](EndTaskCommand.md#constructor)

### Properties

- [context](EndTaskCommand.md#context)
- [logger](EndTaskCommand.md#logger)
- [parameters](EndTaskCommand.md#parameters)
- [topic](EndTaskCommand.md#topic)

### Methods

- [execute](EndTaskCommand.md#execute)

## Constructors

### constructor

• **new EndTaskCommand**(`context`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `context` | `Context` |

#### Defined in

[services/task-service/src/commands/end-task.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/commands/end-task.ts#L19)

## Properties

### context

• `Private` **context**: `Context`

#### Defined in

[services/task-service/src/commands/end-task.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/commands/end-task.ts#L19)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/task-service/src/commands/end-task.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/commands/end-task.ts#L18)

___

### parameters

• **parameters**: [`CamundaTaskParameters`](../modules.md#camundataskparameters)

#### Implementation of

[ICommand](../interfaces/ICommand.md).[parameters](../interfaces/ICommand.md#parameters)

#### Defined in

[services/task-service/src/commands/end-task.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/commands/end-task.ts#L17)

___

### topic

• **topic**: `string` = `'end-task'`

#### Defined in

[services/task-service/src/commands/end-task.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/commands/end-task.ts#L16)

## Methods

### execute

▸ **execute**(): `Promise`<`void`\>

#### Returns

`Promise`<`void`\>

#### Implementation of

[ICommand](../interfaces/ICommand.md).[execute](../interfaces/ICommand.md#execute)

#### Defined in

[services/task-service/src/commands/end-task.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/commands/end-task.ts#L22)
