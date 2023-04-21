[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / CalendarDTO

# Class: CalendarDTO

## Hierarchy

- `Model`

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

#### Overrides

Model.constructor

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/models/calendar.dto.ts#L83)

## Properties

### enableWorkingHours

• `Optional` **enableWorkingHours**: `boolean`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/models/calendar.dto.ts#L27)

___

### extId

• `Optional` **extId**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/models/calendar.dto.ts#L67)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/models/calendar.dto.ts#L73)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/models/calendar.dto.ts#L15)

___

### identifier

• **identifier**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/models/calendar.dto.ts#L45)

___

### location

• `Optional` **location**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/models/calendar.dto.ts#L35)

___

### source

• `Optional` **source**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/models/calendar.dto.ts#L20)

___

### subscription

• `Optional` **subscription**: [`Subscription`](Subscription.md)

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/models/calendar.dto.ts#L81)

___

### summary

• `Optional` **summary**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/models/calendar.dto.ts#L53)

___

### timezone

• `Optional` **timezone**: `string`

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/models/calendar.dto.ts#L61)

___

### workingHours

• `Optional` **workingHours**: [`WorkingHour`](WorkingHour.md)[]

#### Defined in

[services/scheduler-service/src/models/calendar.dto.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/models/calendar.dto.ts#L76)
