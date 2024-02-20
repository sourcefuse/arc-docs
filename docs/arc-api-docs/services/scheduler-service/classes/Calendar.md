[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / Calendar

# Class: Calendar

## Hierarchy

- `UserModifiableEntity`<[`Calendar`](Calendar.md)\>

  ↳ **`Calendar`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](Calendar.md#constructor)

### Properties

- [createdBy](Calendar.md#createdby)
- [createdOn](Calendar.md#createdon)
- [enableWorkingHours](Calendar.md#enableworkinghours)
- [events](Calendar.md#events)
- [extId](Calendar.md#extid)
- [extMetadata](Calendar.md#extmetadata)
- [id](Calendar.md#id)
- [identifier](Calendar.md#identifier)
- [location](Calendar.md#location)
- [modifiedBy](Calendar.md#modifiedby)
- [modifiedOn](Calendar.md#modifiedon)
- [source](Calendar.md#source)
- [subscriptions](Calendar.md#subscriptions)
- [summary](Calendar.md#summary)
- [timezone](Calendar.md#timezone)
- [workingHours](Calendar.md#workinghours)

## Constructors

### constructor

• **new Calendar**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Calendar`](Calendar.md)\> |

#### Inherited from

UserModifiableEntity<Calendar\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### enableWorkingHours

• `Optional` **enableWorkingHours**: `boolean`

#### Defined in

[services/scheduler-service/src/models/calendar.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.model.ts#L37)

___

### events

• **events**: [`Event`](Event.md)<`DataObject`<`Model`\>\>[]

#### Defined in

[services/scheduler-service/src/models/calendar.model.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.model.ts#L74)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/scheduler-service/src/models/calendar.model.ts:86](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.model.ts#L86)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/scheduler-service/src/models/calendar.model.ts:92](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.model.ts#L92)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.model.ts#L25)

___

### identifier

• **identifier**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.model.ts#L55)

___

### location

• `Optional` **location**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.model.ts#L45)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### source

• `Optional` **source**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.model.ts#L30)

___

### subscriptions

• **subscriptions**: [`Subscription`](Subscription.md)[]

#### Defined in

[services/scheduler-service/src/models/calendar.model.ts:80](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.model.ts#L80)

___

### summary

• `Optional` **summary**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.model.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.model.ts#L63)

___

### timezone

• `Optional` **timezone**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.model.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.model.ts#L71)

___

### workingHours

• **workingHours**: [`WorkingHour`](WorkingHour.md)[]

#### Defined in

[services/scheduler-service/src/models/calendar.model.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.model.ts#L77)
