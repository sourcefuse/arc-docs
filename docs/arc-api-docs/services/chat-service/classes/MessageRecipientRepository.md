[@sourceloop/chat-service](../README.md) / [Exports](../modules.md) / MessageRecipientRepository

# Class: MessageRecipientRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`MessageRecipient`](MessageRecipient.md), typeof [`id`](MessageRecipient.md#id), [`MessageRecipientRelations`](../interfaces/MessageRecipientRelations.md)\>

  ↳ **`MessageRecipientRepository`**

## Table of contents

### Constructors

- [constructor](MessageRecipientRepository.md#constructor)

### Properties

- [getCurrentUser](MessageRecipientRepository.md#getcurrentuser)
- [message](MessageRecipientRepository.md#message)
- [messageRepositoryGetter](MessageRecipientRepository.md#messagerepositorygetter)

### Methods

- [create](MessageRecipientRepository.md#create)
- [createAll](MessageRecipientRepository.md#createall)
- [replaceById](MessageRecipientRepository.md#replacebyid)
- [save](MessageRecipientRepository.md#save)
- [update](MessageRecipientRepository.md#update)
- [updateAll](MessageRecipientRepository.md#updateall)
- [updateById](MessageRecipientRepository.md#updatebyid)

## Constructors

### constructor

• **new MessageRecipientRepository**(`dataSource`, `getCurrentUser`, `messageRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `messageRepositoryGetter` | `Getter`<[`MessageRepository`](MessageRepository.md)\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  MessageRecipient,
  typeof MessageRecipient.prototype.id,
  MessageRecipientRelations
\&gt;.constructor

#### Defined in

[services/chat-service/src/repositories/message-recipient.repository.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/repositories/message-recipient.repository.ts#L25)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/chat-service/src/repositories/message-recipient.repository.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/repositories/message-recipient.repository.ts#L28)

___

### message

• `Readonly` **message**: `BelongsToAccessor`<[`Message`](Message.md), `undefined` \| `string`\>

#### Defined in

[services/chat-service/src/repositories/message-recipient.repository.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/repositories/message-recipient.repository.ts#L20)

___

### messageRepositoryGetter

• `Protected` **messageRepositoryGetter**: `Getter`<[`MessageRepository`](MessageRepository.md)\>

#### Defined in

[services/chat-service/src/repositories/message-recipient.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/repositories/message-recipient.repository.ts#L32)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`MessageRecipient`](MessageRecipient.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`MessageRecipient`](MessageRecipient.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`MessageRecipient`](MessageRecipient.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`MessageRecipient`](MessageRecipient.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`MessageRecipient`](MessageRecipient.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`MessageRecipient`](MessageRecipient.md)[]\>

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
| `data` | `DataObject`<[`MessageRecipient`](MessageRecipient.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`MessageRecipient`](MessageRecipient.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`MessageRecipient`](MessageRecipient.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`MessageRecipient`](MessageRecipient.md)\>

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
| `entity` | [`MessageRecipient`](MessageRecipient.md) |
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
| `data` | `DataObject`<[`MessageRecipient`](MessageRecipient.md)\> |
| `where?` | `Where`<[`MessageRecipient`](MessageRecipient.md)\> |
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
| `data` | `DataObject`<[`MessageRecipient`](MessageRecipient.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
