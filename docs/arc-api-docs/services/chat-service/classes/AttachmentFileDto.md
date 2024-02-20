[@sourceloop/chat-service](../README.md) / [Exports](../modules.md) / AttachmentFileDto

# Class: AttachmentFileDto

## Hierarchy

- `UserModifiableEntity`<[`AttachmentFileDto`](AttachmentFileDto.md)\>

  ↳ **`AttachmentFileDto`**

## Indexable

▪ [prop: `string`]: `any`

## Table of contents

### Constructors

- [constructor](AttachmentFileDto.md#constructor)

### Properties

- [attachmentFiles](AttachmentFileDto.md#attachmentfiles)
- [createdBy](AttachmentFileDto.md#createdby)
- [createdOn](AttachmentFileDto.md#createdon)
- [modifiedBy](AttachmentFileDto.md#modifiedby)
- [modifiedOn](AttachmentFileDto.md#modifiedon)

## Constructors

### constructor

• **new AttachmentFileDto**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`AttachmentFileDto`](AttachmentFileDto.md)\> |

#### Inherited from

UserModifiableEntity<AttachmentFileDto\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### attachmentFiles

• **attachmentFiles**: `any`[]

#### Defined in

[services/chat-service/src/models/attachment-file-dto.model.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/attachment-file-dto.model.ts#L13)

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
