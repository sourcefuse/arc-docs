[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / ValidatorService

# Class: ValidatorService

## Table of contents

### Constructors

- [constructor](ValidatorService.md#constructor)

### Properties

- [calendarRepository](ValidatorService.md#calendarrepository)
- [currentUser](ValidatorService.md#currentuser)
- [eventRepository](ValidatorService.md#eventrepository)
- [schdulerConfig](ValidatorService.md#schdulerconfig)
- [subscriptionRepository](ValidatorService.md#subscriptionrepository)

### Methods

- [calendarExists](ValidatorService.md#calendarexists)
- [eventExists](ValidatorService.md#eventexists)
- [minMaxTime](ValidatorService.md#minmaxtime)
- [primaryToCalendarId](ValidatorService.md#primarytocalendarid)

## Constructors

### constructor

• **new ValidatorService**(`calendarRepository`, `eventRepository`, `subscriptionRepository`, `currentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `calendarRepository` | [`CalendarRepository`](CalendarRepository.md) |
| `eventRepository` | [`EventRepository`](EventRepository.md) |
| `subscriptionRepository` | [`SubscriptionRepository`](SubscriptionRepository.md) |
| `currentUser` | `IAuthUserWithPermissions`<`string`, `string`, `string`\> |

#### Defined in

[services/scheduler-service/src/services/validator.service.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/validator.service.ts#L20)

## Properties

### calendarRepository

• **calendarRepository**: [`CalendarRepository`](CalendarRepository.md)

#### Defined in

[services/scheduler-service/src/services/validator.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/validator.service.ts#L22)

___

### currentUser

• `Private` `Readonly` **currentUser**: `IAuthUserWithPermissions`<`string`, `string`, `string`\>

#### Defined in

[services/scheduler-service/src/services/validator.service.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/validator.service.ts#L28)

___

### eventRepository

• **eventRepository**: [`EventRepository`](EventRepository.md)

#### Defined in

[services/scheduler-service/src/services/validator.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/validator.service.ts#L24)

___

### schdulerConfig

• `Private` `Optional` `Readonly` **schdulerConfig**: [`ISchedulerConfig`](../interfaces/ISchedulerConfig.md)

#### Defined in

[services/scheduler-service/src/services/validator.service.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/validator.service.ts#L70)

___

### subscriptionRepository

• **subscriptionRepository**: [`SubscriptionRepository`](SubscriptionRepository.md)

#### Defined in

[services/scheduler-service/src/services/validator.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/validator.service.ts#L26)

## Methods

### calendarExists

▸ **calendarExists**(`calendarId?`): `Promise`<`boolean`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `calendarId?` | `string` |

#### Returns

`Promise`<`boolean`\>

#### Defined in

[services/scheduler-service/src/services/validator.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/validator.service.ts#L31)

___

### eventExists

▸ **eventExists**(`eventId?`): `Promise`<`boolean`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `eventId?` | `string` |

#### Returns

`Promise`<`boolean`\>

#### Defined in

[services/scheduler-service/src/services/validator.service.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/validator.service.ts#L53)

___

### minMaxTime

▸ **minMaxTime**(`timeMin?`, `timeMax?`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `timeMin?` | `Date` |
| `timeMax?` | `Date` |

#### Returns

`boolean`

#### Defined in

[services/scheduler-service/src/services/validator.service.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/validator.service.ts#L45)

___

### primaryToCalendarId

▸ **primaryToCalendarId**(`id`): `Promise`<``null`` \| `string`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |

#### Returns

`Promise`<``null`` \| `string`\>

#### Defined in

[services/scheduler-service/src/services/validator.service.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/validator.service.ts#L71)
