[@sourceloop/feature-toggle-service](../README.md) / [Exports](../modules.md) / Feature

# Class: Feature

## Hierarchy

- `UserModifiableEntity`

  ↳ **`Feature`**

## Table of contents

### Constructors

- [constructor](Feature.md#constructor)

### Properties

- [createdBy](Feature.md#createdby)
- [createdOn](Feature.md#createdon)
- [defaultValue](Feature.md#defaultvalue)
- [description](Feature.md#description)
- [id](Feature.md#id)
- [key](Feature.md#key)
- [modifiedBy](Feature.md#modifiedby)
- [modifiedOn](Feature.md#modifiedon)
- [name](Feature.md#name)

## Constructors

### constructor

• **new Feature**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Feature`](Feature.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/feature-toggle-service/src/models/feature.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/feature-toggle-service/src/models/feature.model.ts#L44)

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

### defaultValue

• **defaultValue**: `boolean`

#### Defined in

[services/feature-toggle-service/src/models/feature.model.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/feature-toggle-service/src/models/feature.model.ts#L42)

___

### description

• `Optional` **description**: `string`

#### Defined in

[services/feature-toggle-service/src/models/feature.model.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/feature-toggle-service/src/models/feature.model.ts#L35)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/feature-toggle-service/src/models/feature.model.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/feature-toggle-service/src/models/feature.model.ts#L17)

___

### key

• **key**: `string`

#### Defined in

[services/feature-toggle-service/src/models/feature.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/feature-toggle-service/src/models/feature.model.ts#L29)

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

### name

• **name**: `string`

#### Defined in

[services/feature-toggle-service/src/models/feature.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/feature-toggle-service/src/models/feature.model.ts#L23)
