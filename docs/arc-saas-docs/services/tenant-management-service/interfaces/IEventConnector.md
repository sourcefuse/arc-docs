[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / IEventConnector

# Interface: IEventConnector<T\>

## Type parameters

| Name |
| :------ |
| `T` |

## Implemented by

- [`EventConnector`](../classes/EventConnector.md)

## Table of contents

### Methods

- [publish](IEventConnector.md#publish)

## Methods

### publish

▸ **publish**(`event`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `event` | `T` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/tenant-management-service/src/types/i-event-connector.interface.ts:2](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/types/i-event-connector.interface.ts#L2)
