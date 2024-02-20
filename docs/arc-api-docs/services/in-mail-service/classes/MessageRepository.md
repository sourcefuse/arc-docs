[@sourceloop/in-mail-service](../README.md) / [Exports](../modules.md) / MessageRepository

# Class: MessageRepository

## Hierarchy

- `DefaultTransactionSoftCrudRepository`<[`Message`](Message.md), typeof [`id`](Message.md#id), [`MessageRelations`](../interfaces/MessageRelations.md)\>

  ↳ **`MessageRepository`**

## Table of contents

### Constructors

- [constructor](MessageRepository.md#constructor)

### Properties

- [attachmentRepositoryGetter](MessageRepository.md#attachmentrepositorygetter)
- [attachments](MessageRepository.md#attachments)
- [getCurrentUser](MessageRepository.md#getcurrentuser)
- [groupRepositoryGetter](MessageRepository.md#grouprepositorygetter)
- [groups](MessageRepository.md#groups)
- [meta](MessageRepository.md#meta)
- [metaRepositoryGetter](MessageRepository.md#metarepositorygetter)
- [thread](MessageRepository.md#thread)

### Methods

- [createRelational](MessageRepository.md#createrelational)

## Constructors

### constructor

• **new MessageRepository**(`dataSource`, `attachmentRepositoryGetter`, `groupRepositoryGetter`, `metaRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `attachmentRepositoryGetter` | `Getter`<[`AttachmentRepository`](AttachmentRepository.md)\> |
| `groupRepositoryGetter` | `Getter`<[`GroupRepository`](GroupRepository.md)\> |
| `metaRepositoryGetter` | `Getter`<[`MetaRepository`](MetaRepository.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultTransactionSoftCrudRepository&lt;
  Message,
  typeof Message.prototype.id,
  MessageRelations
\&gt;.constructor

#### Defined in

[services/in-mail-service/src/repositories/message.repository.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/message.repository.ts#L55)

## Properties

### attachmentRepositoryGetter

• `Protected` **attachmentRepositoryGetter**: `Getter`<[`AttachmentRepository`](AttachmentRepository.md)\>

#### Defined in

[services/in-mail-service/src/repositories/message.repository.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/message.repository.ts#L59)

___

### attachments

• `Readonly` **attachments**: `HasManyRepositoryFactory`<[`Attachment`](Attachment.md), `undefined` \| `string`\>

#### Defined in

[services/in-mail-service/src/repositories/message.repository.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/message.repository.ts#L35)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultTransactionSoftCrudRepository.getCurrentUser

#### Defined in

[services/in-mail-service/src/repositories/message.repository.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/message.repository.ts#L65)

___

### groupRepositoryGetter

• `Protected` **groupRepositoryGetter**: `Getter`<[`GroupRepository`](GroupRepository.md)\>

#### Defined in

[services/in-mail-service/src/repositories/message.repository.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/message.repository.ts#L61)

___

### groups

• `Readonly` **groups**: `HasManyRepositoryFactory`<[`Group`](Group.md), `undefined` \| `string`\>

#### Defined in

[services/in-mail-service/src/repositories/message.repository.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/message.repository.ts#L40)

___

### meta

• `Readonly` **meta**: `HasManyRepositoryFactory`<[`Meta`](Meta.md), `undefined` \| `string`\>

#### Defined in

[services/in-mail-service/src/repositories/message.repository.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/message.repository.ts#L45)

___

### metaRepositoryGetter

• `Protected` **metaRepositoryGetter**: `Getter`<[`MetaRepository`](MetaRepository.md)\>

#### Defined in

[services/in-mail-service/src/repositories/message.repository.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/message.repository.ts#L63)

___

### thread

• `Readonly` **thread**: `BelongsToAccessor`<[`Thread`](Thread.md), `undefined` \| `string`\>

#### Defined in

[services/in-mail-service/src/repositories/message.repository.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/message.repository.ts#L50)

## Methods

### createRelational

▸ **createRelational**(`entity`, `options?`): `Promise`<[`Message`](Message.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`MessageWithRelations`](../modules.md#messagewithrelations)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<[`Message`](Message.md)\>

#### Defined in

[services/in-mail-service/src/repositories/message.repository.ts:90](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/message.repository.ts#L90)
