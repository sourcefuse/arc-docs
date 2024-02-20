[@sourceloop/scheduler-service](README.md) / Exports

# @sourceloop/scheduler-service

## Table of contents

### Namespaces

- [CoreSchedulerBindings](modules/CoreSchedulerBindings.md)
- [SchedulerBindings](modules/SchedulerBindings.md)

### Enumerations

- [AccessRoleType](enums/AccessRoleType.md)
- [DayOfWeekType](enums/DayOfWeekType.md)
- [ErrorKeys](enums/ErrorKeys.md)
- [IdentifierType](enums/IdentifierType.md)
- [OwnerType](enums/OwnerType.md)
- [PermissionKey](enums/PermissionKey.md)
- [ResponseStatusType](enums/ResponseStatusType.md)
- [StatusType](enums/StatusType.md)

### Classes

- [Attachment](classes/Attachment.md)
- [AttachmentRepository](classes/AttachmentRepository.md)
- [Attendee](classes/Attendee.md)
- [AttendeeRepository](classes/AttendeeRepository.md)
- [AuditLog](classes/AuditLog.md)
- [AuditLogRepository](classes/AuditLogRepository.md)
- [Calendar](classes/Calendar.md)
- [CalendarDTO](classes/CalendarDTO.md)
- [CalendarEventService](classes/CalendarEventService.md)
- [CalendarRepository](classes/CalendarRepository.md)
- [CalendarService](classes/CalendarService.md)
- [ConditionalAuditLog](classes/ConditionalAuditLog.md)
- [Event](classes/Event.md)
- [EventAttendeeView](classes/EventAttendeeView.md)
- [EventAttendeeViewItemDTO](classes/EventAttendeeViewItemDTO.md)
- [EventAttendeeViewRepository](classes/EventAttendeeViewRepository.md)
- [EventDTO](classes/EventDTO.md)
- [EventRepository](classes/EventRepository.md)
- [EventService](classes/EventService.md)
- [FreeBusyDTO](classes/FreeBusyDTO.md)
- [SchedulerServiceComponent](classes/SchedulerServiceComponent.md)
- [Settings](classes/Settings.md)
- [SettingsRepository](classes/SettingsRepository.md)
- [Subscription](classes/Subscription.md)
- [SubscriptionRepository](classes/SubscriptionRepository.md)
- [Theme](classes/Theme.md)
- [ThemeRepository](classes/ThemeRepository.md)
- [ValidatorService](classes/ValidatorService.md)
- [WorkingHour](classes/WorkingHour.md)
- [WorkingHourRepository](classes/WorkingHourRepository.md)

### Interfaces

- [AttachmentRelations](interfaces/AttachmentRelations.md)
- [AttendeeRelations](interfaces/AttendeeRelations.md)
- [CalendarRelations](interfaces/CalendarRelations.md)
- [EventRelations](interfaces/EventRelations.md)
- [ISchedulerConfig](interfaces/ISchedulerConfig.md)
- [IStartEndTime](interfaces/IStartEndTime.md)
- [SubscriptionRelations](interfaces/SubscriptionRelations.md)
- [WorkingHourRelations](interfaces/WorkingHourRelations.md)

### Type Aliases

- [AttachmentWithRelations](modules.md#attachmentwithrelations)
- [AttendeeWithRelations](modules.md#attendeewithrelations)
- [CalendarWithRelations](modules.md#calendarwithrelations)
- [CustomPermissionFn](modules.md#custompermissionfn)
- [EventWithRelations](modules.md#eventwithrelations)
- [SubscriptionWithRelations](modules.md#subscriptionwithrelations)
- [WorkingHourWithRelations](modules.md#workinghourwithrelations)

### Variables

- [SchedulerDatasourceName](modules.md#schedulerdatasourcename)

## Type Aliases

### AttachmentWithRelations

Ƭ **AttachmentWithRelations**: [`Attachment`](classes/Attachment.md) & [`AttachmentRelations`](interfaces/AttachmentRelations.md)

#### Defined in

[services/scheduler-service/src/models/attachment.model.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attachment.model.ts#L82)

___

### AttendeeWithRelations

Ƭ **AttendeeWithRelations**: [`Attendee`](classes/Attendee.md) & [`AttendeeRelations`](interfaces/AttendeeRelations.md)

#### Defined in

[services/scheduler-service/src/models/attendee.model.ts:97](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attendee.model.ts#L97)

___

### CalendarWithRelations

Ƭ **CalendarWithRelations**: [`Calendar`](classes/Calendar.md) & [`CalendarRelations`](interfaces/CalendarRelations.md)

#### Defined in

[services/scheduler-service/src/models/calendar.model.ts:101](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/calendar.model.ts#L101)

___

### CustomPermissionFn

Ƭ **CustomPermissionFn**: (`user`: `IAuthUserWithPermissions`) => `Promise`<`boolean`\>

#### Type declaration

▸ (`user`): `Promise`<`boolean`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `user` | `IAuthUserWithPermissions` |

##### Returns

`Promise`<`boolean`\>

#### Defined in

[services/scheduler-service/src/types.ts:8](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/types.ts#L8)

___

### EventWithRelations

Ƭ **EventWithRelations**: [`Event`](classes/Event.md) & [`EventRelations`](interfaces/EventRelations.md)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:178](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L178)

___

### SubscriptionWithRelations

Ƭ **SubscriptionWithRelations**: [`Subscription`](classes/Subscription.md) & [`SubscriptionRelations`](interfaces/SubscriptionRelations.md)

#### Defined in

[services/scheduler-service/src/models/subscription.model.ts:113](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/subscription.model.ts#L113)

___

### WorkingHourWithRelations

Ƭ **WorkingHourWithRelations**: [`WorkingHour`](classes/WorkingHour.md) & [`WorkingHourRelations`](interfaces/WorkingHourRelations.md)

#### Defined in

[services/scheduler-service/src/models/working-hour.model.ts:80](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/working-hour.model.ts#L80)

## Variables

### SchedulerDatasourceName

• `Const` **SchedulerDatasourceName**: ``"schedulerDb"``

#### Defined in

[services/scheduler-service/src/keys.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/keys.ts#L20)
