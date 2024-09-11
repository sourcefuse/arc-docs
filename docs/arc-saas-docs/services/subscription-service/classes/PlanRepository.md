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

## Constructors

### constructor

• **new PlanRepository**(`dataSource`, `getCurrentUser`, `billingCycleRepositoryGetter`, `currencyRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `billingCycleRepositoryGetter` | `Getter`<[`BillingCycleRepository`](BillingCycleRepository.md)\> |
| `currencyRepositoryGetter` | `Getter`<[`CurrencyRepository`](CurrencyRepository.md)\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Plan,
  typeof Plan.prototype.id,
  PlanRelations
\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:28](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/plan.repository.ts#L28)

## Properties

### billingCycle

• `Readonly` **billingCycle**: `BelongsToAccessor`<[`BillingCycle`](BillingCycle.md), `string`\>

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:18](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/plan.repository.ts#L18)

___

### billingCycleRepositoryGetter

• `Protected` **billingCycleRepositoryGetter**: `Getter`<[`BillingCycleRepository`](BillingCycleRepository.md)\>

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:34](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/plan.repository.ts#L34)

___

### currency

• `Readonly` **currency**: `BelongsToAccessor`<[`Currency`](Currency.md), `string`\>

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:23](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/plan.repository.ts#L23)

___

### currencyRepositoryGetter

• `Protected` **currencyRepositoryGetter**: `Getter`<[`CurrencyRepository`](CurrencyRepository.md)\>

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:36](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/plan.repository.ts#L36)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:32](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/plan.repository.ts#L32)
