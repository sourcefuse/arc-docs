[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / EventDTO

# Class: EventDTO

## Hierarchy

- `Model`

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

#### Overrides

Model.constructor

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:147](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L147)

## Properties

### attachments

• `Optional` **attachments**: [`Attachment`](Attachment.md)[]

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:130](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L130)

___

### attendees

• `Optional` **attendees**: [`Attendee`](Attendee.md)[]

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:133](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L133)

___

### bgColor

• `Optional` **bgColor**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L22)

___

### calendarId

• **calendarId**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:122](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L122)

___

### description

• `Optional` **description**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L27)

___

### endDateTime

• `Optional` **endDateTime**: `Date`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L33)

___

### extId

• `Optional` **extId**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:139](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L139)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:145](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L145)

___

### fgColor

• `Optional` **fgColor**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L39)

___

### iCalUid

• `Optional` **iCalUid**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L45)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L16)

___

### identifier

• `Optional` **identifier**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L87)

___

### isFullDayEvent

• `Optional` **isFullDayEvent**: `boolean`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L52)

___

### isLocked

• `Optional` **isLocked**: `boolean`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L59)

___

### link

• `Optional` **link**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L64)

___

### location

• `Optional` **location**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L72)

___

### meetingLink

• `Optional` **meetingLink**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L78)

___

### parentEventId

• `Optional` **parentEventId**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:127](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L127)

___

### startDateTime

• `Optional` **startDateTime**: `Date`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L93)

___

### status

• `Optional` **status**: [`StatusType`](../enums/StatusType.md)

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:106](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L106)

___

### summary

• `Optional` **summary**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:111](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L111)

___

### timezone

• `Optional` **timezone**: `string`

#### Defined in

[services/scheduler-service/src/models/event.dto.ts:116](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/event.dto.ts#L116)
