[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / Event

# Class: Event<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

## Hierarchy

- `UserModifiableEntity`<`T` & [`Event`](Event.md)\>

  ↳ **`Event`**

  ↳↳ [`EventAttendeeView`](EventAttendeeView.md)

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](Event.md#constructor)

### Properties

- [attachments](Event.md#attachments)
- [attendees](Event.md#attendees)
- [bgColor](Event.md#bgcolor)
- [calendarId](Event.md#calendarid)
- [createdBy](Event.md#createdby)
- [createdOn](Event.md#createdon)
- [description](Event.md#description)
- [endDateTime](Event.md#enddatetime)
- [extId](Event.md#extid)
- [extMetadata](Event.md#extmetadata)
- [fgColor](Event.md#fgcolor)
- [iCalUid](Event.md#icaluid)
- [id](Event.md#id)
- [identifier](Event.md#identifier)
- [isFullDayEvent](Event.md#isfulldayevent)
- [isLocked](Event.md#islocked)
- [link](Event.md#link)
- [location](Event.md#location)
- [meetingLink](Event.md#meetinglink)
- [modifiedBy](Event.md#modifiedby)
- [modifiedOn](Event.md#modifiedon)
- [parentEventId](Event.md#parenteventid)
- [startDateTime](Event.md#startdatetime)
- [status](Event.md#status)
- [summary](Event.md#summary)
- [timezone](Event.md#timezone)

## Constructors

### constructor

• **new Event**<`T`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<`T` & [`Event`](Event.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

UserModifiableEntity<T & Event\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### attachments

• **attachments**: [`Attachment`](Attachment.md)[]

#### Defined in

[services/scheduler-service/src/models/event.model.ts:158](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L158)

___

### attendees

• **attendees**: [`Attendee`](Attendee.md)[]

#### Defined in

[services/scheduler-service/src/models/event.model.ts:155](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L155)

___

### bgColor

• `Optional` **bgColor**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L39)

___

### calendarId

• **calendarId**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:143](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L143)

___

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

### description

• `Optional` **description**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L44)

___

### endDateTime

• `Optional` **endDateTime**: `Date`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L50)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/scheduler-service/src/models/event.model.ts:164](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L164)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/scheduler-service/src/models/event.model.ts:170](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L170)

___

### fgColor

• `Optional` **fgColor**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L56)

___

### iCalUid

• `Optional` **iCalUid**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L62)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L33)

___

### identifier

• `Optional` **identifier**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:104](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L104)

___

### isFullDayEvent

• `Optional` **isFullDayEvent**: `boolean`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L69)

___

### isLocked

• `Optional` **isLocked**: `boolean`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L76)

___

### link

• `Optional` **link**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L81)

___

### location

• `Optional` **location**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L89)

___

### meetingLink

• `Optional` **meetingLink**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:95](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L95)

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

### parentEventId

• `Optional` **parentEventId**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:152](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L152)

___

### startDateTime

• `Optional` **startDateTime**: `Date`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:110](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L110)

___

### status

• `Optional` **status**: [`StatusType`](../enums/StatusType.md)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:123](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L123)

___

### summary

• `Optional` **summary**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:128](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L128)

___

### timezone

• `Optional` **timezone**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:133](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L133)
