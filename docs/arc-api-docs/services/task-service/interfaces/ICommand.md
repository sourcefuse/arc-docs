[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / ICommand

# Interface: ICommand

## Implemented by

- [`CreateTaskCommand`](../classes/CreateTaskCommand.md)
- [`EndTaskCommand`](../classes/EndTaskCommand.md)

## Table of contents

### Properties

- [parameters](ICommand.md#parameters)

### Methods

- [execute](ICommand.md#execute)

## Properties

### parameters

• **parameters**: [`CamundaTaskParameters`](../modules.md#camundataskparameters)

#### Defined in

[services/task-service/src/interfaces/i-command.ts:4](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/interfaces/i-command.ts#L4)

## Methods

### execute

▸ **execute**(): `Promise`<`void`\>

#### Returns

`Promise`<`void`\>

#### Defined in

[services/task-service/src/interfaces/i-command.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/interfaces/i-command.ts#L5)
