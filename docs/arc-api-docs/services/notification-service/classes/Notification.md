[@sourceloop/notification-service](../README.md) / [Exports](../modules.md) / Notification

# Class: Notification

## Hierarchy

- `Entity`

  ↳ **`Notification`**

## Implements

- `Message`

## Table of contents

### Constructors

- [constructor](Notification.md#constructor)

### Properties

- [body](Notification.md#body)
- [id](Notification.md#id)
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

#### Overrides

Entity.constructor

#### Defined in

[services/notification-service/src/models/notification.model.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/notification-service/src/models/notification.model.ts#L64)

## Properties

### body

• **body**: `string`

#### Implementation of

Message.body

#### Defined in

[services/notification-service/src/models/notification.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/notification-service/src/models/notification.model.ts#L36)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/notification-service/src/models/notification.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/notification-service/src/models/notification.model.ts#L22)

___

### notificationUsers

• **notificationUsers**: [`NotificationUser`](NotificationUser.md)[]

#### Defined in

[services/notification-service/src/models/notification.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/notification-service/src/models/notification.model.ts#L62)

___

### options

• `Optional` **options**: `MessageOptions`

#### Implementation of

Message.options

#### Defined in

[services/notification-service/src/models/notification.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/notification-service/src/models/notification.model.ts#L59)

___

### receiver

• **receiver**: `Receiver`

#### Implementation of

Message.receiver

#### Defined in

[services/notification-service/src/models/notification.model.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/notification-service/src/models/notification.model.ts#L42)

___

### sentDate

• **sentDate**: `Date`

#### Implementation of

Message.sentDate

#### Defined in

[services/notification-service/src/models/notification.model.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/notification-service/src/models/notification.model.ts#L54)

___

### subject

• `Optional` **subject**: `string`

#### Implementation of

Message.subject

#### Defined in

[services/notification-service/src/models/notification.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/notification-service/src/models/notification.model.ts#L30)

___

### type

• **type**: `MessageType`

#### Implementation of

Message.type

#### Defined in

[services/notification-service/src/models/notification.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/notification-service/src/models/notification.model.ts#L48)
