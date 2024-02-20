[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / EventDTO

# Class: EventDTO

## Hierarchy

- `CoreModel`<[`EventDTO`](EventDTO.md)\>

  ↳ **`EventDTO`**

## Table of contents

### Constructors

- [constructor](EventDTO.md#constructor)

### Properties

- [attachments](EventDTO.md#attachments)
- [attendees](EventDTO.md#attendees)
- [bgColor](EventDTO.md#bgcolor)
- [calendarId](EventDTO.md#calendarid)
- [description](EventDTO.md#description)
- [endDateTime](EventDTO.md#enddatetime)
- [extId](EventDTO.md#extid)
- [extMetadata](EventDTO.md#extmetadata)
- [fgColor](EventDTO.md#fgcolor)
- [iCalUid](EventDTO.md#icaluid)
- [id](EventDTO.md#id)
- [identifier](EventDTO.md#identifier)
- [isFullDayEvent](EventDTO.md#isfulldayevent)
- [isLocked](EventDTO.md#islocked)
- [link](EventDTO.md#link)
- [location](EventDTO.md#location)
- [meetingLink](EventDTO.md#meetinglink)
- [parentEventId](EventDTO.md#parenteventid)
- [startDateTime](EventDTO.md#startdatetime)
- [status](EventDTO.md#status)
- [summary](EventDTO.md#summary)
- [timezone](EventDTO.md#timezone)

## Constructors

### constructor

• **new EventDTO**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`EventDTO`](EventDTO.md)\> |

#### Inherited from

CoreModel<EventDTO\>.constructor

#### Defined in

packages/core/dist/models/core-model.d.ts:3

## Properties

### attachments

• `Optional` **attachments**: [`Attachment`](Attachment.md)[]

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:131](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L131)

___

### attendees

• `Optional` **attendees**: [`Attendee`](Attendee.md)[]

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:134](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L134)

___

### bgColor

• `Optional` **bgColor**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L23)

___

### calendarId

• **calendarId**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:123](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L123)

___

### description

• `Optional` **description**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L28)

___

### endDateTime

• `Optional` **endDateTime**: `Date`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L34)

___

### extId

• `Optional` **extId**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:140](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L140)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:146](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L146)

___

### fgColor

• `Optional` **fgColor**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L40)

___

### iCalUid

• `Optional` **iCalUid**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L46)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L17)

___

### identifier

• `Optional` **identifier**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L88)

___

### isFullDayEvent

• `Optional` **isFullDayEvent**: `boolean`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L53)

___

### isLocked

• `Optional` **isLocked**: `boolean`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L60)

___

### link

• `Optional` **link**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L65)

___

### location

• `Optional` **location**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L73)

___

### meetingLink

• `Optional` **meetingLink**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L79)

___

### parentEventId

• `Optional` **parentEventId**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:128](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L128)

___

### startDateTime

• `Optional` **startDateTime**: `Date`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L94)

___

### status

• `Optional` **status**: [`StatusType`](../enums/StatusType.md)

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:107](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L107)

___

### summary

• `Optional` **summary**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L112)

___

### timezone

• `Optional` **timezone**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:117](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/event.dto.ts#L117)
