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

[services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts#L21)

## Properties

### chatArchiveService

• **chatArchiveService**: [`ChatArchiveService`](ChatArchiveService.md)

#### Defined in

[services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts#L23)

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

[services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts#L70)

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

[services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts#L26)

___

### getArchives

▸ **getArchives**(): `Promise`<[`ArchiveResponse`](../interfaces/ArchiveResponse.md) \| [`ArchiveResponseList`](../interfaces/ArchiveResponseList.md)\>

#### Returns

`Promise`<[`ArchiveResponse`](../interfaces/ArchiveResponse.md) \| [`ArchiveResponseList`](../interfaces/ArchiveResponseList.md)\>

#### Defined in

[services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts#L48)

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

[services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/controllers/video-chat-archive.controller.ts#L94)
