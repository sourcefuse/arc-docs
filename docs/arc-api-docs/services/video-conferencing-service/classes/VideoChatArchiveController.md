[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / VideoChatArchiveController

# Class: VideoChatArchiveController

## Table of contents

### Constructors

- [constructor](VideoChatArchiveController.md#constructor)

### Properties

- [chatArchiveService](VideoChatArchiveController.md#chatarchiveservice)

### Methods

- [deleteArchive](VideoChatArchiveController.md#deletearchive)
- [getArchive](VideoChatArchiveController.md#getarchive)
- [getArchives](VideoChatArchiveController.md#getarchives)
- [setUploadTarget](VideoChatArchiveController.md#setuploadtarget)

## Constructors

### constructor

• **new VideoChatArchiveController**(`chatArchiveService`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `chatArchiveService` | [`ChatArchiveService`](ChatArchiveService.md) |

#### Defined in

[services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts#L20)

## Properties

### chatArchiveService

• **chatArchiveService**: [`ChatArchiveService`](ChatArchiveService.md)

#### Defined in

[services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts#L22)

## Methods

### deleteArchive

▸ **deleteArchive**(`archiveId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `archiveId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts#L69)

___

### getArchive

▸ **getArchive**(`archiveId`): `Promise`<[`ArchiveResponse`](../interfaces/ArchiveResponse.md) \| [`ArchiveResponseList`](../interfaces/ArchiveResponseList.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `archiveId` | `string` |

#### Returns

`Promise`<[`ArchiveResponse`](../interfaces/ArchiveResponse.md) \| [`ArchiveResponseList`](../interfaces/ArchiveResponseList.md)\>

#### Defined in

[services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts#L25)

___

### getArchives

▸ **getArchives**(): `Promise`<[`ArchiveResponse`](../interfaces/ArchiveResponse.md) \| [`ArchiveResponseList`](../interfaces/ArchiveResponseList.md)\>

#### Returns

`Promise`<[`ArchiveResponse`](../interfaces/ArchiveResponse.md) \| [`ArchiveResponseList`](../interfaces/ArchiveResponseList.md)\>

#### Defined in

[services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts#L47)

___

### setUploadTarget

▸ **setUploadTarget**(`body`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `body` | [`ExternalStorageOptions`](../interfaces/ExternalStorageOptions.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts#L93)
