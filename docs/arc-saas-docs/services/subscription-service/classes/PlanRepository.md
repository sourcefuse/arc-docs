[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / PlanRepository

# Class: PlanRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Plan`](Plan.md), typeof [`id`](Plan.md#id), [`PlanRelations`](../interfaces/PlanRelations.md)\>

  ↳ **`PlanRepository`**

## Table of contents

### Constructors

- [constructor](PlanRepository.md#constructor)

### Properties

- [billingCycle](PlanRepository.md#billingcycle)
- [billingCycleRepositoryGetter](PlanRepository.md#billingcyclerepositorygetter)
- [currency](PlanRepository.md#currency)
- [currencyRepositoryGetter](PlanRepository.md#currencyrepositorygetter)
- [getCurrentUser](PlanRepository.md#getcurrentuser)
- [planItemRepositoryGetter](PlanRepository.md#planitemrepositorygetter)
- [planItems](PlanRepository.md#planitems)

## Constructors

### constructor

• **new PlanRepository**(`dataSource`, `getCurrentUser`, `planItemRepositoryGetter`, `billingCycleRepositoryGetter`, `currencyRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `planItemRepositoryGetter` | `Getter`<[`PlanItemRepository`](PlanItemRepository.md)\> |
| `billingCycleRepositoryGetter` | `Getter`<[`BillingCycleRepository`](BillingCycleRepository.md)\> |
| `currencyRepositoryGetter` | `Getter`<[`CurrencyRepository`](CurrencyRepository.md)\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Plan,
  typeof Plan.prototype.id,
  PlanRelations
\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:39](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/repositories/plan.repository.ts#L39)

## Properties

### billingCycle

• `Readonly` **billingCycle**: `BelongsToAccessor`<[`BillingCycle`](BillingCycle.md), `string`\>

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:29](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/repositories/plan.repository.ts#L29)

___

### billingCycleRepositoryGetter

• `Protected` **billingCycleRepositoryGetter**: `Getter`<[`BillingCycleRepository`](BillingCycleRepository.md)\>

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:46](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/repositories/plan.repository.ts#L46)

___

### currency

• `Readonly` **currency**: `BelongsToAccessor`<[`Currency`](Currency.md), `string`\>

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:34](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/repositories/plan.repository.ts#L34)

___

### currencyRepositoryGetter

• `Protected` **currencyRepositoryGetter**: `Getter`<[`CurrencyRepository`](CurrencyRepository.md)\>

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:48](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/repositories/plan.repository.ts#L48)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:42](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/repositories/plan.repository.ts#L42)

___

### planItemRepositoryGetter

• `Protected` **planItemRepositoryGetter**: `Getter`<[`PlanItemRepository`](PlanItemRepository.md)\>

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:44](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/repositories/plan.repository.ts#L44)

___

### planItems

• `Readonly` **planItems**: `HasManyRepositoryFactory`<[`PlanItem`](PlanItem.md), `string`\>

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:24](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/repositories/plan.repository.ts#L24)
