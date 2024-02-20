[@sourceloop/core](../README.md) / [Exports](../modules.md) / BaseEntity

# Class: BaseEntity<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

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

• **new BaseEntity**<`T`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<`T`\> |

#### Overrides

SoftDeleteEntity.constructor

#### Defined in

[packages/core/src/models/base-entity.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/models/base-entity.model.ts#L25)

## Properties

### createdOn

• `Optional` **createdOn**: `Date`

#### Defined in

[packages/core/src/models/base-entity.model.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/models/base-entity.model.ts#L16)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Defined in

[packages/core/src/models/base-entity.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/models/base-entity.model.ts#L23)
