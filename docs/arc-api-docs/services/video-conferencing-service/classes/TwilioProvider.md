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

[services/video-conferencing-service/src/providers/twilio/twilio.provider.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/providers/twilio/twilio.provider.ts#L17)

## Properties

### twilioService

• `Private` `Readonly` **twilioService**: `TwilioService`

#### Defined in

[services/video-conferencing-service/src/providers/twilio/twilio.provider.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/providers/twilio/twilio.provider.ts#L18)

## Methods

### value

▸ **value**(): `Object`

The function returns an object with methods for interacting with Twilio services such as getting
tokens, meeting links, archives, setting upload targets, getting features, and checking webhook
payloads.

#### Returns

`Object`

The `value()` function returns an object with several methods related to interacting with
Twilio services. These methods include `getToken`, `getMeetingLink`, `getArchives`,
`deleteArchive`, `setUploadTarget`, `getFeatures`, and `checkWebhookPayload`. Each method performs
a specific action such as retrieving a token, getting a meeting link, fetching archives, deleting
an archive, setting

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

[services/video-conferencing-service/src/providers/twilio/twilio.provider.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/providers/twilio/twilio.provider.ts#L31)
