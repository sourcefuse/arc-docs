[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / BillingCycleRepository

# Class: BillingCycleRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`BillingCycle`](BillingCycle.md) = [`BillingCycle`](BillingCycle.md) |

## Hierarchy

- `DefaultUserModifyCrudRepository`<`T`, typeof [`id`](BillingCycle.md#id), {}\>

  ↳ **`BillingCycleRepository`**

## Table of contents

### Constructors

- [constructor](BillingCycleRepository.md#constructor)

### Properties

- [billingCycle](BillingCycleRepository.md#billingcycle)
- [getCurrentUser](BillingCycleRepository.md#getcurrentuser)

## Constructors

### constructor

• **new BillingCycleRepository**<`T`\>(`dataSource`, `getCurrentUser`, `billingCycle`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`BillingCycle`](BillingCycle.md)<`T`\> = [`BillingCycle`](BillingCycle.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `billingCycle` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  T,
  typeof BillingCycle.prototype.id,
  {}
\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/billing-cycle.repository.ts:17](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/billing-cycle.repository.ts#L17)

## Properties

### billingCycle

• `Private` `Readonly` **billingCycle**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/subscription-service/src/repositories/billing-cycle.repository.ts:23](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/billing-cycle.repository.ts#L23)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/billing-cycle.repository.ts:21](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/billing-cycle.repository.ts#L21)
