[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / ISessionService

# Interface: ISessionService

## Table of contents

### Methods

- [checkWebhookPayload](ISessionService.md#checkwebhookpayload)
- [editMeeting](ISessionService.md#editmeeting)
- [endSession](ISessionService.md#endsession)
- [getAttendeesList](ISessionService.md#getattendeeslist)
- [getMeetingLink](ISessionService.md#getmeetinglink)
- [getMeetingToken](ISessionService.md#getmeetingtoken)
- [processStreamDestroyedEvent](ISessionService.md#processstreamdestroyedevent)

## Methods

### checkWebhookPayload

▸ **checkWebhookPayload**(`webhookPayload`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `webhookPayload` | [`VonageSessionWebhookPayload`](VonageSessionWebhookPayload.md) |

#### Returns

`void`

#### Defined in

[services/video-conferencing-service/src/types.ts:194](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/types.ts#L194)

___

### editMeeting

▸ **editMeeting**(`meetingLinkId`, `body`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `meetingLinkId` | `string` |
| `body` | `Partial`<[`VideoChatSession`](../classes/VideoChatSession.md)\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/video-conferencing-service/src/types.ts:186](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/types.ts#L186)

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

[services/video-conferencing-service/src/types.ts:192](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/types.ts#L192)

___

### getAttendeesList

▸ **getAttendeesList**(`meetingLinkId`, `active`): `Promise`<[`SessionAttendees`](../classes/SessionAttendees.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `meetingLinkId` | `string` |
| `active` | `string` |

#### Returns

`Promise`<[`SessionAttendees`](../classes/SessionAttendees.md)[]\>

#### Defined in

[services/video-conferencing-service/src/types.ts:201](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/types.ts#L201)

___

### getMeetingLink

▸ **getMeetingLink**(`options`): `Promise`<`string`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `options` | [`MeetingOptions`](MeetingOptions.md) |

#### Returns

`Promise`<`string`\>

#### Defined in

[services/video-conferencing-service/src/types.ts:179](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/types.ts#L179)

___

### getMeetingToken

▸ **getMeetingToken**(`sessionOptions`, `meetingLinkId`): `Promise`<[`SessionResponse`](SessionResponse.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `sessionOptions` | [`SessionOptions`](SessionOptions.md) |
| `meetingLinkId` | `string` |

#### Returns

`Promise`<[`SessionResponse`](SessionResponse.md)\>

#### Defined in

[services/video-conferencing-service/src/types.ts:181](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/types.ts#L181)

___

### processStreamDestroyedEvent

▸ **processStreamDestroyedEvent**(`webhookPayload`, `sessionAttendeeDetail`, `updatedAttendee`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `webhookPayload` | [`VonageSessionWebhookPayload`](VonageSessionWebhookPayload.md) |
| `sessionAttendeeDetail` | [`SessionAttendees`](../classes/SessionAttendees.md) |
| `updatedAttendee` | `Partial`<[`SessionAttendees`](../classes/SessionAttendees.md)\> |

#### Returns

`void`

#### Defined in

[services/video-conferencing-service/src/types.ts:195](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/types.ts#L195)
