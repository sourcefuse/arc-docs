[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / EventConnector

# Class: EventConnector

## Implements

- [`IEventConnector`](../interfaces/IEventConnector.md)<`unknown`\>

## Table of contents

### Constructors

- [constructor](EventConnector.md#constructor)

### Methods

- [publish](EventConnector.md#publish)

## Constructors

### constructor

• **new EventConnector**()

#### Defined in

[services/tenant-management-service/src/services/event-connector/event.connector.ts:6](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/event-connector/event.connector.ts#L6)

## Methods

### publish

▸ **publish**(`event`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `event` | `unknown` |

#### Returns

`Promise`<`void`\>

#### Implementation of

[IEventConnector](../interfaces/IEventConnector.md).[publish](../interfaces/IEventConnector.md#publish)

#### Defined in

[services/tenant-management-service/src/services/event-connector/event.connector.ts:8](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/event-connector/event.connector.ts#L8)
