[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / PlanSizesRepository

# Class: PlanSizesRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`PlanSizes`](PlanSizes.md), typeof [`id`](PlanSizes.md#id), [`PlanSizesRelations`](../interfaces/PlanSizesRelations.md)\>

  ↳ **`PlanSizesRepository`**

## Table of contents

### Constructors

- [constructor](PlanSizesRepository.md#constructor)

### Properties

- [getCurrentUser](PlanSizesRepository.md#getcurrentuser)

## Constructors

### constructor

• **new PlanSizesRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  PlanSizes,
  typeof PlanSizes.prototype.id,
  PlanSizesRelations
\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/plan-sizes.repository.ts:16](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/plan-sizes.repository.ts#L16)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/plan-sizes.repository.ts:20](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/plan-sizes.repository.ts#L20)
