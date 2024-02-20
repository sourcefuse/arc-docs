[@sourceloop/notification-service](../README.md) / [Exports](../modules.md) / NotificationUser

# Class: NotificationUser

## Hierarchy

- `BaseEntity`<[`NotificationUser`](NotificationUser.md)\>

  ↳ **`NotificationUser`**

## Indexable

▪ [prop: `string`]: `any`

## Table of contents

### Constructors

- [constructor](NotificationUser.md#constructor)

### Properties

- [actionMeta](NotificationUser.md#actionmeta)
- [createdOn](NotificationUser.md#createdon)
- [id](NotificationUser.md#id)
- [isDraft](NotificationUser.md#isdraft)
- [isRead](NotificationUser.md#isread)
- [modifiedOn](NotificationUser.md#modifiedon)
- [notificationId](NotificationUser.md#notificationid)
- [userId](NotificationUser.md#userid)

## Constructors

### constructor

• **new NotificationUser**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`NotificationUser`](NotificationUser.md)\> |

#### Inherited from

BaseEntity<NotificationUser\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### actionMeta

• `Optional` **actionMeta**: `AnyObject`

#### Defined in

[services/notification-service/src/models/notification-user.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-user.model.ts#L51)

___

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

[services/notification-service/src/models/notification-user.model.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-user.model.ts#L20)

___

### isDraft

• `Optional` **isDraft**: `boolean`

#### Defined in

[services/notification-service/src/models/notification-user.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-user.model.ts#L58)

___

### isRead

• `Optional` **isRead**: `boolean`

#### Defined in

[services/notification-service/src/models/notification-user.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-user.model.ts#L44)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

BaseEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### notificationId

• **notificationId**: `string`

#### Defined in

[services/notification-service/src/models/notification-user.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-user.model.ts#L30)

___

### userId

• **userId**: `string`

#### Defined in

[services/notification-service/src/models/notification-user.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-user.model.ts#L37)
