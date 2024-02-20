[@sourceloop/notification-service](../README.md) / [Exports](../modules.md) / Notification

# Class: Notification

## Hierarchy

- `CoreEntity`<[`Notification`](Notification.md)\>

  ↳ **`Notification`**

## Implements

- `Message`

## Table of contents

### Constructors

- [constructor](Notification.md#constructor)

### Properties

- [body](Notification.md#body)
- [groupKey](Notification.md#groupkey)
- [id](Notification.md#id)
- [isCritical](Notification.md#iscritical)
- [isDraft](Notification.md#isdraft)
- [notificationUsers](Notification.md#notificationusers)
- [options](Notification.md#options)
- [receiver](Notification.md#receiver)
- [sentDate](Notification.md#sentdate)
- [subject](Notification.md#subject)
- [type](Notification.md#type)

## Constructors

### constructor

• **new Notification**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Notification`](Notification.md)\> |

#### Inherited from

CoreEntity<Notification\>.constructor

#### Defined in

packages/core/dist/models/core-entity.d.ts:3

## Properties

### body

• **body**: `string`

#### Implementation of

Message.body

#### Defined in

[services/notification-service/src/models/notification.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification.model.ts#L37)

___

### groupKey

• `Optional` **groupKey**: `string`

#### Defined in

[services/notification-service/src/models/notification.model.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification.model.ts#L70)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/notification-service/src/models/notification.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification.model.ts#L23)

___

### isCritical

• `Optional` **isCritical**: `boolean`

#### Defined in

[services/notification-service/src/models/notification.model.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification.model.ts#L76)

___

### isDraft

• `Optional` **isDraft**: `boolean`

#### Defined in

[services/notification-service/src/models/notification.model.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification.model.ts#L65)

___

### notificationUsers

• **notificationUsers**: [`NotificationUser`](NotificationUser.md)[]

#### Defined in

[services/notification-service/src/models/notification.model.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification.model.ts#L79)

___

### options

• `Optional` **options**: `AnyObject`

#### Implementation of

Message.options

#### Defined in

[services/notification-service/src/models/notification.model.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification.model.ts#L60)

___

### receiver

• **receiver**: `Receiver`

#### Implementation of

Message.receiver

#### Defined in

[services/notification-service/src/models/notification.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification.model.ts#L43)

___

### sentDate

• **sentDate**: `Date`

#### Implementation of

Message.sentDate

#### Defined in

[services/notification-service/src/models/notification.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification.model.ts#L55)

___

### subject

• `Optional` **subject**: `string`

#### Implementation of

Message.subject

#### Defined in

[services/notification-service/src/models/notification.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification.model.ts#L31)

___

### type

• **type**: `MessageType`

#### Implementation of

Message.type

#### Defined in

[services/notification-service/src/models/notification.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification.model.ts#L49)
