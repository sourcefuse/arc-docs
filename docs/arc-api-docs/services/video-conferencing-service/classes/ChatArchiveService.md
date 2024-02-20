[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / ChatArchiveService

# Class: ChatArchiveService

## Table of contents

### Constructors

- [constructor](ChatArchiveService.md#constructor)

### Properties

- [videoChatProvider](ChatArchiveService.md#videochatprovider)
- [videoChatSessionRepository](ChatArchiveService.md#videochatsessionrepository)

### Methods

- [deleteArchive](ChatArchiveService.md#deletearchive)
- [getArchive](ChatArchiveService.md#getarchive)
- [getArchives](ChatArchiveService.md#getarchives)
- [setUploadTarget](ChatArchiveService.md#setuploadtarget)

## Constructors

### constructor

• **new ChatArchiveService**(`videoChatProvider`, `videoChatSessionRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `videoChatProvider` | [`VideoChatInterface`](../interfaces/VideoChatInterface.md) |
| `videoChatSessionRepository` | [`VideoChatSessionRepository`](VideoChatSessionRepository.md) |

#### Defined in

[services/video-conferencing-service/src/services/chat-archive.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-archive.service.ts#L17)

## Properties

### videoChatProvider

• `Private` `Readonly` **videoChatProvider**: [`VideoChatInterface`](../interfaces/VideoChatInterface.md)

#### Defined in

[services/video-conferencing-service/src/services/chat-archive.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-archive.service.ts#L19)

___

### videoChatSessionRepository

• `Private` `Readonly` **videoChatSessionRepository**: [`VideoChatSessionRepository`](VideoChatSessionRepository.md)

#### Defined in

[services/video-conferencing-service/src/services/chat-archive.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-archive.service.ts#L21)

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

[services/video-conferencing-service/src/services/chat-archive.service.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-archive.service.ts#L42)

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

[services/video-conferencing-service/src/services/chat-archive.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-archive.service.ts#L24)

___

### getArchives

▸ **getArchives**(): `Promise`<[`ArchiveResponse`](../interfaces/ArchiveResponse.md) \| [`ArchiveResponseList`](../interfaces/ArchiveResponseList.md)\>

#### Returns

`Promise`<[`ArchiveResponse`](../interfaces/ArchiveResponse.md) \| [`ArchiveResponseList`](../interfaces/ArchiveResponseList.md)\>

#### Defined in

[services/video-conferencing-service/src/services/chat-archive.service.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-archive.service.ts#L38)

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

[services/video-conferencing-service/src/services/chat-archive.service.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/chat-archive.service.ts#L56)
