[@sourceloop/notification-service](../README.md) / [Exports](../modules.md) / NotificationUserSettingsProvider

# Class: NotificationUserSettingsProvider

## Implements

- `Provider`<[`INotificationSettingFilterFunc`](../interfaces/INotificationSettingFilterFunc.md)\>

## Table of contents

### Constructors

- [constructor](NotificationUserSettingsProvider.md#constructor)

### Properties

- [notificationRepository](NotificationUserSettingsProvider.md#notificationrepository)
- [userNotifSettingsRepository](NotificationUserSettingsProvider.md#usernotifsettingsrepository)

### Methods

- [value](NotificationUserSettingsProvider.md#value)

## Constructors

### constructor

• **new NotificationUserSettingsProvider**(`userNotifSettingsRepository`, `notificationRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userNotifSettingsRepository` | [`UserNotificationSettingsRepository`](UserNotificationSettingsRepository.md) |
| `notificationRepository` | [`NotificationRepository`](NotificationRepository.md) |

#### Defined in

[services/notification-service/src/providers/notification-user-settings.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/providers/notification-user-settings.service.ts#L22)

## Properties

### notificationRepository

• **notificationRepository**: [`NotificationRepository`](NotificationRepository.md)

#### Defined in

[services/notification-service/src/providers/notification-user-settings.service.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/providers/notification-user-settings.service.ts#L27)

___

### userNotifSettingsRepository

• **userNotifSettingsRepository**: [`UserNotificationSettingsRepository`](UserNotificationSettingsRepository.md)

#### Defined in

[services/notification-service/src/providers/notification-user-settings.service.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/providers/notification-user-settings.service.ts#L25)

## Methods

### value

▸ **value**(): `Object`

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `checkUserNotificationSettings` | (`notification`: [`Notification`](Notification.md)) => `Promise`<`Subscriber`[]\> |
| `getDraftSubscribers` | (`categorizedSubscribes`: `Subscriber`[]) => `Promise`<`Subscriber`[]\> |
| `getNotificationSubscribers` | (`categorizedSubscribes`: `Subscriber`[]) => `Promise`<`Subscriber`[]\> |

#### Implementation of

Provider.value

#### Defined in

[services/notification-service/src/providers/notification-user-settings.service.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/providers/notification-user-settings.service.ts#L30)
