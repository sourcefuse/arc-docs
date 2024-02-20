[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / EventService

# Class: EventService

## Table of contents

### Constructors

- [constructor](EventService.md#constructor)

### Properties

- [eventAttendeeViewRepository](EventService.md#eventattendeeviewrepository)

### Methods

- [addToBusyArray](EventService.md#addtobusyarray)
- [getBusyDetails](EventService.md#getbusydetails)
- [limitTimeToBoundaryValues](EventService.md#limittimetoboundaryvalues)
- [validateDateForTimeZone](EventService.md#validatedatefortimezone)

## Constructors

### constructor

• **new EventService**(`eventAttendeeViewRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `eventAttendeeViewRepository` | [`EventAttendeeViewRepository`](EventAttendeeViewRepository.md) |

#### Defined in

[services/scheduler-service/src/services/event.service.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/event.service.ts#L16)

## Properties

### eventAttendeeViewRepository

• **eventAttendeeViewRepository**: [`EventAttendeeViewRepository`](EventAttendeeViewRepository.md)

#### Defined in

[services/scheduler-service/src/services/event.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/event.service.ts#L18)

## Methods

### addToBusyArray

▸ **addToBusyArray**(`busy`, `entityList`): [`IStartEndTime`](../interfaces/IStartEndTime.md)[]

#### Parameters

| Name | Type |
| :------ | :------ |
| `busy` | [`IStartEndTime`](../interfaces/IStartEndTime.md)[] |
| `entityList` | [`IStartEndTime`](../interfaces/IStartEndTime.md)[] |

#### Returns

[`IStartEndTime`](../interfaces/IStartEndTime.md)[]

#### Defined in

[services/scheduler-service/src/services/event.service.ts:99](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/event.service.ts#L99)

___

### getBusyDetails

▸ **getBusyDetails**(`item`, `timeMax`, `timeMin`): `Promise`<{ `busy`: [`IStartEndTime`](../interfaces/IStartEndTime.md)[] = busyDetails }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `item` | [`EventAttendeeViewItemDTO`](EventAttendeeViewItemDTO.md) |
| `timeMax` | `Date` |
| `timeMin` | `Date` |

#### Returns

`Promise`<{ `busy`: [`IStartEndTime`](../interfaces/IStartEndTime.md)[] = busyDetails }\>

#### Defined in

[services/scheduler-service/src/services/event.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/event.service.ts#L21)

___

### limitTimeToBoundaryValues

▸ **limitTimeToBoundaryValues**(`timesObj`, `startTime`, `endTime`): `Promise`<[`IStartEndTime`](../interfaces/IStartEndTime.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `timesObj` | [`IStartEndTime`](../interfaces/IStartEndTime.md)[] |
| `startTime` | `Date` |
| `endTime` | `Date` |

#### Returns

`Promise`<[`IStartEndTime`](../interfaces/IStartEndTime.md)[]\>

#### Defined in

[services/scheduler-service/src/services/event.service.ts:116](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/event.service.ts#L116)

___

### validateDateForTimeZone

▸ **validateDateForTimeZone**(`date`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `date` | `Date` |

#### Returns

`boolean`

#### Defined in

[services/scheduler-service/src/services/event.service.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/event.service.ts#L89)
