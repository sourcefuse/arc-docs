[@sourceloop/chat-service](../README.md) / [Exports](../modules.md) / AttachmentFile

# Class: AttachmentFile

## Hierarchy

- `UserModifiableEntity`<[`AttachmentFile`](AttachmentFile.md)\>

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

#### Inherited from

UserModifiableEntity<AttachmentFile\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### channelId

• `Optional` **channelId**: `string`

#### Defined in

[services/chat-service/src/models/attachment-file.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/attachment-file.model.ts#L21)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### fileKey

• `Optional` **fileKey**: `string`

#### Defined in

[services/chat-service/src/models/attachment-file.model.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/attachment-file.model.ts#L27)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/chat-service/src/models/attachment-file.model.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/attachment-file.model.ts#L14)

___

### messageId

• `Optional` **messageId**: `string`

#### Defined in

[services/chat-service/src/models/attachment-file.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/attachment-file.model.ts#L36)

___

### metaData

• `Optional` **metaData**: `object`

#### Defined in

[services/chat-service/src/models/attachment-file.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/attachment-file.model.ts#L43)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5
