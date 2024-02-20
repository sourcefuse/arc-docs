[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / CalendarEventService

# Class: CalendarEventService

## Table of contents

### Constructors

- [constructor](CalendarEventService.md#constructor)

### Properties

- [subscriptionRepository](CalendarEventService.md#subscriptionrepository)

### Methods

- [getFilter](CalendarEventService.md#getfilter)
- [getWhereClause](CalendarEventService.md#getwhereclause)
- [primarySubscription](CalendarEventService.md#primarysubscription)

## Constructors

### constructor

• **new CalendarEventService**(`subscriptionRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `subscriptionRepository` | [`SubscriptionRepository`](SubscriptionRepository.md) |

#### Defined in

[services/scheduler-service/src/services/calendar-event.service.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/calendar-event.service.ts#L12)

## Properties

### subscriptionRepository

• **subscriptionRepository**: [`SubscriptionRepository`](SubscriptionRepository.md)

#### Defined in

[services/scheduler-service/src/services/calendar-event.service.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/calendar-event.service.ts#L14)

## Methods

### getFilter

▸ **getFilter**(`identifier`, `whereClause`, `filter?`): `Filter`<[`EventAttendeeView`](EventAttendeeView.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `identifier` | `string` |
| `whereClause` | `Where`<`AnyObject`\> |
| `filter?` | `Filter`<[`EventAttendeeView`](EventAttendeeView.md)\> |

#### Returns

`Filter`<[`EventAttendeeView`](EventAttendeeView.md)\>

#### Defined in

[services/scheduler-service/src/services/calendar-event.service.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/calendar-event.service.ts#L54)

___

### getWhereClause

▸ **getWhereClause**(`timeMin?`, `timeMax?`): `Where`<`AnyObject`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `timeMin?` | `Date` |
| `timeMax?` | `Date` |

#### Returns

`Where`<`AnyObject`\>

#### Defined in

[services/scheduler-service/src/services/calendar-event.service.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/calendar-event.service.ts#L25)

___

### primarySubscription

▸ **primarySubscription**(`calendarId`): `Promise`<``null`` \| [`Subscription`](Subscription.md) & [`SubscriptionRelations`](../interfaces/SubscriptionRelations.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `calendarId` | `string` |

#### Returns

`Promise`<``null`` \| [`Subscription`](Subscription.md) & [`SubscriptionRelations`](../interfaces/SubscriptionRelations.md)\>

#### Defined in

[services/scheduler-service/src/services/calendar-event.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/services/calendar-event.service.ts#L17)
