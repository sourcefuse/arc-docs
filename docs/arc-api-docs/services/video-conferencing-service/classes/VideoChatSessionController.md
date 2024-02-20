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

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L30)

## Properties

### chatSessionService

• **chatSessionService**: [`ChatSessionService`](ChatSessionService.md)

#### Defined in

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L32)

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

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:137](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L137)

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

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L93)

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

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L118)

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

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:165](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L165)

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

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L35)

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

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L60)

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

[services/video-conferencing-service/src/controllers/video-chat-session.controller.ts:153](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/controllers/video-chat-session.controller.ts#L153)
