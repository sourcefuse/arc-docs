[@sourceloop/notification-service](README.md) / Exports

# @sourceloop/notification-service

## Table of contents

### Namespaces

- [NotifServiceBindings](modules/NotifServiceBindings.md)

### Classes

- [AccessResponseDto](classes/AccessResponseDto.md)
- [ChannelManagerProvider](classes/ChannelManagerProvider.md)
- [Notification](classes/Notification.md)
- [NotificationAccess](classes/NotificationAccess.md)
- [NotificationAccessRepository](classes/NotificationAccessRepository.md)
- [NotificationFilterProvider](classes/NotificationFilterProvider.md)
- [NotificationRepository](classes/NotificationRepository.md)
- [NotificationServiceComponent](classes/NotificationServiceComponent.md)
- [NotificationUser](classes/NotificationUser.md)
- [NotificationUserRepository](classes/NotificationUserRepository.md)

### Interfaces

- [IChannelManager](interfaces/IChannelManager.md)
- [INotifServiceConfig](interfaces/INotifServiceConfig.md)
- [INotificationUserManager](interfaces/INotificationUserManager.md)
- [NotificationRelations](interfaces/NotificationRelations.md)
- [NotificationUserRelations](interfaces/NotificationUserRelations.md)

### Type Aliases

- [INotificationFilterFunc](modules.md#inotificationfilterfunc)
- [NotificationUserWithRelations](modules.md#notificationuserwithrelations)
- [NotificationWithRelations](modules.md#notificationwithrelations)

### Variables

- [NotifAccessCacheSourceName](modules.md#notifaccesscachesourcename)
- [NotifDbSourceName](modules.md#notifdbsourcename)

## Type Aliases

### INotificationFilterFunc

Ƭ **INotificationFilterFunc**: (`notif`: [`Notification`](classes/Notification.md)) => `Promise`<[`Notification`](classes/Notification.md)\>

#### Type declaration

▸ (`notif`): `Promise`<[`Notification`](classes/Notification.md)\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `notif` | [`Notification`](classes/Notification.md) |

##### Returns

`Promise`<[`Notification`](classes/Notification.md)\>

#### Defined in

[services/notification-service/src/types.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/notification-service/src/types.ts#L22)

___

### NotificationUserWithRelations

Ƭ **NotificationUserWithRelations**: [`NotificationUser`](classes/NotificationUser.md) & [`NotificationUserRelations`](interfaces/NotificationUserRelations.md)

#### Defined in

[services/notification-service/src/models/notification-user.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/notification-service/src/models/notification-user.model.ts#L68)

___

### NotificationWithRelations

Ƭ **NotificationWithRelations**: [`Notification`](classes/Notification.md) & [`NotificationRelations`](interfaces/NotificationRelations.md)

#### Defined in

[services/notification-service/src/models/notification.model.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/notification-service/src/models/notification.model.ts#L73)

## Variables

### NotifAccessCacheSourceName

• `Const` **NotifAccessCacheSourceName**: ``"NotifAccessCache"``

#### Defined in

[services/notification-service/src/types.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/notification-service/src/types.ts#L27)

___

### NotifDbSourceName

• `Const` **NotifDbSourceName**: ``"NotifDb"``

#### Defined in

[services/notification-service/src/types.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/notification-service/src/types.ts#L26)
