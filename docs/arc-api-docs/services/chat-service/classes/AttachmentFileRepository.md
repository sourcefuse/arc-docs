[@sourceloop/chat-service](../README.md) / [Exports](../modules.md) / AttachmentFileRepository

# Class: AttachmentFileRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`AttachmentFile`](AttachmentFile.md), typeof [`id`](AttachmentFile.md#id), [`AttachmentFileRelations`](../interfaces/AttachmentFileRelations.md)\>

  ↳ **`AttachmentFileRepository`**

## Table of contents

### Constructors

- [constructor](AttachmentFileRepository.md#constructor)

### Properties

- [getCurrentUser](AttachmentFileRepository.md#getcurrentuser)
- [message](AttachmentFileRepository.md#message)
- [messageRepositoryGetter](AttachmentFileRepository.md#messagerepositorygetter)

### Methods

- [create](AttachmentFileRepository.md#create)
- [createAll](AttachmentFileRepository.md#createall)
- [replaceById](AttachmentFileRepository.md#replacebyid)
- [save](AttachmentFileRepository.md#save)
- [update](AttachmentFileRepository.md#update)
- [updateAll](AttachmentFileRepository.md#updateall)
- [updateById](AttachmentFileRepository.md#updatebyid)

## Constructors

### constructor

• **new AttachmentFileRepository**(`dataSource`, `getCurrentUser`, `messageRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `messageRepositoryGetter` | `Getter`<[`MessageRepository`](MessageRepository.md)\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  AttachmentFile,
  typeof AttachmentFile.prototype.id,
  AttachmentFileRelations
\&gt;.constructor

#### Defined in

[services/chat-service/src/repositories/attachment-file.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/repositories/attachment-file.repository.ts#L23)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/chat-service/src/repositories/attachment-file.repository.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/repositories/attachment-file.repository.ts#L26)

___

### message

• `Readonly` **message**: `BelongsToAccessor`<[`Message`](Message.md), `undefined` \| `string`\>

#### Defined in

[services/chat-service/src/repositories/attachment-file.repository.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/repositories/attachment-file.repository.ts#L19)

___

### messageRepositoryGetter

• `Protected` **messageRepositoryGetter**: `Getter`<[`MessageRepository`](MessageRepository.md)\>

#### Defined in

[services/chat-service/src/repositories/attachment-file.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/repositories/attachment-file.repository.ts#L30)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`AttachmentFile`](AttachmentFile.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`AttachmentFile`](AttachmentFile.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`AttachmentFile`](AttachmentFile.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`AttachmentFile`](AttachmentFile.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`AttachmentFile`](AttachmentFile.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`AttachmentFile`](AttachmentFile.md)[]\>

#### Inherited from

DefaultUserModifyCrudRepository.createAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:12

___

### replaceById

▸ **replaceById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`AttachmentFile`](AttachmentFile.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`AttachmentFile`](AttachmentFile.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`AttachmentFile`](AttachmentFile.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`AttachmentFile`](AttachmentFile.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13

___

### update

▸ **update**(`entity`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`AttachmentFile`](AttachmentFile.md) |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.update

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:14

___

### updateAll

▸ **updateAll**(`data`, `where?`, `options?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `DataObject`<[`AttachmentFile`](AttachmentFile.md)\> |
| `where?` | `Where`<[`AttachmentFile`](AttachmentFile.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`Count`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:15

___

### updateById

▸ **updateById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`AttachmentFile`](AttachmentFile.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
