[@sourceloop/notification-service](../README.md) / [Exports](../modules.md) / NotificationFilterProvider

# Class: NotificationFilterProvider

## Implements

- `Provider`<[`INotificationFilterFunc`](../modules.md#inotificationfilterfunc)\>

## Table of contents

### Constructors

- [constructor](NotificationFilterProvider.md#constructor)

### Methods

- [value](NotificationFilterProvider.md#value)

## Constructors

### constructor

• **new NotificationFilterProvider**()

## Methods

### value

▸ **value**(): (`notif`: [`Notification`](Notification.md)) => `Promise`<[`Notification`](Notification.md)\>

#### Returns

`fn`

▸ (`notif`): `Promise`<[`Notification`](Notification.md)\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `notif` | [`Notification`](Notification.md) |

##### Returns

`Promise`<[`Notification`](Notification.md)\>

#### Implementation of

Provider.value

#### Defined in

[services/notification-service/src/providers/notification-filter.service.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/providers/notification-filter.service.ts#L13)
