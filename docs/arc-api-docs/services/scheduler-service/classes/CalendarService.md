[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / CalendarService

# Class: CalendarService

## Table of contents

### Constructors

- [constructor](CalendarService.md#constructor)

### Properties

- [calendarRepository](CalendarService.md#calendarrepository)
- [workingHourRepository](CalendarService.md#workinghourrepository)

### Methods

- [checkPutValidations](CalendarService.md#checkputvalidations)
- [createCalendar](CalendarService.md#createcalendar)
- [deleteWorkingHours](CalendarService.md#deleteworkinghours)

## Constructors

### constructor

• **new CalendarService**(`workingHourRepository`, `calendarRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `workingHourRepository` | [`WorkingHourRepository`](WorkingHourRepository.md) |
| `calendarRepository` | [`CalendarRepository`](CalendarRepository.md) |

#### Defined in

[services/scheduler-service/src/services/calendar.service.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/calendar.service.ts#L15)

## Properties

### calendarRepository

• **calendarRepository**: [`CalendarRepository`](CalendarRepository.md)

#### Defined in

[services/scheduler-service/src/services/calendar.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/calendar.service.ts#L19)

___

### workingHourRepository

• **workingHourRepository**: [`WorkingHourRepository`](WorkingHourRepository.md)

#### Defined in

[services/scheduler-service/src/services/calendar.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/calendar.service.ts#L17)

## Methods

### checkPutValidations

▸ **checkPutValidations**(`workingHours`, `calendarId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `workingHours` | [`WorkingHour`](WorkingHour.md)[] |
| `calendarId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/scheduler-service/src/services/calendar.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/calendar.service.ts#L22)

___

### createCalendar

▸ **createCalendar**(`calendarDTO`): `Promise`<[`Calendar`](Calendar.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `calendarDTO` | [`CalendarDTO`](CalendarDTO.md) |

#### Returns

`Promise`<[`Calendar`](Calendar.md)\>

#### Defined in

[services/scheduler-service/src/services/calendar.service.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/calendar.service.ts#L37)

___

### deleteWorkingHours

▸ **deleteWorkingHours**(`workingHours`, `calendarId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `workingHours` | [`WorkingHour`](WorkingHour.md)[] |
| `calendarId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/scheduler-service/src/services/calendar.service.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/calendar.service.ts#L60)
