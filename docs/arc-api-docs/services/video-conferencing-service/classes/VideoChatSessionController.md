[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / VideoChatSessionController

# Class: VideoChatSessionController

## Table of contents

### Constructors

- [constructor](VideoChatSessionController.md#constructor)

### Properties

- [chatSessionService](VideoChatSessionController.md#chatsessionservice)

### Methods

- [checkWebhookPayload](VideoChatSessionController.md#checkwebhookpayload)
- [editMeeting](VideoChatSessionController.md#editmeeting)
- [endSession](VideoChatSessionController.md#endsession)
- [getAttendeesList](VideoChatSessionController.md#getattendeeslist)
- [getMeetingLink](VideoChatSessionController.md#getmeetinglink)
- [getMeetingToken](VideoChatSessionController.md#getmeetingtoken)
- [processStreamDestroyedEvent](VideoChatSessionController.md#processstreamdestroyedevent)

## Constructors

### constructor

• **new VideoChatSessionController**(`chatSessionService`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `chatSessionService` | [`ChatSessionService`](ChatSessionService.md) |

#### Defined in

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L35)

## Properties

### chatSessionService

• **chatSessionService**: [`ChatSessionService`](ChatSessionService.md)

#### Defined in

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L37)

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

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:142](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L142)

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

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:98](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L98)

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

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:123](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L123)

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

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:170](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L170)

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

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L40)

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

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L65)

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

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:158](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L158)
