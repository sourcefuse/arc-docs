[@sourceloop/notification-service](../README.md) / [Exports](../modules.md) / NotificationRepository

# Class: NotificationRepository

## Hierarchy

- `DefaultTransactionalRepository`<[`Notification`](Notification.md), typeof [`id`](Notification.md#id)\>

  ↳ **`NotificationRepository`**

## Table of contents

### Constructors

- [constructor](NotificationRepository.md#constructor)

### Properties

- [notificationUserRepositoryGetter](NotificationRepository.md#notificationuserrepositorygetter)
- [notificationUsers](NotificationRepository.md#notificationusers)

## Constructors

### constructor

• **new NotificationRepository**(`dataSource`, `notificationUserRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `notificationUserRepositoryGetter` | `Getter`<[`NotificationUserRepository`](NotificationUserRepository.md)\> |

#### Overrides

DefaultTransactionalRepository&lt;
  Notification,
  typeof Notification.prototype.id
\&gt;.constructor

#### Defined in

[services/notification-service/src/repositories/notification.repository.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/repositories/notification.repository.ts#L26)

## Properties

### notificationUserRepositoryGetter

• `Protected` **notificationUserRepositoryGetter**: `Getter`<[`NotificationUserRepository`](NotificationUserRepository.md)\>

#### Defined in

[services/notification-service/src/repositories/notification.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/repositories/notification.repository.ts#L30)

___

### notificationUsers

• `Readonly` **notificationUsers**: `HasManyRepositoryFactory`<[`NotificationUser`](NotificationUser.md), `undefined` \| `string`\>

#### Defined in

[services/notification-service/src/repositories/notification.repository.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/repositories/notification.repository.ts#L21)
