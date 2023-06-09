[@sourceloop/core](../README.md) / [Exports](../modules.md) / BaseEntity

# Class: BaseEntity

## Hierarchy

- `SoftDeleteEntity`

  ↳ **`BaseEntity`**

  ↳↳ [`UserModifiableEntity`](UserModifiableEntity.md)

## Table of contents

### Constructors

- [constructor](BaseEntity.md#constructor)

### Properties

- [createdOn](BaseEntity.md#createdon)
- [modifiedOn](BaseEntity.md#modifiedon)

## Constructors

### constructor

• **new BaseEntity**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<`SoftDeleteEntity`\> |

#### Inherited from

SoftDeleteEntity.constructor

#### Defined in

node_modules/loopback4-soft-delete/dist/models/soft-delete-entity.d.ts:15

## Properties

### createdOn

• `Optional` **createdOn**: `Date`

#### Defined in

[src/models/base-entity.model.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/models/base-entity.model.ts#L14)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Defined in

[src/models/base-entity.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/models/base-entity.model.ts#L21)
