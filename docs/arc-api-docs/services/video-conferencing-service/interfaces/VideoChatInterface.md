[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / VideoChatInterface

# Interface: VideoChatInterface

## Hierarchy

- **`VideoChatInterface`**

  ↳ [`VonageVideoChat`](VonageVideoChat.md)

  ↳ [`TwilioVideoChat`](TwilioVideoChat.md)

## Table of contents

### Methods

- [checkWebhookPayload](VideoChatInterface.md#checkwebhookpayload)
- [deleteArchive](VideoChatInterface.md#deletearchive)
- [getArchives](VideoChatInterface.md#getarchives)
- [getFeatures](VideoChatInterface.md#getfeatures)
- [getMeetingLink](VideoChatInterface.md#getmeetinglink)
- [getToken](VideoChatInterface.md#gettoken)
- [setUploadTarget](VideoChatInterface.md#setuploadtarget)

## Methods

### checkWebhookPayload

▸ **checkWebhookPayload**(`webhookPayload`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `webhookPayload` | [`WebhookPayloadParameters`](WebhookPayloadParameters.md) |

#### Returns

`Promise`<`void`\>

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

#### Defined in

[services/video-conferencing-service/src/types.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L50)

___

### getArchives

▸ **getArchives**(`archiveId`): `Promise`<[`ArchiveResponse`](ArchiveResponse.md) \| [`ArchiveResponseList`](ArchiveResponseList.md)\>

**`Function`**

getArchives get a specific recorded/composed archive or a list of archives

#### Parameters

| Name | Type |
| :------ | :------ |
| `archiveId` | ``null`` \| `string` |

#### Returns

`Promise`<[`ArchiveResponse`](ArchiveResponse.md) \| [`ArchiveResponseList`](ArchiveResponseList.md)\>

a list of archives after resolving promise

#### Defined in

[services/video-conferencing-service/src/types.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L42)

___

### getFeatures

▸ **getFeatures**(): [`VideoChatFeatures`](VideoChatFeatures.md)

#### Returns

[`VideoChatFeatures`](VideoChatFeatures.md)

#### Defined in

[services/video-conferencing-service/src/types.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L61)

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

#### Defined in

[services/video-conferencing-service/src/types.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L27)

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

#### Defined in

[services/video-conferencing-service/src/types.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L33)

___

### setUploadTarget

▸ **setUploadTarget**(`config`): `Promise`<`void`\>

**`Function`**

setUploadTarget set the upload target

**`Interface`**

S3TargetOptions or

**`Interface`**

AzureTargetOptions

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `config` | [`ExternalStorageOptions`](ExternalStorageOptions.md) | of type |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/video-conferencing-service/src/types.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L55)
