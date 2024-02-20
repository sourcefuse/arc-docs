[@sourceloop/notification-service](../README.md) / [Exports](../modules.md) / UserNotificationSettings

# Class: UserNotificationSettings

## Hierarchy

- `BaseEntity`<[`UserNotificationSettings`](UserNotificationSettings.md)\>

  ↳ **`UserNotificationSettings`**

## Table of contents

### Constructors

- [constructor](UserNotificationSettings.md#constructor)

### Properties

- [createdOn](UserNotificationSettings.md#createdon)
- [id](UserNotificationSettings.md#id)
- [modifiedOn](UserNotificationSettings.md#modifiedon)
- [sleepEndTime](UserNotificationSettings.md#sleependtime)
- [sleepStartTime](UserNotificationSettings.md#sleepstarttime)
- [type](UserNotificationSettings.md#type)
- [userId](UserNotificationSettings.md#userid)

## Constructors

### constructor

• **new UserNotificationSettings**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`UserNotificationSettings`](UserNotificationSettings.md)\> |

#### Inherited from

BaseEntity<UserNotificationSettings\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

BaseEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/notification-service/src/models/user-notification-settings.model.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/user-notification-settings.model.ts#L16)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

BaseEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### sleepEndTime

• **sleepEndTime**: `Date`

#### Defined in

[services/notification-service/src/models/user-notification-settings.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/user-notification-settings.model.ts#L37)

___

### sleepStartTime

• **sleepStartTime**: `Date`

#### Defined in

[services/notification-service/src/models/user-notification-settings.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/user-notification-settings.model.ts#L30)

___

### type

• **type**: `MessageType`

#### Defined in

[services/notification-service/src/models/user-notification-settings.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/user-notification-settings.model.ts#L44)

___

### userId

• **userId**: `string`

#### Defined in

[services/notification-service/src/models/user-notification-settings.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/user-notification-settings.model.ts#L23)
