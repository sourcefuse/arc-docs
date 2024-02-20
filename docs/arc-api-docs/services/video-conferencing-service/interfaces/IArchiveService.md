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

[services/video-conferencing-service/src/types.ts:175](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L175)

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

[services/video-conferencing-service/src/types.ts:173](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L173)

___

### getArchives

▸ **getArchives**(): `void`

#### Returns

`void`

#### Defined in

[services/video-conferencing-service/src/types.ts:174](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L174)

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

[services/video-conferencing-service/src/types.ts:176](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L176)
