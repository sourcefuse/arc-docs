[@sourceloop/chat-service](../README.md) / [Exports](../modules.md) / AttachmentFile

# Class: AttachmentFile

## Hierarchy

- `UserModifiableEntity`

  ↳ **`AttachmentFile`**

## Table of contents

### Constructors

- [constructor](AttachmentFile.md#constructor)

### Properties

- [channelId](AttachmentFile.md#channelid)
- [createdBy](AttachmentFile.md#createdby)
- [createdOn](AttachmentFile.md#createdon)
- [fileKey](AttachmentFile.md#filekey)
- [id](AttachmentFile.md#id)
- [messageId](AttachmentFile.md#messageid)
- [metaData](AttachmentFile.md#metadata)
- [modifiedBy](AttachmentFile.md#modifiedby)
- [modifiedOn](AttachmentFile.md#modifiedon)

## Constructors

### constructor

• **new AttachmentFile**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`AttachmentFile`](AttachmentFile.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/chat-service/src/models/attachment-file.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/chat-service/src/models/attachment-file.model.ts#L45)

## Properties

### channelId

• `Optional` **channelId**: `string`

#### Defined in

[services/chat-service/src/models/attachment-file.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/chat-service/src/models/attachment-file.model.ts#L21)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:3

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:3

___

### fileKey

• `Optional` **fileKey**: `string`

#### Defined in

[services/chat-service/src/models/attachment-file.model.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/chat-service/src/models/attachment-file.model.ts#L27)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/chat-service/src/models/attachment-file.model.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/chat-service/src/models/attachment-file.model.ts#L14)

___

### messageId

• `Optional` **messageId**: `string`

#### Defined in

[services/chat-service/src/models/attachment-file.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/chat-service/src/models/attachment-file.model.ts#L36)

___

### metaData

• `Optional` **metaData**: `object`

#### Defined in

[services/chat-service/src/models/attachment-file.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/chat-service/src/models/attachment-file.model.ts#L43)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4
