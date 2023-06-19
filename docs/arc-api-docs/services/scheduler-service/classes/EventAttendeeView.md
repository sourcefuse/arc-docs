[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / EventAttendeeView

# Class: EventAttendeeView

## Hierarchy

- [`Event`](Event.md)

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
| `data?` | `Partial`<[`EventAttendeeView`](EventAttendeeView.md)\> |

#### Overrides

[Event](Event.md).[constructor](Event.md#constructor)

#### Defined in

[services/scheduler-service/src/models/event-attendee-view.model.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event-attendee-view.model.ts#L67)

## Properties

### attachments

• **attachments**: [`Attachment`](Attachment.md)[]

#### Inherited from

[Event](Event.md).[attachments](Event.md#attachments)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:156](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L156)

___

### attendeeId

• **attendeeId**: `string`

#### Defined in

[services/scheduler-service/src/models/event-attendee-view.model.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event-attendee-view.model.ts#L18)

___

### attendeeIdentifier

• **attendeeIdentifier**: `string`

#### Defined in

[services/scheduler-service/src/models/event-attendee-view.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event-attendee-view.model.ts#L32)

___

### attendees

• **attendees**: [`Attendee`](Attendee.md)[]

#### Inherited from

[Event](Event.md).[attendees](Event.md#attendees)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:153](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L153)

___

### bgColor

• `Optional` **bgColor**: `string`

#### Inherited from

[Event](Event.md).[bgColor](Event.md#bgcolor)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L37)

___

### calendarId

• **calendarId**: `string`

#### Inherited from

[Event](Event.md).[calendarId](Event.md#calendarid)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:141](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L141)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

[Event](Event.md).[createdBy](Event.md#createdby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:3

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

[Event](Event.md).[createdOn](Event.md#createdon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:3

___

### description

• `Optional` **description**: `string`

#### Inherited from

[Event](Event.md).[description](Event.md#description)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L42)

___

### endDateTime

• `Optional` **endDateTime**: `Date`

#### Inherited from

[Event](Event.md).[endDateTime](Event.md#enddatetime)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L48)

___

### eventId

• **eventId**: `string`

#### Defined in

[services/scheduler-service/src/models/event-attendee-view.model.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event-attendee-view.model.ts#L65)

___

### extId

• `Optional` **extId**: `string`

#### Inherited from

[Event](Event.md).[extId](Event.md#extid)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:162](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L162)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Inherited from

[Event](Event.md).[extMetadata](Event.md#extmetadata)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:168](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L168)

___

### fgColor

• `Optional` **fgColor**: `string`

#### Inherited from

[Event](Event.md).[fgColor](Event.md#fgcolor)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L54)

___

### iCalUid

• `Optional` **iCalUid**: `string`

#### Inherited from

[Event](Event.md).[iCalUid](Event.md#icaluid)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L60)

___

### id

• `Optional` **id**: `string`

#### Inherited from

[Event](Event.md).[id](Event.md#id)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L31)

___

### identifier

• `Optional` **identifier**: `string`

#### Inherited from

[Event](Event.md).[identifier](Event.md#identifier)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:102](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L102)

___

### isFullDayEvent

• `Optional` **isFullDayEvent**: `boolean`

#### Inherited from

[Event](Event.md).[isFullDayEvent](Event.md#isfulldayevent)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L67)

___

### isLocked

• `Optional` **isLocked**: `boolean`

#### Inherited from

[Event](Event.md).[isLocked](Event.md#islocked)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L74)

___

### isOptional

• `Optional` **isOptional**: `boolean`

#### Defined in

[services/scheduler-service/src/models/event-attendee-view.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event-attendee-view.model.ts#L25)

___

### isOrganizer

• `Optional` **isOrganizer**: `boolean`

#### Defined in

[services/scheduler-service/src/models/event-attendee-view.model.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event-attendee-view.model.ts#L39)

___

### link

• `Optional` **link**: `string`

#### Inherited from

[Event](Event.md).[link](Event.md#link)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L79)

___

### location

• `Optional` **location**: `string`

#### Inherited from

[Event](Event.md).[location](Event.md#location)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L87)

___

### meetingLink

• `Optional` **meetingLink**: `string`

#### Inherited from

[Event](Event.md).[meetingLink](Event.md#meetinglink)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L93)

___

### messages

• `Optional` **messages**: `string`

#### Defined in

[services/scheduler-service/src/models/event-attendee-view.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event-attendee-view.model.ts#L44)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

[Event](Event.md).[modifiedBy](Event.md#modifiedby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

[Event](Event.md).[modifiedOn](Event.md#modifiedon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### parentEventId

• `Optional` **parentEventId**: `string`

#### Inherited from

[Event](Event.md).[parentEventId](Event.md#parenteventid)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:150](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L150)

___

### responseStatus

• `Optional` **responseStatus**: [`ResponseStatusType`](../enums/ResponseStatusType.md)

#### Defined in

[services/scheduler-service/src/models/event-attendee-view.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event-attendee-view.model.ts#L59)

___

### startDateTime

• `Optional` **startDateTime**: `Date`

#### Inherited from

[Event](Event.md).[startDateTime](Event.md#startdatetime)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L108)

___

### status

• `Optional` **status**: [`StatusType`](../enums/StatusType.md)

#### Inherited from

[Event](Event.md).[status](Event.md#status)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:121](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L121)

___

### summary

• `Optional` **summary**: `string`

#### Inherited from

[Event](Event.md).[summary](Event.md#summary)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:126](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L126)

___

### timezone

• `Optional` **timezone**: `string`

#### Inherited from

[Event](Event.md).[timezone](Event.md#timezone)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:131](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/models/event.model.ts#L131)
