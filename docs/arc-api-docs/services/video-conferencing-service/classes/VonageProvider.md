[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / VonageProvider

# Class: VonageProvider

## Implements

- `Provider`<[`VonageVideoChat`](../interfaces/VonageVideoChat.md)\>

## Table of contents

### Constructors

- [constructor](VonageProvider.md#constructor)

### Properties

- [vonageService](VonageProvider.md#vonageservice)

### Methods

- [value](VonageProvider.md#value)

## Constructors

### constructor

• **new VonageProvider**(`vonageService`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `vonageService` | `VonageService` |

#### Defined in

[services/video-conferencing-service/src/providers/vonage/vonage.provider.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/vonage.provider.ts#L25)

## Properties

### vonageService

• `Private` `Readonly` **vonageService**: `VonageService`

#### Defined in

[services/video-conferencing-service/src/providers/vonage/vonage.provider.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/vonage.provider.ts#L27)

## Methods

### value

▸ **value**(): `Object`

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `checkWebhookPayload` | (`webhookPayload`: [`VonageSessionWebhookPayload`](../interfaces/VonageSessionWebhookPayload.md)) => `Promise`<`void`\> |
| `deleteArchive` | (`archiveId`: `string`) => `Promise`<`void`\> |
| `getArchives` | (`archiveId`: ``null`` \| `string`) => `Promise`<[`ArchiveResponse`](../interfaces/ArchiveResponse.md) \| [`ArchiveResponseList`](../interfaces/ArchiveResponseList.md)\> |
| `getFeatures` | () => [`VideoChatFeatures`](../interfaces/VideoChatFeatures.md) |
| `getMeetingLink` | (`meetingOptions`: [`VonageMeetingOptions`](../interfaces/VonageMeetingOptions.md)) => `Promise`<[`VonageMeetingResponse`](../interfaces/VonageMeetingResponse.md)\> |
| `getToken` | (`sessionId`: `string`, `options`: [`VonageSessionOptions`](../interfaces/VonageSessionOptions.md)) => `Promise`<[`SessionResponse`](../interfaces/SessionResponse.md)\> |
| `setUploadTarget` | (`storageConfig`: [`VonageS3TargetOptions`](../interfaces/VonageS3TargetOptions.md) \| [`VonageAzureTargetOptions`](../interfaces/VonageAzureTargetOptions.md)) => `Promise`<`void`\> |

#### Implementation of

Provider.value

#### Defined in

[services/video-conferencing-service/src/providers/vonage/vonage.provider.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/vonage.provider.ts#L29)
