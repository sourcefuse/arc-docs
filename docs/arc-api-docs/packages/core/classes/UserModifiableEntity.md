[@sourceloop/core](../README.md) / [Exports](../modules.md) / UserModifiableEntity

# Class: UserModifiableEntity<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

## Hierarchy

- [`BaseEntity`](BaseEntity.md)<`T`\>

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

• **new UserModifiableEntity**<`T`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<`T`\> |

#### Inherited from

[BaseEntity](BaseEntity.md).[constructor](BaseEntity.md#constructor)

#### Defined in

[packages/core/src/models/base-entity.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/models/base-entity.model.ts#L25)

## Properties

### createdBy

• `Optional` **createdBy**: `string`

#### Defined in

[packages/core/src/models/user-modifiable-entity.model.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/models/user-modifiable-entity.model.ts#L16)

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

[BaseEntity](BaseEntity.md).[createdOn](BaseEntity.md#createdon)

#### Defined in

[packages/core/src/models/base-entity.model.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/models/base-entity.model.ts#L16)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Defined in

[packages/core/src/models/user-modifiable-entity.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/models/user-modifiable-entity.model.ts#L22)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

[BaseEntity](BaseEntity.md).[modifiedOn](BaseEntity.md#modifiedon)

#### Defined in

[packages/core/src/models/base-entity.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/models/base-entity.model.ts#L23)
