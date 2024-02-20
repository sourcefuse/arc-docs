[@sourceloop/notification-service](README.md) / Exports

# @sourceloop/notification-service

## Table of contents

### Namespaces

- [NotifServiceBindings](modules/NotifServiceBindings.md)

### Enumerations

- [ErrorKeys](enums/ErrorKeys.md)
- [PermissionKey](enums/PermissionKey.md)

### Classes

- [AccessResponseDto](classes/AccessResponseDto.md)
- [ChannelManagerProvider](classes/ChannelManagerProvider.md)
- [Notification](classes/Notification.md)
- [NotificationAccess](classes/NotificationAccess.md)
- [NotificationAccessRepository](classes/NotificationAccessRepository.md)
- [NotificationDto](classes/NotificationDto.md)
- [NotificationFilterProvider](classes/NotificationFilterProvider.md)
- [NotificationRepository](classes/NotificationRepository.md)
- [NotificationServiceComponent](classes/NotificationServiceComponent.md)
- [NotificationSettingsDto](classes/NotificationSettingsDto.md)
- [NotificationUser](classes/NotificationUser.md)
- [NotificationUserRepository](classes/NotificationUserRepository.md)
- [NotificationUserSettingsProvider](classes/NotificationUserSettingsProvider.md)
- [UserNotificationSettings](classes/UserNotificationSettings.md)
- [UserNotificationSettingsRepository](classes/UserNotificationSettingsRepository.md)

### Interfaces

- [IChannelManager](interfaces/IChannelManager.md)
- [INotifServiceConfig](interfaces/INotifServiceConfig.md)
- [INotificationSettingFilterFunc](interfaces/INotificationSettingFilterFunc.md)
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

[services/notification-service/src/types.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/types.ts#L22)

___

### NotificationUserWithRelations

Ƭ **NotificationUserWithRelations**: [`NotificationUser`](classes/NotificationUser.md) & [`NotificationUserRelations`](interfaces/NotificationUserRelations.md)

#### Defined in

[services/notification-service/src/models/notification-user.model.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-user.model.ts#L70)

___

### NotificationWithRelations

Ƭ **NotificationWithRelations**: [`Notification`](classes/Notification.md) & [`NotificationRelations`](interfaces/NotificationRelations.md)

#### Defined in

[services/notification-service/src/models/notification.model.ts:86](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification.model.ts#L86)

## Variables

### NotifAccessCacheSourceName

• `Const` **NotifAccessCacheSourceName**: ``"NotifAccessCache"``

#### Defined in

[services/notification-service/src/types.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/types.ts#L35)

___

### NotifDbSourceName

• `Const` **NotifDbSourceName**: ``"NotifDb"``

#### Defined in

[services/notification-service/src/types.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/types.ts#L34)
