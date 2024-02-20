[@sourceloop/notification-service](../README.md) / [Exports](../modules.md) / INotificationSettingFilterFunc

# Interface: INotificationSettingFilterFunc

## Table of contents

### Methods

- [checkUserNotificationSettings](INotificationSettingFilterFunc.md#checkusernotificationsettings)
- [getDraftSubscribers](INotificationSettingFilterFunc.md#getdraftsubscribers)
- [getNotificationSubscribers](INotificationSettingFilterFunc.md#getnotificationsubscribers)

## Methods

### checkUserNotificationSettings

▸ **checkUserNotificationSettings**(`notification`): `Promise`<`Subscriber`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `notification` | [`Notification`](../classes/Notification.md) |

#### Returns

`Promise`<`Subscriber`[]\>

#### Defined in

[services/notification-service/src/types.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/types.ts#L27)

___

### getDraftSubscribers

▸ **getDraftSubscribers**(`subscribers`): `Promise`<`Subscriber`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `subscribers` | `Subscriber`[] |

#### Returns

`Promise`<`Subscriber`[]\>

#### Defined in

[services/notification-service/src/types.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/types.ts#L31)

___

### getNotificationSubscribers

▸ **getNotificationSubscribers**(`subscribers`): `Promise`<`Subscriber`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `subscribers` | `Subscriber`[] |

#### Returns

`Promise`<`Subscriber`[]\>

#### Defined in

[services/notification-service/src/types.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/types.ts#L30)
