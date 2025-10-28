[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / IArchiveService

# Interface: IArchiveService

## Table of contents

### Methods

- [deleteArchive](IArchiveService.md#deletearchive)
- [getArchive](IArchiveService.md#getarchive)
- [getArchives](IArchiveService.md#getarchives)
- [setUploadTarget](IArchiveService.md#setuploadtarget)

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

[services/video-conferencing-service/src/types.ts:178](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/types.ts#L178)

___

### getArchive

▸ **getArchive**(`archiveId`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `archiveId` | `string` |

#### Returns

`void`

#### Defined in

[services/video-conferencing-service/src/types.ts:176](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/types.ts#L176)

___

### getArchives

▸ **getArchives**(): `void`

#### Returns

`void`

#### Defined in

[services/video-conferencing-service/src/types.ts:177](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/types.ts#L177)

___

### setUploadTarget

▸ **setUploadTarget**(`body`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `body` | [`ExternalStorageOptions`](ExternalStorageOptions.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/video-conferencing-service/src/types.ts:179](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/types.ts#L179)
