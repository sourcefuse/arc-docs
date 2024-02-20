[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / EventAttendeeView

# Class: EventAttendeeView

## Hierarchy

- [`Event`](Event.md)<[`EventAttendeeView`](EventAttendeeView.md)\>

  ↳ **`EventAttendeeView`**

## Table of contents

### Constructors

- [constructor](EventAttendeeView.md#constructor)

### Properties

- [attachments](EventAttendeeView.md#attachments)
- [attendeeId](EventAttendeeView.md#attendeeid)
- [attendeeIdentifier](EventAttendeeView.md#attendeeidentifier)
- [attendees](EventAttendeeView.md#attendees)
- [bgColor](EventAttendeeView.md#bgcolor)
- [calendarId](EventAttendeeView.md#calendarid)
- [createdBy](EventAttendeeView.md#createdby)
- [createdOn](EventAttendeeView.md#createdon)
- [description](EventAttendeeView.md#description)
- [endDateTime](EventAttendeeView.md#enddatetime)
- [eventId](EventAttendeeView.md#eventid)
- [extId](EventAttendeeView.md#extid)
- [extMetadata](EventAttendeeView.md#extmetadata)
- [fgColor](EventAttendeeView.md#fgcolor)
- [iCalUid](EventAttendeeView.md#icaluid)
- [id](EventAttendeeView.md#id)
- [identifier](EventAttendeeView.md#identifier)
- [isFullDayEvent](EventAttendeeView.md#isfulldayevent)
- [isLocked](EventAttendeeView.md#islocked)
- [isOptional](EventAttendeeView.md#isoptional)
- [isOrganizer](EventAttendeeView.md#isorganizer)
- [link](EventAttendeeView.md#link)
- [location](EventAttendeeView.md#location)
- [meetingLink](EventAttendeeView.md#meetinglink)
- [messages](EventAttendeeView.md#messages)
- [modifiedBy](EventAttendeeView.md#modifiedby)
- [modifiedOn](EventAttendeeView.md#modifiedon)
- [parentEventId](EventAttendeeView.md#parenteventid)
- [responseStatus](EventAttendeeView.md#responsestatus)
- [startDateTime](EventAttendeeView.md#startdatetime)
- [status](EventAttendeeView.md#status)
- [summary](EventAttendeeView.md#summary)
- [timezone](EventAttendeeView.md#timezone)

## Constructors

### constructor

• **new EventAttendeeView**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`EventAttendeeView`](EventAttendeeView.md) & [`Event`](Event.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

[Event](Event.md).[constructor](Event.md#constructor)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### attachments

• **attachments**: [`Attachment`](Attachment.md)[]

#### Inherited from

[Event](Event.md).[attachments](Event.md#attachments)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:158](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L158)

___

### attendeeId

• **attendeeId**: `string`

#### Defined in

[services/scheduler-service/src/models/event-attendee-view.model.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event-attendee-view.model.ts#L18)

___

### attendeeIdentifier

• **attendeeIdentifier**: `string`

#### Defined in

[services/scheduler-service/src/models/event-attendee-view.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event-attendee-view.model.ts#L32)

___

### attendees

• **attendees**: [`Attendee`](Attendee.md)[]

#### Inherited from

[Event](Event.md).[attendees](Event.md#attendees)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:155](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L155)

___

### bgColor

• `Optional` **bgColor**: `string`

#### Inherited from

[Event](Event.md).[bgColor](Event.md#bgcolor)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L39)

___

### calendarId

• **calendarId**: `string`

#### Inherited from

[Event](Event.md).[calendarId](Event.md#calendarid)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:143](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L143)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

[Event](Event.md).[createdBy](Event.md#createdby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

[Event](Event.md).[createdOn](Event.md#createdon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### description

• `Optional` **description**: `string`

#### Inherited from

[Event](Event.md).[description](Event.md#description)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L44)

___

### endDateTime

• `Optional` **endDateTime**: `Date`

#### Inherited from

[Event](Event.md).[endDateTime](Event.md#enddatetime)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L50)

___

### eventId

• **eventId**: `string`

#### Defined in

[services/scheduler-service/src/models/event-attendee-view.model.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event-attendee-view.model.ts#L65)

___

### extId

• `Optional` **extId**: `string`

#### Inherited from

[Event](Event.md).[extId](Event.md#extid)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:164](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L164)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Inherited from

[Event](Event.md).[extMetadata](Event.md#extmetadata)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:170](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L170)

___

### fgColor

• `Optional` **fgColor**: `string`

#### Inherited from

[Event](Event.md).[fgColor](Event.md#fgcolor)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L56)

___

### iCalUid

• `Optional` **iCalUid**: `string`

#### Inherited from

[Event](Event.md).[iCalUid](Event.md#icaluid)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L62)

___

### id

• `Optional` **id**: `string`

#### Inherited from

[Event](Event.md).[id](Event.md#id)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L33)

___

### identifier

• `Optional` **identifier**: `string`

#### Inherited from

[Event](Event.md).[identifier](Event.md#identifier)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:104](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L104)

___

### isFullDayEvent

• `Optional` **isFullDayEvent**: `boolean`

#### Inherited from

[Event](Event.md).[isFullDayEvent](Event.md#isfulldayevent)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L69)

___

### isLocked

• `Optional` **isLocked**: `boolean`

#### Inherited from

[Event](Event.md).[isLocked](Event.md#islocked)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L76)

___

### isOptional

• `Optional` **isOptional**: `boolean`

#### Defined in

[services/scheduler-service/src/models/event-attendee-view.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event-attendee-view.model.ts#L25)

___

### isOrganizer

• `Optional` **isOrganizer**: `boolean`

#### Defined in

[services/scheduler-service/src/models/event-attendee-view.model.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event-attendee-view.model.ts#L39)

___

### link

• `Optional` **link**: `string`

#### Inherited from

[Event](Event.md).[link](Event.md#link)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L81)

___

### location

• `Optional` **location**: `string`

#### Inherited from

[Event](Event.md).[location](Event.md#location)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L89)

___

### meetingLink

• `Optional` **meetingLink**: `string`

#### Inherited from

[Event](Event.md).[meetingLink](Event.md#meetinglink)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:95](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L95)

___

### messages

• `Optional` **messages**: `string`

#### Defined in

[services/scheduler-service/src/models/event-attendee-view.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event-attendee-view.model.ts#L44)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

[Event](Event.md).[modifiedBy](Event.md#modifiedby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

[Event](Event.md).[modifiedOn](Event.md#modifiedon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### parentEventId

• `Optional` **parentEventId**: `string`

#### Inherited from

[Event](Event.md).[parentEventId](Event.md#parenteventid)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:152](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L152)

___

### responseStatus

• `Optional` **responseStatus**: [`ResponseStatusType`](../enums/ResponseStatusType.md)

#### Defined in

[services/scheduler-service/src/models/event-attendee-view.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event-attendee-view.model.ts#L59)

___

### startDateTime

• `Optional` **startDateTime**: `Date`

#### Inherited from

[Event](Event.md).[startDateTime](Event.md#startdatetime)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:110](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L110)

___

### status

• `Optional` **status**: [`StatusType`](../enums/StatusType.md)

#### Inherited from

[Event](Event.md).[status](Event.md#status)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:123](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L123)

___

### summary

• `Optional` **summary**: `string`

#### Inherited from

[Event](Event.md).[summary](Event.md#summary)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:128](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L128)

___

### timezone

• `Optional` **timezone**: `string`

#### Inherited from

[Event](Event.md).[timezone](Event.md#timezone)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:133](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.model.ts#L133)
