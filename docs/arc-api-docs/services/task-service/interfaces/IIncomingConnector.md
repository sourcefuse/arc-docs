[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / IIncomingConnector

# Interface: IIncomingConnector<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | [`IEvent`](IEvent.md) |

## Table of contents

### Methods

- [subscribe](IIncomingConnector.md#subscribe)
- [unsubscribe](IIncomingConnector.md#unsubscribe)

## Methods

### subscribe

▸ **subscribe**(`handler`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `handler` | [`IEventStreamHandler`](../modules.md#ieventstreamhandler)<`T`\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/task-service/src/interfaces/i-incoming-connector.ts:4](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/interfaces/i-incoming-connector.ts#L4)

___

### unsubscribe

▸ **unsubscribe**(): `Promise`<`void`\>

#### Returns

`Promise`<`void`\>

#### Defined in

[services/task-service/src/interfaces/i-incoming-connector.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/interfaces/i-incoming-connector.ts#L5)
