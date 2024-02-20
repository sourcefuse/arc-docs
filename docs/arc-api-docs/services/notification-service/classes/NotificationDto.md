[@sourceloop/notification-service](../README.md) / [Exports](../modules.md) / NotificationDto

# Class: NotificationDto

## Hierarchy

- `Model`

  ↳ **`NotificationDto`**

## Table of contents

### Constructors

- [constructor](NotificationDto.md#constructor)

### Properties

- [body](NotificationDto.md#body)
- [groupKey](NotificationDto.md#groupkey)
- [id](NotificationDto.md#id)
- [isCritical](NotificationDto.md#iscritical)
- [options](NotificationDto.md#options)
- [receiver](NotificationDto.md#receiver)
- [sentDate](NotificationDto.md#sentdate)
- [subject](NotificationDto.md#subject)
- [type](NotificationDto.md#type)

## Constructors

### constructor

• **new NotificationDto**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`NotificationDto`](NotificationDto.md)\> |

#### Overrides

Model.constructor

#### Defined in

[services/notification-service/src/models/notification-dto.model.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-dto.model.ts#L63)

## Properties

### body

• `Optional` **body**: `string`

#### Defined in

[services/notification-service/src/models/notification-dto.model.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-dto.model.ts#L27)

___

### groupKey

• `Optional` **groupKey**: `string`

#### Defined in

[services/notification-service/src/models/notification-dto.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-dto.model.ts#L50)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/notification-service/src/models/notification-dto.model.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-dto.model.ts#L13)

___

### isCritical

• `Optional` **isCritical**: `boolean`

#### Defined in

[services/notification-service/src/models/notification-dto.model.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-dto.model.ts#L39)

___

### options

• `Optional` **options**: `AnyObject`

#### Defined in

[services/notification-service/src/models/notification-dto.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-dto.model.ts#L55)

___

### receiver

• `Optional` **receiver**: `Receiver`

#### Defined in

[services/notification-service/src/models/notification-dto.model.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-dto.model.ts#L33)

___

### sentDate

• **sentDate**: `Date`

#### Defined in

[services/notification-service/src/models/notification-dto.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-dto.model.ts#L61)

___

### subject

• `Optional` **subject**: `string`

#### Defined in

[services/notification-service/src/models/notification-dto.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-dto.model.ts#L21)

___

### type

• **type**: `MessageType`

#### Defined in

[services/notification-service/src/models/notification-dto.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/models/notification-dto.model.ts#L45)
