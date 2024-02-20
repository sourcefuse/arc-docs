[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / SessionAttendees

# Class: SessionAttendees

## Hierarchy

- `CoreEntity`<[`SessionAttendees`](SessionAttendees.md)\>

  ↳ **`SessionAttendees`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](SessionAttendees.md#constructor)

### Properties

- [attendee](SessionAttendees.md#attendee)
- [createdOn](SessionAttendees.md#createdon)
- [extId](SessionAttendees.md#extid)
- [extMetadata](SessionAttendees.md#extmetadata)
- [id](SessionAttendees.md#id)
- [isDeleted](SessionAttendees.md#isdeleted)
- [modifiedOn](SessionAttendees.md#modifiedon)
- [sessionId](SessionAttendees.md#sessionid)

## Constructors

### constructor

• **new SessionAttendees**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`SessionAttendees`](SessionAttendees.md)\> |

#### Inherited from

CoreEntity<SessionAttendees\>.constructor

#### Defined in

packages/core/dist/models/core-entity.d.ts:3

## Properties

### attendee

• **attendee**: `string`

#### Defined in

[services/video-conferencing-service/src/models/session-attendees.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/session-attendees.model.ts#L31)

___

### createdOn

• **createdOn**: `Date`

#### Defined in

[services/video-conferencing-service/src/models/session-attendees.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/session-attendees.model.ts#L37)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/video-conferencing-service/src/models/session-attendees.model.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/session-attendees.model.ts#L53)

___

### extMetadata

• `Optional` **extMetadata**: `object`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/video-conferencing-service/src/models/session-attendees.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/session-attendees.model.ts#L58)

___

### id

• `Optional` **id**: `number`

#### Defined in

[services/video-conferencing-service/src/models/session-attendees.model.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/session-attendees.model.ts#L19)

___

### isDeleted

• **isDeleted**: `boolean`

#### Defined in

[services/video-conferencing-service/src/models/session-attendees.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/session-attendees.model.ts#L48)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Defined in

[services/video-conferencing-service/src/models/session-attendees.model.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/session-attendees.model.ts#L42)

___

### sessionId

• **sessionId**: `string`

#### Defined in

[services/video-conferencing-service/src/models/session-attendees.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/session-attendees.model.ts#L25)
