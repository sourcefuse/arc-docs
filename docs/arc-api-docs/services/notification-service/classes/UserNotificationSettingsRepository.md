[@sourceloop/notification-service](../README.md) / [Exports](../modules.md) / UserNotificationSettingsRepository

# Class: UserNotificationSettingsRepository

## Hierarchy

- `DefaultSoftCrudRepository`<[`UserNotificationSettings`](UserNotificationSettings.md), typeof [`id`](UserNotificationSettings.md#id)\>

  ↳ **`UserNotificationSettingsRepository`**

## Table of contents

### Constructors

- [constructor](UserNotificationSettingsRepository.md#constructor)

## Constructors

### constructor

• **new UserNotificationSettingsRepository**(`dataSource`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |

#### Overrides

DefaultSoftCrudRepository&lt;
  UserNotificationSettings,
  typeof UserNotificationSettings.prototype.id
\&gt;.constructor

#### Defined in

[services/notification-service/src/repositories/notification-user-settings.repository.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/repositories/notification-user-settings.repository.ts#L16)
