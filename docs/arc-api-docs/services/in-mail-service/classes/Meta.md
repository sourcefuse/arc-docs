[@sourceloop/in-mail-service](../README.md) / [Exports](../modules.md) / Meta

# Class: Meta

## Hierarchy

- `UserModifiableEntity`

  ↳ **`Meta`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](Meta.md#constructor)

### Properties

- [createdBy](Meta.md#createdby)
- [createdOn](Meta.md#createdon)
- [extId](Meta.md#extid)
- [extMetadata](Meta.md#extmetadata)
- [id](Meta.md#id)
- [key](Meta.md#key)
- [messageId](Meta.md#messageid)
- [modifiedBy](Meta.md#modifiedby)
- [modifiedOn](Meta.md#modifiedon)
- [value](Meta.md#value)

## Constructors

### constructor

• **new Meta**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Meta`](Meta.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/in-mail-service/src/models/meta.model.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/in-mail-service/src/models/meta.model.ts#L64)

## Properties

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

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/in-mail-service/src/models/meta.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/in-mail-service/src/models/meta.model.ts#L44)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/in-mail-service/src/models/meta.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/in-mail-service/src/models/meta.model.ts#L51)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/in-mail-service/src/models/meta.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/in-mail-service/src/models/meta.model.ts#L26)

___

### key

• **key**: `string`

#### Defined in

[services/in-mail-service/src/models/meta.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/in-mail-service/src/models/meta.model.ts#L32)

___

### messageId

• **messageId**: `string`

#### Defined in

[services/in-mail-service/src/models/meta.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/in-mail-service/src/models/meta.model.ts#L62)

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

___

### value

• `Optional` **value**: `string`

#### Defined in

[services/in-mail-service/src/models/meta.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/in-mail-service/src/models/meta.model.ts#L37)
