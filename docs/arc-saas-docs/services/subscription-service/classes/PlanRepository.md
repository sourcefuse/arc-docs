[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / PlanRepository

# Class: PlanRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Plan`](Plan.md) = [`Plan`](Plan.md) |

## Hierarchy

- `DefaultUserModifyCrudRepository`<`T`, typeof [`id`](Plan.md#id), [`PlanRelations`](../interfaces/PlanRelations.md)\>

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
- [plan](PlanRepository.md#plan)

## Constructors

### constructor

• **new PlanRepository**<`T`\>(`dataSource`, `getCurrentUser`, `billingCycleRepositoryGetter`, `currencyRepositoryGetter`, `plan`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Plan`](Plan.md)<`T`\> = [`Plan`](Plan.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `billingCycleRepositoryGetter` | `Getter`<[`BillingCycleRepository`](BillingCycleRepository.md)<[`BillingCycle`](BillingCycle.md)\>\> |
| `currencyRepositoryGetter` | `Getter`<[`CurrencyRepository`](CurrencyRepository.md)<[`Currency`](Currency.md)\>\> |
| `plan` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  T,
  typeof Plan.prototype.id,
  PlanRelations
\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:35](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/plan.repository.ts#L35)

## Properties

### billingCycle

• `Readonly` **billingCycle**: `BelongsToAccessor`<[`BillingCycle`](BillingCycle.md), `string`\>

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:25](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/plan.repository.ts#L25)

___

### billingCycleRepositoryGetter

• `Protected` **billingCycleRepositoryGetter**: `Getter`<[`BillingCycleRepository`](BillingCycleRepository.md)<[`BillingCycle`](BillingCycle.md)\>\>

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:41](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/plan.repository.ts#L41)

___

### currency

• `Readonly` **currency**: `BelongsToAccessor`<[`Currency`](Currency.md), `string`\>

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:30](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/plan.repository.ts#L30)

___

### currencyRepositoryGetter

• `Protected` **currencyRepositoryGetter**: `Getter`<[`CurrencyRepository`](CurrencyRepository.md)<[`Currency`](Currency.md)\>\>

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:43](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/plan.repository.ts#L43)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:39](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/plan.repository.ts#L39)

___

### plan

• `Private` `Readonly` **plan**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/subscription-service/src/repositories/plan.repository.ts:45](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/plan.repository.ts#L45)
