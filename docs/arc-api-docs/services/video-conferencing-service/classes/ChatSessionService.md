[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / ChatSessionService

# Class: ChatSessionService

## Table of contents

### Constructors

- [constructor](ChatSessionService.md#constructor)

### Properties

- [config](ChatSessionService.md#config)
- [generator](ChatSessionService.md#generator)
- [sessionAttendeesRepository](ChatSessionService.md#sessionattendeesrepository)
- [videoChatProvider](ChatSessionService.md#videochatprovider)
- [videoChatSessionRepository](ChatSessionService.md#videochatsessionrepository)

### Methods

- [\_validateExpireTime](ChatSessionService.md#_validateexpiretime)
- [\_validateMeetingLinkId](ChatSessionService.md#_validatemeetinglinkid)
- [checkWebhookPayload](ChatSessionService.md#checkwebhookpayload)
- [editMeeting](ChatSessionService.md#editmeeting)
- [endSession](ChatSessionService.md#endsession)
- [getAttendeesList](ChatSessionService.md#getattendeeslist)
- [getMeetingLink](ChatSessionService.md#getmeetinglink)
- [getMeetingToken](ChatSessionService.md#getmeetingtoken)
- [processStreamDestroyedEvent](ChatSessionService.md#processstreamdestroyedevent)

## Constructors

### constructor

• **new ChatSessionService**(`videoChatSessionRepository`, `videoChatProvider`, `generator`, `sessionAttendeesRepository`, `config`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `videoChatSessionRepository` | [`VideoChatSessionRepository`](VideoChatSessionRepository.md) |
| `videoChatProvider` | [`VideoChatInterface`](../interfaces/VideoChatInterface.md) |
| `generator` | [`MeetingLinkIdGenerator`](../modules.md#meetinglinkidgenerator) |
| `sessionAttendeesRepository` | [`SessionAttendeesRepository`](SessionAttendeesRepository.md) |
| `config` | [`IConfig`](../interfaces/IConfig.md) |

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/services/chat-session.service.ts#L32)

## Properties

### config

• `Private` `Readonly` **config**: [`IConfig`](../interfaces/IConfig.md)

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/services/chat-session.service.ts#L42)

___

### generator

• **generator**: [`MeetingLinkIdGenerator`](../modules.md#meetinglinkidgenerator)

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/services/chat-session.service.ts#L38)

___

### sessionAttendeesRepository

• `Private` `Readonly` **sessionAttendeesRepository**: [`SessionAttendeesRepository`](SessionAttendeesRepository.md)

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/services/chat-session.service.ts#L40)

___

### videoChatProvider

• `Private` `Readonly` **videoChatProvider**: [`VideoChatInterface`](../interfaces/VideoChatInterface.md)

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/services/chat-session.service.ts#L36)

___

### videoChatSessionRepository

• `Private` `Readonly` **videoChatSessionRepository**: [`VideoChatSessionRepository`](VideoChatSessionRepository.md)

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/services/chat-session.service.ts#L34)

## Methods

### \_validateExpireTime

▸ `Private` **_validateExpireTime**(`expireTime?`): `void`

The function `_validateExpireTime` checks if the provided expire time is in the correct format and
not in the past.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `expireTime?` | `Date` | The `_validateExpireTime` function is used to validate the `expireTime` parameter. It checks if the `expireTime` is provided and if it is a valid Date object. It also ensures that the `expireTime` is not in the past. |

#### Returns

`void`

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:155](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/services/chat-session.service.ts#L155)

___

### \_validateMeetingLinkId

▸ `Private` **_validateMeetingLinkId**(`meetingLinkId`): `void`

The function `_validateMeetingLinkId` checks if the provided meeting link ID is a valid non-empty
string in TypeScript.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `meetingLinkId` | `string` | The `meetingLinkId` parameter is a string that represents the link to a meeting. The `_validateMeetingLinkId` function is used to check if the `meetingLinkId` is a valid string and not empty. If the `meetingLinkId` is not a valid string or is empty, it will throw |

#### Returns

`void`

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:142](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/services/chat-session.service.ts#L142)

___

### checkWebhookPayload

▸ **checkWebhookPayload**(`webhookPayload`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `webhookPayload` | [`VonageSessionWebhookPayload`](../interfaces/VonageSessionWebhookPayload.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:253](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/services/chat-session.service.ts#L253)

___

### editMeeting

▸ **editMeeting**(`meetingLinkId`, `body`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `meetingLinkId` | `string` |
| `body` | `Partial`<[`VideoChatSession`](VideoChatSession.md)\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:168](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/services/chat-session.service.ts#L168)

___

### endSession

▸ **endSession**(`meetingLinkId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `meetingLinkId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:224](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/services/chat-session.service.ts#L224)

___

### getAttendeesList

▸ **getAttendeesList**(`meetingLinkId`, `active`): `Promise`<[`SessionAttendees`](SessionAttendees.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `meetingLinkId` | `string` |
| `active` | `string` |

#### Returns

`Promise`<[`SessionAttendees`](SessionAttendees.md)[]\>

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:278](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/services/chat-session.service.ts#L278)

___

### getMeetingLink

▸ **getMeetingLink**(`meetingOptions`): `Promise`<[`MeetingLink`](../interfaces/MeetingLink.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `meetingOptions` | [`MeetingOptions`](../interfaces/MeetingOptions.md) |

#### Returns

`Promise`<[`MeetingLink`](../interfaces/MeetingLink.md)\>

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/services/chat-session.service.ts#L45)

___

### getMeetingToken

▸ **getMeetingToken**(`sessionOptions`, `meetingLinkId`): `Promise`<[`SessionResponse`](../interfaces/SessionResponse.md)\>

The function `getMeetingToken` retrieves a session token for a meeting based on provided options and
meeting link ID, with validation checks for session existence, expiration, and scheduled start time.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `sessionOptions` | [`SessionOptions`](../interfaces/SessionOptions.md) | The `sessionOptions` parameter in the `getMeetingToken` function represents the options for the session, such as the configuration settings for the meeting. It is an object that contains various properties like `expireTime`, `sessionId`, etc., which are used to customize the session behavior. |
| `meetingLinkId` | `string` | The `meetingLinkId` parameter is a string that represents the unique identifier for a specific meeting or session. It is used to retrieve information about the meeting from the database and validate its status before generating a meeting token. |

#### Returns

`Promise`<[`SessionResponse`](../interfaces/SessionResponse.md)\>

The `getMeetingToken` function returns a Promise that resolves to a `SessionResponse`
object.

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:97](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/services/chat-session.service.ts#L97)

___

### processStreamDestroyedEvent

▸ **processStreamDestroyedEvent**(`webhookPayload`, `sessionAttendeeDetail`, `updatedAttendee`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `webhookPayload` | [`VonageSessionWebhookPayload`](../interfaces/VonageSessionWebhookPayload.md) |
| `sessionAttendeeDetail` | [`SessionAttendees`](SessionAttendees.md) |
| `updatedAttendee` | `Partial`<[`SessionAttendees`](SessionAttendees.md)\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:256](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/services/chat-session.service.ts#L256)
