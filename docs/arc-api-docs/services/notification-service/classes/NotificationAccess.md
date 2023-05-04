[@sourceloop/notification-service](../README.md) / [Exports](../modules.md) / NotificationAccess

# Class: NotificationAccess

## Hierarchy

- `Entity`

  ↳ **`NotificationAccess`**

## Implements

- `Config`

## Table of contents

### Constructors

- [constructor](NotificationAccess.md#constructor)

### Properties

- [options](NotificationAccess.md#options)
- [receiver](NotificationAccess.md#receiver)
- [type](NotificationAccess.md#type)

## Constructors

### constructor

• **new NotificationAccess**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`NotificationAccess`](NotificationAccess.md)\> |

#### Overrides

Entity.constructor

#### Defined in

[services/notification-service/src/models/notification-access.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/notification-service/src/models/notification-access.model.ts#L32)

## Properties

### options

• `Optional` **options**: `MessageOptions`

#### Implementation of

Config.options

#### Defined in

[services/notification-service/src/models/notification-access.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/notification-service/src/models/notification-access.model.ts#L30)

___

### receiver

• **receiver**: `PubNubReceiver`

#### Implementation of

Config.receiver

#### Defined in

[services/notification-service/src/models/notification-access.model.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/notification-service/src/models/notification-access.model.ts#L18)

___

### type

• **type**: `MessageType`

#### Implementation of

Config.type

#### Defined in

[services/notification-service/src/models/notification-access.model.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/notification-service/src/models/notification-access.model.ts#L24)
