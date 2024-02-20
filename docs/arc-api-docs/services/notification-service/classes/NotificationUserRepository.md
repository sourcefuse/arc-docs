[@sourceloop/notification-service](../README.md) / [Exports](../modules.md) / NotificationUserRepository

# Class: NotificationUserRepository

## Hierarchy

- `DefaultSoftCrudRepository`<[`NotificationUser`](NotificationUser.md), typeof [`id`](NotificationUser.md#id)\>

  ↳ **`NotificationUserRepository`**

## Table of contents

### Constructors

- [constructor](NotificationUserRepository.md#constructor)

### Properties

- [notification](NotificationUserRepository.md#notification)
- [notificationRepositoryGetter](NotificationUserRepository.md#notificationrepositorygetter)

## Constructors

### constructor

• **new NotificationUserRepository**(`dataSource`, `notificationRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `notificationRepositoryGetter` | `Getter`<[`NotificationRepository`](NotificationRepository.md)\> |

#### Overrides

DefaultSoftCrudRepository&lt;
  NotificationUser,
  typeof NotificationUser.prototype.id
\&gt;.constructor

#### Defined in

[services/notification-service/src/repositories/notification-user.repository.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/repositories/notification-user.repository.ts#L22)

## Properties

### notification

• `Readonly` **notification**: `BelongsToAccessor`<[`Notification`](Notification.md), `undefined` \| `string`\>

#### Defined in

[services/notification-service/src/repositories/notification-user.repository.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/repositories/notification-user.repository.ts#L17)

___

### notificationRepositoryGetter

• `Protected` **notificationRepositoryGetter**: `Getter`<[`NotificationRepository`](NotificationRepository.md)\>

#### Defined in

[services/notification-service/src/repositories/notification-user.repository.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/repositories/notification-user.repository.ts#L26)
