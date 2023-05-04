[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / Event

# Class: Event

## Hierarchy

- `UserModifiableEntity`

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

• **new Event**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Event`](Event.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/scheduler-service/src/models/event.model.ts:170](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L170)

## Properties

### attachments

• **attachments**: [`Attachment`](Attachment.md)[]

#### Defined in

[services/scheduler-service/src/models/event.model.ts:156](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L156)

___

### attendees

• **attendees**: [`Attendee`](Attendee.md)[]

#### Defined in

[services/scheduler-service/src/models/event.model.ts:153](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L153)

___

### bgColor

• `Optional` **bgColor**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L37)

___

### calendarId

• **calendarId**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:141](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L141)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:3

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:3

___

### description

• `Optional` **description**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L42)

___

### endDateTime

• `Optional` **endDateTime**: `Date`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L48)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/scheduler-service/src/models/event.model.ts:162](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L162)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/scheduler-service/src/models/event.model.ts:168](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L168)

___

### fgColor

• `Optional` **fgColor**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L54)

___

### iCalUid

• `Optional` **iCalUid**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L60)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L31)

___

### identifier

• `Optional` **identifier**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:102](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L102)

___

### isFullDayEvent

• `Optional` **isFullDayEvent**: `boolean`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L67)

___

### isLocked

• `Optional` **isLocked**: `boolean`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L74)

___

### link

• `Optional` **link**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L79)

___

### location

• `Optional` **location**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L87)

___

### meetingLink

• `Optional` **meetingLink**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L93)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### parentEventId

• `Optional` **parentEventId**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:150](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L150)

___

### startDateTime

• `Optional` **startDateTime**: `Date`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L108)

___

### status

• `Optional` **status**: [`StatusType`](../enums/StatusType.md)

#### Defined in

[services/scheduler-service/src/models/event.model.ts:121](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L121)

___

### summary

• `Optional` **summary**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:126](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L126)

___

### timezone

• `Optional` **timezone**: `string`

#### Defined in

[services/scheduler-service/src/models/event.model.ts:131](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/scheduler-service/src/models/event.model.ts#L131)
