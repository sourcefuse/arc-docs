[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / EventRepository

# Class: EventRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Event`](Event.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`, [`EventRelations`](../interfaces/EventRelations.md), `this`\> & {}

  ↳ **`EventRepository`**

## Table of contents

### Constructors

- [constructor](EventRepository.md#constructor)

### Properties

- [attachmentRepositoryGetter](EventRepository.md#attachmentrepositorygetter)
- [attachments](EventRepository.md#attachments)
- [attendeeRepositoryGetter](EventRepository.md#attendeerepositorygetter)
- [attendees](EventRepository.md#attendees)
- [calendar](EventRepository.md#calendar)
- [calendarRepositoryGetter](EventRepository.md#calendarrepositorygetter)
- [getAuditLogRepository](EventRepository.md#getauditlogrepository)
- [getCurrentUser](EventRepository.md#getcurrentuser)
- [parentEvent](EventRepository.md#parentevent)

### Methods

- [save](EventRepository.md#save)

## Constructors

### constructor

• **new EventRepository**(`dataSource`, `getCurrentUser`, `calendarRepositoryGetter`, `attendeeRepositoryGetter`, `attachmentRepositoryGetter`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `calendarRepositoryGetter` | `Getter`<[`CalendarRepository`](CalendarRepository.md)\> |
| `attendeeRepositoryGetter` | `Getter`<[`AttendeeRepository`](AttendeeRepository.md)\> |
| `attachmentRepositoryGetter` | `Getter`<[`AttachmentRepository`](AttachmentRepository.md)\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    Event,
    typeof Event.prototype.id,
    EventRelations
  \&gt;,
  EventAuditOpts,
).constructor

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/event.repository.ts#L59)

## Properties

### attachmentRepositoryGetter

• `Protected` **attachmentRepositoryGetter**: `Getter`<[`AttachmentRepository`](AttachmentRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/event.repository.ts#L71)

___

### attachments

• `Readonly` **attachments**: `HasManyRepositoryFactory`<[`Attachment`](Attachment.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/event.repository.ts#L54)

___

### attendeeRepositoryGetter

• `Protected` **attendeeRepositoryGetter**: `Getter`<[`AttendeeRepository`](AttendeeRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/event.repository.ts#L69)

___

### attendees

• `Readonly` **attendees**: `HasManyRepositoryFactory`<[`Attendee`](Attendee.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/event.repository.ts#L49)

___

### calendar

• `Readonly` **calendar**: `BelongsToAccessor`<[`Calendar`](Calendar.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/event.repository.ts#L39)

___

### calendarRepositoryGetter

• `Protected` **calendarRepositoryGetter**: `Getter`<[`CalendarRepository`](CalendarRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/event.repository.ts#L67)

___

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/event.repository.ts#L73)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    Event,
    typeof Event.prototype.id,
    EventRelations
  \>,
  EventAuditOpts,
).getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/event.repository.ts#L63)

___

### parentEvent

• `Readonly` **parentEvent**: `BelongsToAccessor`<[`Event`](Event.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/event.repository.ts#L44)

## Methods

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Event`](Event.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Event`](Event.md)<`DataObject`<`Model`\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Event`](Event.md)<`DataObject`<`Model`\>\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    Event,
    typeof Event.prototype.id,
    EventRelations
  \>,
  EventAuditOpts,
).save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13
