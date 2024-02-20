[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / VonageVideoChat

# Interface: VonageVideoChat

## Hierarchy

- [`VideoChatInterface`](VideoChatInterface.md)

  ↳ **`VonageVideoChat`**

## Table of contents

### Methods

- [checkWebhookPayload](VonageVideoChat.md#checkwebhookpayload)
- [deleteArchive](VonageVideoChat.md#deletearchive)
- [getArchives](VonageVideoChat.md#getarchives)
- [getFeatures](VonageVideoChat.md#getfeatures)
- [getMeetingLink](VonageVideoChat.md#getmeetinglink)
- [getToken](VonageVideoChat.md#gettoken)
- [setUploadTarget](VonageVideoChat.md#setuploadtarget)

## Methods

### checkWebhookPayload

▸ **checkWebhookPayload**(`webhookPaylod`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `webhookPaylod` | [`WebhookPayloadParameters`](WebhookPayloadParameters.md) |

#### Returns

`Promise`<`void`\>

#### Overrides

[VideoChatInterface](VideoChatInterface.md).[checkWebhookPayload](VideoChatInterface.md#checkwebhookpayload)

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:204](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L204)

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

[services/video-conferencing-service/src/providers/vonage/types.ts:184](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L184)

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

#### Overrides

[VideoChatInterface](VideoChatInterface.md).[getArchives](VideoChatInterface.md#getarchives)

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:176](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L176)

___

### getFeatures

▸ **getFeatures**(): [`VideoChatFeatures`](VideoChatFeatures.md)

#### Returns

[`VideoChatFeatures`](VideoChatFeatures.md)

#### Overrides

[VideoChatInterface](VideoChatInterface.md).[getFeatures](VideoChatInterface.md#getfeatures)

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:202](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L202)

___

### getMeetingLink

▸ **getMeetingLink**(`options`): `Promise`<[`VonageMeetingResponse`](VonageMeetingResponse.md)\>

**`Function`**

getMeetingLink Generates a meeting Id which is further used for sharing links

**`Interface`**

MeetingOptions which is defined as an Interface

#### Parameters

| Name | Type |
| :------ | :------ |
| `options` | [`MeetingOptions`](MeetingOptions.md) |

#### Returns

`Promise`<[`VonageMeetingResponse`](VonageMeetingResponse.md)\>

Promise when resolved returns meeting id

#### Overrides

[VideoChatInterface](VideoChatInterface.md).[getMeetingLink](VideoChatInterface.md#getmeetinglink)

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:153](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L153)

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

[services/video-conferencing-service/src/providers/vonage/types.ts:159](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L159)

___

### setUploadTarget

▸ **setUploadTarget**(`config`): `Promise`<`void`\>

**`Function`**

setUploadTarget set the upload target

**`Interface`**

VonageS3TargetOptions or

**`Interface`**

VonageAzureTargetOptions

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `config` | [`VonageS3TargetOptions`](VonageS3TargetOptions.md) \| [`VonageAzureTargetOptions`](VonageAzureTargetOptions.md) | of type |

#### Returns

`Promise`<`void`\>

#### Overrides

[VideoChatInterface](VideoChatInterface.md).[setUploadTarget](VideoChatInterface.md#setuploadtarget)

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:195](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L195)
