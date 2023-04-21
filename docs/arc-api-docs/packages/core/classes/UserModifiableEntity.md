[@sourceloop/core](../README.md) / [Exports](../modules.md) / UserModifiableEntity

# Class: UserModifiableEntity

## Hierarchy

- [`BaseEntity`](BaseEntity.md)

  ↳ **`UserModifiableEntity`**

## Table of contents

### Constructors

- [constructor](UserModifiableEntity.md#constructor)

### Properties

- [createdBy](UserModifiableEntity.md#createdby)
- [createdOn](UserModifiableEntity.md#createdon)
- [modifiedBy](UserModifiableEntity.md#modifiedby)
- [modifiedOn](UserModifiableEntity.md#modifiedon)

## Constructors

### constructor

• **new UserModifiableEntity**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<`SoftDeleteEntity`\> |

#### Inherited from

[BaseEntity](BaseEntity.md).[constructor](BaseEntity.md#constructor)

#### Defined in

node_modules/loopback4-soft-delete/dist/models/soft-delete-entity.d.ts:15

## Properties

### createdBy

• `Optional` **createdBy**: `string`

#### Defined in

[src/models/user-modifiable-entity.model.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/packages/core/src/models/user-modifiable-entity.model.ts#L14)

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

[BaseEntity](BaseEntity.md).[createdOn](BaseEntity.md#createdon)

#### Defined in

[src/models/base-entity.model.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/packages/core/src/models/base-entity.model.ts#L14)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Defined in

[src/models/user-modifiable-entity.model.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/packages/core/src/models/user-modifiable-entity.model.ts#L20)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

[BaseEntity](BaseEntity.md).[modifiedOn](BaseEntity.md#modifiedon)

#### Defined in

[src/models/base-entity.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/packages/core/src/models/base-entity.model.ts#L21)
