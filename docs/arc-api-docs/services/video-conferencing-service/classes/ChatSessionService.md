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

[services/video-conferencing-service/src/services/chat-session.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-session.service.ts#L31)

## Properties

### config

• `Private` `Readonly` **config**: [`IConfig`](../interfaces/IConfig.md)

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-session.service.ts#L41)

___

### generator

• **generator**: [`MeetingLinkIdGenerator`](../modules.md#meetinglinkidgenerator)

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-session.service.ts#L37)

___

### sessionAttendeesRepository

• `Private` `Readonly` **sessionAttendeesRepository**: [`SessionAttendeesRepository`](SessionAttendeesRepository.md)

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-session.service.ts#L39)

___

### videoChatProvider

• `Private` `Readonly` **videoChatProvider**: [`VideoChatInterface`](../interfaces/VideoChatInterface.md)

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-session.service.ts#L35)

___

### videoChatSessionRepository

• `Private` `Readonly` **videoChatSessionRepository**: [`VideoChatSessionRepository`](VideoChatSessionRepository.md)

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-session.service.ts#L33)

## Methods

### checkWebhookPayload

▸ **checkWebhookPayload**(`webhookPayload`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `webhookPayload` | [`VonageSessionWebhookPayload`](../interfaces/VonageSessionWebhookPayload.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:236](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-session.service.ts#L236)

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

[services/video-conferencing-service/src/services/chat-session.service.ts:151](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-session.service.ts#L151)

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

[services/video-conferencing-service/src/services/chat-session.service.ts:207](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-session.service.ts#L207)

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

[services/video-conferencing-service/src/services/chat-session.service.ts:261](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-session.service.ts#L261)

___

### getMeetingLink

▸ **getMeetingLink**(`meetingOptions`): `Promise`<`string`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `meetingOptions` | [`MeetingOptions`](../interfaces/MeetingOptions.md) |

#### Returns

`Promise`<`string`\>

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-session.service.ts#L44)

___

### getMeetingToken

▸ **getMeetingToken**(`sessionOptions`, `meetingLinkId`): `Promise`<[`SessionResponse`](../interfaces/SessionResponse.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `sessionOptions` | [`SessionOptions`](../interfaces/SessionOptions.md) |
| `meetingLinkId` | `string` |

#### Returns

`Promise`<[`SessionResponse`](../interfaces/SessionResponse.md)\>

#### Defined in

[services/video-conferencing-service/src/services/chat-session.service.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-session.service.ts#L83)

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

[services/video-conferencing-service/src/services/chat-session.service.ts:239](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-session.service.ts#L239)
