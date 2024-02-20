[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / CalendarDTO

# Class: CalendarDTO

## Hierarchy

- `CoreModel`<[`CalendarDTO`](CalendarDTO.md)\>

  ↳ **`CalendarDTO`**

## Table of contents

### Constructors

- [constructor](CalendarDTO.md#constructor)

### Properties

- [enableWorkingHours](CalendarDTO.md#enableworkinghours)
- [extId](CalendarDTO.md#extid)
- [extMetadata](CalendarDTO.md#extmetadata)
- [id](CalendarDTO.md#id)
- [identifier](CalendarDTO.md#identifier)
- [location](CalendarDTO.md#location)
- [source](CalendarDTO.md#source)
- [subscription](CalendarDTO.md#subscription)
- [summary](CalendarDTO.md#summary)
- [timezone](CalendarDTO.md#timezone)
- [workingHours](CalendarDTO.md#workinghours)

## Constructors

### constructor

• **new CalendarDTO**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`CalendarDTO`](CalendarDTO.md)\> |

#### Inherited from

CoreModel<CalendarDTO\>.constructor

#### Defined in

packages/core/dist/models/core-model.d.ts:3

## Properties

### enableWorkingHours

• `Optional` **enableWorkingHours**: `boolean`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.dto.ts#L28)

___

### extId

• `Optional` **extId**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.dto.ts#L68)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.dto.ts#L74)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.dto.ts#L16)

___

### identifier

• **identifier**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.dto.ts#L46)

___

### location

• `Optional` **location**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.dto.ts#L36)

___

### source

• `Optional` **source**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.dto.ts#L21)

___

### subscription

• `Optional` **subscription**: [`Subscription`](Subscription.md)

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.dto.ts#L82)

___

### summary

• `Optional` **summary**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.dto.ts#L54)

___

### timezone

• `Optional` **timezone**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.dto.ts#L62)

___

### workingHours

• `Optional` **workingHours**: [`WorkingHour`](WorkingHour.md)[]

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.dto.ts#L77)
