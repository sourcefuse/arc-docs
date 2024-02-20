[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / TwilioVideoChat

# Interface: TwilioVideoChat

## Hierarchy

- [`VideoChatInterface`](VideoChatInterface.md)

  ↳ **`TwilioVideoChat`**

## Table of contents

### Methods

- [checkWebhookPayload](TwilioVideoChat.md#checkwebhookpayload)
- [deleteArchive](TwilioVideoChat.md#deletearchive)
- [getArchives](TwilioVideoChat.md#getarchives)
- [getFeatures](TwilioVideoChat.md#getfeatures)
- [getMeetingLink](TwilioVideoChat.md#getmeetinglink)
- [getToken](TwilioVideoChat.md#gettoken)
- [setUploadTarget](TwilioVideoChat.md#setuploadtarget)

## Methods

### checkWebhookPayload

▸ **checkWebhookPayload**(`webhookPayload`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `webhookPayload` | [`WebhookPayloadParameters`](WebhookPayloadParameters.md) |

#### Returns

`Promise`<`void`\>

#### Inherited from

[VideoChatInterface](VideoChatInterface.md).[checkWebhookPayload](VideoChatInterface.md#checkwebhookpayload)

#### Defined in

[services/video-conferencing-service/src/types.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L63)

___

### deleteArchive

▸ **deleteArchive**(`archiveId`): `Promise`<`void`\>

**`Function`**

deleteArchive delete a specific archive

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `archiveId` | `string` | id of an archive |

#### Returns

`Promise`<`void`\>

Promise then returns a successful message for deleting if promise is resolved

#### Overrides

[VideoChatInterface](VideoChatInterface.md).[deleteArchive](VideoChatInterface.md#deletearchive)

#### Defined in

[services/video-conferencing-service/src/providers/twilio/types.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/twilio/types.ts#L45)

___

### getArchives

▸ **getArchives**(`archiveId`): `Promise`<[`ArchiveResponse`](ArchiveResponse.md)\>

**`Function`**

getArchives get a specific recorded/composed archive or a list of archives

#### Parameters

| Name | Type |
| :------ | :------ |
| `archiveId` | `string` |

#### Returns

`Promise`<[`ArchiveResponse`](ArchiveResponse.md)\>

a list of archives after resolving promise

#### Overrides

[VideoChatInterface](VideoChatInterface.md).[getArchives](VideoChatInterface.md#getarchives)

#### Defined in

[services/video-conferencing-service/src/providers/twilio/types.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/twilio/types.ts#L44)

___

### getFeatures

▸ **getFeatures**(): [`VideoChatFeatures`](VideoChatFeatures.md)

#### Returns

[`VideoChatFeatures`](VideoChatFeatures.md)

#### Overrides

[VideoChatInterface](VideoChatInterface.md).[getFeatures](VideoChatInterface.md#getfeatures)

#### Defined in

[services/video-conferencing-service/src/providers/twilio/types.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/twilio/types.ts#L47)

___

### getMeetingLink

▸ **getMeetingLink**(`options`): `Promise`<[`MeetingResponse`](MeetingResponse.md)\>

**`Function`**

getMeetingLink Generates a meeting Id which is further used for sharing links

**`Interface`**

MeetingOptions which is defined as an Interface

**`Interface`**

MeetingResponse

#### Parameters

| Name | Type |
| :------ | :------ |
| `options` | [`MeetingOptions`](MeetingOptions.md) |

#### Returns

`Promise`<[`MeetingResponse`](MeetingResponse.md)\>

Promise when resolved returns object of

#### Overrides

[VideoChatInterface](VideoChatInterface.md).[getMeetingLink](VideoChatInterface.md#getmeetinglink)

#### Defined in

[services/video-conferencing-service/src/providers/twilio/types.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/twilio/types.ts#L43)

___

### getToken

▸ **getToken**(`sessionId`, `options`): `Promise`<[`SessionResponse`](SessionResponse.md)\>

**`Function`**

getToken Generates a token which is used for authorization to connect to a room

**`Interface`**

SessionOptions

**`Interface`**

SessionResponse

#### Parameters

| Name | Type |
| :------ | :------ |
| `sessionId` | `string` |
| `options` | [`SessionOptions`](SessionOptions.md) |

#### Returns

`Promise`<[`SessionResponse`](SessionResponse.md)\>

Promise when resolved returns object of type

#### Overrides

[VideoChatInterface](VideoChatInterface.md).[getToken](VideoChatInterface.md#gettoken)

#### Defined in

[services/video-conferencing-service/src/providers/twilio/types.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/twilio/types.ts#L39)

___

### setUploadTarget

▸ **setUploadTarget**(`storageOptions`): `Promise`<`void`\>

**`Function`**

setUploadTarget set the upload target

**`Interface`**

S3TargetOptions or

**`Interface`**

AzureTargetOptions

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `storageOptions` | [`ExternalStorageOptions`](ExternalStorageOptions.md) | of type |

#### Returns

`Promise`<`void`\>

#### Overrides

[VideoChatInterface](VideoChatInterface.md).[setUploadTarget](VideoChatInterface.md#setuploadtarget)

#### Defined in

[services/video-conferencing-service/src/providers/twilio/types.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/twilio/types.ts#L46)
