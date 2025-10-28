[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / PlanSizesRepository

# Class: PlanSizesRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`PlanSizes`](PlanSizes.md) = [`PlanSizes`](PlanSizes.md) |

## Hierarchy

- `DefaultUserModifyCrudRepository`<`T`, typeof [`id`](PlanSizes.md#id), [`PlanSizesRelations`](../interfaces/PlanSizesRelations.md)\>

  ↳ **`PlanSizesRepository`**

## Table of contents

### Constructors

- [constructor](PlanSizesRepository.md#constructor)

### Properties

- [getCurrentUser](PlanSizesRepository.md#getcurrentuser)
- [planSizes](PlanSizesRepository.md#plansizes)

## Constructors

### constructor

• **new PlanSizesRepository**<`T`\>(`dataSource`, `getCurrentUser`, `planSizes`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`PlanSizes`](PlanSizes.md)<`T`\> = [`PlanSizes`](PlanSizes.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `planSizes` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  T,
  typeof PlanSizes.prototype.id,
  PlanSizesRelations
\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/plan-sizes.repository.ts:18](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/plan-sizes.repository.ts#L18)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/plan-sizes.repository.ts:22](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/plan-sizes.repository.ts#L22)

___

### planSizes

• `Private` `Readonly` **planSizes**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/subscription-service/src/repositories/plan-sizes.repository.ts:24](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/plan-sizes.repository.ts#L24)
