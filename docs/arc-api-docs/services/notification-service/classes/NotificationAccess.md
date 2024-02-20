[@sourceloop/notification-service](../README.md) / [Exports](../modules.md) / NotificationAccess

# Class: NotificationAccess

## Hierarchy

- `CoreEntity`<[`NotificationAccess`](NotificationAccess.md)\>

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

#### Inherited from

CoreEntity<NotificationAccess\>.constructor

#### Defined in

packages/core/dist/models/core-entity.d.ts:3

## Properties

### options

• `Optional` **options**: `AnyObject`

#### Implementation of

Config.options

#### Defined in

[services/notification-service/src/models/notification-access.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-access.model.ts#L34)

___

### receiver

• **receiver**: `PubNubReceiver`

#### Implementation of

Config.receiver

#### Defined in

[services/notification-service/src/models/notification-access.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-access.model.ts#L22)

___

### type

• **type**: `MessageType`

#### Implementation of

Config.type

#### Defined in

[services/notification-service/src/models/notification-access.model.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-access.model.ts#L28)
