[@sourceloop/core](../README.md) / [Exports](../modules.md) / DefaultSoftCrudRepository

# Class: DefaultSoftCrudRepository<T, ID, Relations\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `SoftDeleteEntity` |
| `ID` | `ID` |
| `Relations` | extends `object` = {} |

## Hierarchy

- `SoftCrudRepository`<`T`, `ID`, `Relations`\>

  ↳ **`DefaultSoftCrudRepository`**

## Table of contents

### Constructors

- [constructor](DefaultSoftCrudRepository.md#constructor)

## Constructors

### constructor

• **new DefaultSoftCrudRepository**<`T`, `ID`, `Relations`\>(`entityClass`, `dataSource`, `getCurrentUser?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `SoftDeleteEntity`<`T`\> |
| `ID` | `ID` |
| `Relations` | extends `object` = {} |

#### Parameters

| Name | Type |
| :------ | :------ |
| `entityClass` | typeof `Entity` & {} |
| `dataSource` | `DataSource` |
| `getCurrentUser?` | `Getter`<`undefined` \| `IUser`\> |

#### Inherited from

SoftCrudRepository<T, ID, Relations\>.constructor

#### Defined in

node_modules/loopback4-soft-delete/dist/repositories/soft-crud.repository.base.d.ts:9
