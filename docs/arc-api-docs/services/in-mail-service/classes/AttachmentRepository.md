[@sourceloop/in-mail-service](../README.md) / [Exports](../modules.md) / AttachmentRepository

# Class: AttachmentRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Attachment`](Attachment.md), typeof [`id`](Attachment.md#id)\>

  ↳ **`AttachmentRepository`**

## Table of contents

### Constructors

- [constructor](AttachmentRepository.md#constructor)

### Properties

- [getCurrentUser](AttachmentRepository.md#getcurrentuser)
- [message](AttachmentRepository.md#message)

### Methods

- [create](AttachmentRepository.md#create)
- [createAll](AttachmentRepository.md#createall)
- [replaceById](AttachmentRepository.md#replacebyid)
- [save](AttachmentRepository.md#save)
- [update](AttachmentRepository.md#update)
- [updateAll](AttachmentRepository.md#updateall)
- [updateById](AttachmentRepository.md#updatebyid)

## Constructors

### constructor

• **new AttachmentRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Attachment,
  typeof Attachment.prototype.id
\&gt;.constructor

#### Defined in

[services/in-mail-service/src/repositories/attachment.repository.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/attachment.repository.ts#L24)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/in-mail-service/src/repositories/attachment.repository.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/attachment.repository.ts#L28)

___

### message

• `Readonly` **message**: `BelongsToAccessor`<[`Message`](Message.md), `undefined` \| `string`\>

#### Defined in

[services/in-mail-service/src/repositories/attachment.repository.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/attachment.repository.ts#L19)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Attachment`](Attachment.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Attachment`](Attachment.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Attachment`](Attachment.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Attachment`](Attachment.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Attachment`](Attachment.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Attachment`](Attachment.md)[]\>

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
| `data` | `DataObject`<[`Attachment`](Attachment.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Attachment`](Attachment.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Attachment`](Attachment.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Attachment`](Attachment.md)\>

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
| `entity` | [`Attachment`](Attachment.md) |
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
| `data` | `DataObject`<[`Attachment`](Attachment.md)\> |
| `where?` | `Where`<[`Attachment`](Attachment.md)\> |
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
| `data` | `DataObject`<[`Attachment`](Attachment.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
