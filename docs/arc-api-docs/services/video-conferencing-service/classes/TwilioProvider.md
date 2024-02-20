[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / TwilioProvider

# Class: TwilioProvider

## Implements

- `Provider`<[`TwilioVideoChat`](../interfaces/TwilioVideoChat.md)\>

## Table of contents

### Constructors

- [constructor](TwilioProvider.md#constructor)

### Properties

- [twilioService](TwilioProvider.md#twilioservice)

### Methods

- [value](TwilioProvider.md#value)

## Constructors

### constructor

• **new TwilioProvider**(`twilioService`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `twilioService` | `TwilioService` |

#### Defined in

[services/video-conferencing-service/src/providers/twilio/twilio.provider.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/twilio/twilio.provider.ts#L17)

## Properties

### twilioService

• `Private` `Readonly` **twilioService**: `TwilioService`

#### Defined in

[services/video-conferencing-service/src/providers/twilio/twilio.provider.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/twilio/twilio.provider.ts#L18)

## Methods

### value

▸ **value**(): `Object`

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `checkWebhookPayload` | (`webhookPayload`: [`TwilioWebhookPayload`](../interfaces/TwilioWebhookPayload.md)) => `Promise`<`void`\> |
| `deleteArchive` | (`archiveId`: `string`) => `Promise`<`void`\> |
| `getArchives` | (`archiveId`: ``null`` \| `string`) => `Promise`<[`ArchiveResponse`](../interfaces/ArchiveResponse.md)\> |
| `getFeatures` | () => [`VideoChatFeatures`](../interfaces/VideoChatFeatures.md) |
| `getMeetingLink` | (`meetingOptions`: [`MeetingOptions`](../interfaces/MeetingOptions.md)) => `Promise`<[`TwilioMeetingResponse`](../interfaces/TwilioMeetingResponse.md)\> |
| `getToken` | (`sessionId`: `string`, `options`: [`TwilioSessonOptions`](../interfaces/TwilioSessonOptions.md)) => `Promise`<[`SessionResponse`](../interfaces/SessionResponse.md)\> |
| `setUploadTarget` | (`storageConfig`: [`TwilioS3TargetOptions`](../interfaces/TwilioS3TargetOptions.md)) => `Promise`<`void`\> |

#### Implementation of

Provider.value

#### Defined in

[services/video-conferencing-service/src/providers/twilio/twilio.provider.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/twilio/twilio.provider.ts#L21)
