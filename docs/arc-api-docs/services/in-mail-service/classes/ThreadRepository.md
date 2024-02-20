[@sourceloop/in-mail-service](../README.md) / [Exports](../modules.md) / ThreadRepository

# Class: ThreadRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Thread`](Thread.md), typeof [`id`](Thread.md#id)\>

  ↳ **`ThreadRepository`**

## Table of contents

### Constructors

- [constructor](ThreadRepository.md#constructor)

### Properties

- [attachmentRepositoryGetter](ThreadRepository.md#attachmentrepositorygetter)
- [attachments](ThreadRepository.md#attachments)
- [getCurrentUser](ThreadRepository.md#getcurrentuser)
- [groupRepositoryGetter](ThreadRepository.md#grouprepositorygetter)
- [groups](ThreadRepository.md#groups)
- [messageRepositoryGetter](ThreadRepository.md#messagerepositorygetter)
- [messages](ThreadRepository.md#messages)

### Methods

- [create](ThreadRepository.md#create)
- [createAll](ThreadRepository.md#createall)
- [incrementOrCreate](ThreadRepository.md#incrementorcreate)
- [replaceById](ThreadRepository.md#replacebyid)
- [save](ThreadRepository.md#save)
- [update](ThreadRepository.md#update)
- [updateAll](ThreadRepository.md#updateall)
- [updateById](ThreadRepository.md#updatebyid)

## Constructors

### constructor

• **new ThreadRepository**(`dataSource`, `messageRepositoryGetter`, `groupRepositoryGetter`, `attachmentRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `messageRepositoryGetter` | `Getter`<[`MessageRepository`](MessageRepository.md)\> |
| `groupRepositoryGetter` | `Getter`<[`GroupRepository`](GroupRepository.md)\> |
| `attachmentRepositoryGetter` | `Getter`<[`AttachmentRepository`](AttachmentRepository.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Thread,
  typeof Thread.prototype.id
\&gt;.constructor

#### Defined in

[services/in-mail-service/src/repositories/thread.repository.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/thread.repository.ts#L43)

## Properties

### attachmentRepositoryGetter

• `Protected` **attachmentRepositoryGetter**: `Getter`<[`AttachmentRepository`](AttachmentRepository.md)\>

#### Defined in

[services/in-mail-service/src/repositories/thread.repository.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/thread.repository.ts#L51)

___

### attachments

• `Readonly` **attachments**: `HasManyRepositoryFactory`<[`Attachment`](Attachment.md), `undefined` \| `string`\>

#### Defined in

[services/in-mail-service/src/repositories/thread.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/thread.repository.ts#L38)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/in-mail-service/src/repositories/thread.repository.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/thread.repository.ts#L53)

___

### groupRepositoryGetter

• `Protected` **groupRepositoryGetter**: `Getter`<[`GroupRepository`](GroupRepository.md)\>

#### Defined in

[services/in-mail-service/src/repositories/thread.repository.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/thread.repository.ts#L49)

___

### groups

• `Readonly` **groups**: `HasManyRepositoryFactory`<[`Group`](Group.md), `string`\>

#### Defined in

[services/in-mail-service/src/repositories/thread.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/thread.repository.ts#L33)

___

### messageRepositoryGetter

• `Protected` **messageRepositoryGetter**: `Getter`<[`MessageRepository`](MessageRepository.md)\>

#### Defined in

[services/in-mail-service/src/repositories/thread.repository.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/thread.repository.ts#L47)

___

### messages

• `Readonly` **messages**: `HasManyRepositoryFactory`<[`Message`](Message.md), `string`\>

#### Defined in

[services/in-mail-service/src/repositories/thread.repository.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/thread.repository.ts#L28)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Thread`](Thread.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Thread`](Thread.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Thread`](Thread.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Thread`](Thread.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Thread`](Thread.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Thread`](Thread.md)[]\>

#### Inherited from

DefaultUserModifyCrudRepository.createAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:12

___

### incrementOrCreate

▸ **incrementOrCreate**(`id`, `entity`, `options?`): `Promise`<[`Thread`](Thread.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `entity` | `DataObject`<[`Thread`](Thread.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<[`Thread`](Thread.md)\>

#### Defined in

[services/in-mail-service/src/repositories/thread.repository.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/thread.repository.ts#L69)

___

### replaceById

▸ **replaceById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `data` | `DataObject`<[`Thread`](Thread.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Thread`](Thread.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Thread`](Thread.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Thread`](Thread.md)\>

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
| `entity` | [`Thread`](Thread.md) |
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
| `data` | `DataObject`<[`Thread`](Thread.md)\> |
| `where?` | `Where`<[`Thread`](Thread.md)\> |
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
| `id` | `string` |
| `data` | `DataObject`<[`Thread`](Thread.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
