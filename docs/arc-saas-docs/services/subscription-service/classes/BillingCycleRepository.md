[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / BillingCycleRepository

# Class: BillingCycleRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`BillingCycle`](BillingCycle.md), typeof [`id`](BillingCycle.md#id), [`BillingCycleRelations`](../interfaces/BillingCycleRelations.md)\>

  ↳ **`BillingCycleRepository`**

## Table of contents

### Constructors

- [constructor](BillingCycleRepository.md#constructor)

### Properties

- [getCurrentUser](BillingCycleRepository.md#getcurrentuser)

## Constructors

### constructor

• **new BillingCycleRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  BillingCycle,
  typeof BillingCycle.prototype.id,
  BillingCycleRelations
\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/billing-cycle.repository.ts:16](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/repositories/billing-cycle.repository.ts#L16)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/billing-cycle.repository.ts:19](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/repositories/billing-cycle.repository.ts#L19)
