[@sourceloop/chat-service](../README.md) / [Exports](../modules.md) / MessageRepository

# Class: MessageRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Message`](Message.md), typeof [`id`](Message.md#id), [`MessageRelations`](../interfaces/MessageRelations.md)\>

  ↳ **`MessageRepository`**

## Table of contents

### Constructors

- [constructor](MessageRepository.md#constructor)

### Properties

- [getCurrentUser](MessageRepository.md#getcurrentuser)
- [messageRecipientRepositoryGetter](MessageRepository.md#messagerecipientrepositorygetter)
- [messageRecipients](MessageRepository.md#messagerecipients)
- [messageRepositoryGetter](MessageRepository.md#messagerepositorygetter)
- [messages](MessageRepository.md#messages)
- [parentMessage](MessageRepository.md#parentmessage)

### Methods

- [create](MessageRepository.md#create)
- [createAll](MessageRepository.md#createall)
- [replaceById](MessageRepository.md#replacebyid)
- [save](MessageRepository.md#save)
- [update](MessageRepository.md#update)
- [updateAll](MessageRepository.md#updateall)
- [updateById](MessageRepository.md#updatebyid)

## Constructors

### constructor

• **new MessageRepository**(`dataSource`, `getCurrentUser`, `messageRecipientRepositoryGetter`, `messageRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `messageRecipientRepositoryGetter` | `Getter`<[`MessageRecipientRepository`](MessageRecipientRepository.md)\> |
| `messageRepositoryGetter` | `Getter`<[`MessageRepository`](MessageRepository.md)\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Message,
  typeof Message.prototype.id,
  MessageRelations
\&gt;.constructor

#### Defined in

[services/chat-service/src/repositories/message.repository.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/repositories/message.repository.ts#L40)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/chat-service/src/repositories/message.repository.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/repositories/message.repository.ts#L43)

___

### messageRecipientRepositoryGetter

• `Protected` **messageRecipientRepositoryGetter**: `Getter`<[`MessageRecipientRepository`](MessageRecipientRepository.md)\>

#### Defined in

[services/chat-service/src/repositories/message.repository.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/repositories/message.repository.ts#L47)

___

### messageRecipients

• `Readonly` **messageRecipients**: `HasManyRepositoryFactory`<[`MessageRecipient`](MessageRecipient.md), `undefined` \| `string`\>

#### Defined in

[services/chat-service/src/repositories/message.repository.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/repositories/message.repository.ts#L25)

___

### messageRepositoryGetter

• `Protected` **messageRepositoryGetter**: `Getter`<[`MessageRepository`](MessageRepository.md)\>

#### Defined in

[services/chat-service/src/repositories/message.repository.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/repositories/message.repository.ts#L49)

___

### messages

• `Readonly` **messages**: `HasManyRepositoryFactory`<[`Message`](Message.md), `undefined` \| `string`\>

#### Defined in

[services/chat-service/src/repositories/message.repository.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/repositories/message.repository.ts#L35)

___

### parentMessage

• `Readonly` **parentMessage**: `BelongsToAccessor`<[`Message`](Message.md), `undefined` \| `string`\>

#### Defined in

[services/chat-service/src/repositories/message.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/repositories/message.repository.ts#L30)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Message`](Message.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Message`](Message.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Message`](Message.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Message`](Message.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Message`](Message.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Message`](Message.md)[]\>

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
| `data` | `DataObject`<[`Message`](Message.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Message`](Message.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Message`](Message.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Message`](Message.md)\>

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
| `entity` | [`Message`](Message.md) |
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
| `data` | `DataObject`<[`Message`](Message.md)\> |
| `where?` | `Where`<[`Message`](Message.md)\> |
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
| `data` | `DataObject`<[`Message`](Message.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
