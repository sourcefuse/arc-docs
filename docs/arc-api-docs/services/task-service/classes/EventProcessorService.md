[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / EventProcessorService

# Class: EventProcessorService

## Implements

- [`IEventProcessor`](../interfaces/IEventProcessor.md)

## Table of contents

### Constructors

- [constructor](EventProcessorService.md#constructor)

### Properties

- [ctx](EventProcessorService.md#ctx)
- [filter](EventProcessorService.md#filter)
- [incoming](EventProcessorService.md#incoming)
- [logger](EventProcessorService.md#logger)

### Methods

- [\_triggerWorkflow](EventProcessorService.md#_triggerworkflow)
- [handle](EventProcessorService.md#handle)

## Constructors

### constructor

• **new EventProcessorService**(`ctx`, `filter`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `ctx` | `Context` |
| `filter` | [`EventFilter`](../modules.md#eventfilter) |
| `logger` | `ILogger` |

#### Defined in

[services/task-service/src/services/event-processor.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/event-processor.service.ts#L17)

## Properties

### ctx

• `Private` `Readonly` **ctx**: `Context`

#### Defined in

[services/task-service/src/services/event-processor.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/event-processor.service.ts#L19)

___

### filter

• `Private` `Readonly` **filter**: [`EventFilter`](../modules.md#eventfilter)

#### Defined in

[services/task-service/src/services/event-processor.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/event-processor.service.ts#L21)

___

### incoming

• **incoming**: [`IIncomingConnector`](../interfaces/IIncomingConnector.md)<[`IEvent`](../interfaces/IEvent.md)<`any`\>\>

#### Defined in

[services/task-service/src/services/event-processor.service.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/event-processor.service.ts#L16)

___

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/task-service/src/services/event-processor.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/event-processor.service.ts#L23)

## Methods

### \_triggerWorkflow

▸ `Private` **_triggerWorkflow**(`workflowKey`, `payload`, `context`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `workflowKey` | `string` |
| `payload` | `AnyObject` |
| `context` | `Context` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/task-service/src/services/event-processor.service.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/event-processor.service.ts#L68)

___

### handle

▸ **handle**(`event`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `event` | [`IEvent`](../interfaces/IEvent.md)<`any`\> |

#### Returns

`Promise`<`void`\>

#### Implementation of

[IEventProcessor](../interfaces/IEventProcessor.md).[handle](../interfaces/IEventProcessor.md#handle)

#### Defined in

[services/task-service/src/services/event-processor.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/event-processor.service.ts#L26)
