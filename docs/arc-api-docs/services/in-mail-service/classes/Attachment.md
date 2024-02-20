[@sourceloop/in-mail-service](../README.md) / [Exports](../modules.md) / Attachment

# Class: Attachment

## Hierarchy

- `UserModifiableEntity`<[`Attachment`](Attachment.md)\>

  ↳ **`Attachment`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](Attachment.md#constructor)

### Properties

- [createdBy](Attachment.md#createdby)
- [createdOn](Attachment.md#createdon)
- [extId](Attachment.md#extid)
- [extMetadata](Attachment.md#extmetadata)
- [id](Attachment.md#id)
- [messageId](Attachment.md#messageid)
- [mime](Attachment.md#mime)
- [modifiedBy](Attachment.md#modifiedby)
- [modifiedOn](Attachment.md#modifiedon)
- [name](Attachment.md#name)
- [path](Attachment.md#path)
- [thumbnail](Attachment.md#thumbnail)

## Constructors

### constructor

• **new Attachment**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Attachment`](Attachment.md)\> |

#### Inherited from

UserModifiableEntity<Attachment\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

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

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/in-mail-service/src/models/attachment.model.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/attachment.model.ts#L57)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/in-mail-service/src/models/attachment.model.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/attachment.model.ts#L64)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/in-mail-service/src/models/attachment.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/attachment.model.ts#L26)

___

### messageId

• **messageId**: `string`

#### Defined in

[services/in-mail-service/src/models/attachment.model.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/attachment.model.ts#L75)

___

### mime

• **mime**: `string`

#### Defined in

[services/in-mail-service/src/models/attachment.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/attachment.model.ts#L50)

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

___

### name

• **name**: `string`

#### Defined in

[services/in-mail-service/src/models/attachment.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/attachment.model.ts#L32)

___

### path

• **path**: `string`

#### Defined in

[services/in-mail-service/src/models/attachment.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/attachment.model.ts#L38)

___

### thumbnail

• **thumbnail**: `string`

#### Defined in

[services/in-mail-service/src/models/attachment.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/attachment.model.ts#L44)
