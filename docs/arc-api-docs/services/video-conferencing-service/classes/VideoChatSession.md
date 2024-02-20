[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / VideoChatSession

# Class: VideoChatSession

## Hierarchy

- `UserModifiableEntity`<[`VideoChatSession`](VideoChatSession.md)\>

  ↳ **`VideoChatSession`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](VideoChatSession.md#constructor)

### Properties

- [archiveId](VideoChatSession.md#archiveid)
- [createdBy](VideoChatSession.md#createdby)
- [createdOn](VideoChatSession.md#createdon)
- [endTime](VideoChatSession.md#endtime)
- [extId](VideoChatSession.md#extid)
- [extMetadata](VideoChatSession.md#extmetadata)
- [id](VideoChatSession.md#id)
- [isArchived](VideoChatSession.md#isarchived)
- [isScheduled](VideoChatSession.md#isscheduled)
- [meetingLink](VideoChatSession.md#meetinglink)
- [modifiedBy](VideoChatSession.md#modifiedby)
- [modifiedOn](VideoChatSession.md#modifiedon)
- [scheduleTime](VideoChatSession.md#scheduletime)
- [sessionId](VideoChatSession.md#sessionid)
- [startTime](VideoChatSession.md#starttime)
- [uploadTarget](VideoChatSession.md#uploadtarget)

## Constructors

### constructor

• **new VideoChatSession**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`VideoChatSession`](VideoChatSession.md)\> |

#### Inherited from

UserModifiableEntity<VideoChatSession\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### archiveId

• `Optional` **archiveId**: `string`

#### Defined in

[services/video-conferencing-service/src/models/video-chat-session.model.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/video-chat-session.model.ts#L65)

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

### endTime

• `Optional` **endTime**: `Date`

#### Defined in

[services/video-conferencing-service/src/models/video-chat-session.model.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/video-chat-session.model.ts#L83)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/video-conferencing-service/src/models/video-chat-session.model.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/video-chat-session.model.ts#L89)

___

### extMetadata

• `Optional` **extMetadata**: `object`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/video-conferencing-service/src/models/video-chat-session.model.ts:95](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/video-chat-session.model.ts#L95)

___

### id

• `Optional` **id**: `number`

#### Defined in

[services/video-conferencing-service/src/models/video-chat-session.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/video-chat-session.model.ts#L23)

___

### isArchived

• **isArchived**: `boolean`

#### Defined in

[services/video-conferencing-service/src/models/video-chat-session.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/video-chat-session.model.ts#L59)

___

### isScheduled

• **isScheduled**: `boolean`

#### Defined in

[services/video-conferencing-service/src/models/video-chat-session.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/video-chat-session.model.ts#L45)

___

### meetingLink

• **meetingLink**: `string`

#### Defined in

[services/video-conferencing-service/src/models/video-chat-session.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/video-chat-session.model.ts#L37)

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

### scheduleTime

• `Optional` **scheduleTime**: `Date`

#### Defined in

[services/video-conferencing-service/src/models/video-chat-session.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/video-chat-session.model.ts#L51)

___

### sessionId

• **sessionId**: `string`

#### Defined in

[services/video-conferencing-service/src/models/video-chat-session.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/video-chat-session.model.ts#L30)

___

### startTime

• `Optional` **startTime**: `Date`

#### Defined in

[services/video-conferencing-service/src/models/video-chat-session.model.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/video-chat-session.model.ts#L77)

___

### uploadTarget

• `Optional` **uploadTarget**: `string`

#### Defined in

[services/video-conferencing-service/src/models/video-chat-session.model.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/video-chat-session.model.ts#L71)
