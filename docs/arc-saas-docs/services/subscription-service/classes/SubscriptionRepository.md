[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / SubscriptionRepository

# Class: SubscriptionRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Subscription`](Subscription.md) = [`Subscription`](Subscription.md) |

## Hierarchy

- `DefaultUserModifyCrudRepository`<`T`, typeof [`id`](Subscription.md#id), [`SubscriptionRelations`](../interfaces/SubscriptionRelations.md)\>

  ↳ **`SubscriptionRepository`**

## Table of contents

### Constructors

- [constructor](SubscriptionRepository.md#constructor)

### Properties

- [getCurrentUser](SubscriptionRepository.md#getcurrentuser)
- [invoice](SubscriptionRepository.md#invoice)
- [invoiceRepositoryGetter](SubscriptionRepository.md#invoicerepositorygetter)
- [plan](SubscriptionRepository.md#plan)
- [planRepositoryGetter](SubscriptionRepository.md#planrepositorygetter)
- [subscription](SubscriptionRepository.md#subscription)

## Constructors

### constructor

• **new SubscriptionRepository**<`T`\>(`dataSource`, `getCurrentUser`, `planRepositoryGetter`, `invoiceRepositoryGetter`, `subscription`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Subscription`](Subscription.md)<`T`\> = [`Subscription`](Subscription.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `planRepositoryGetter` | `Getter`<[`PlanRepository`](PlanRepository.md)<[`Plan`](Plan.md)\>\> |
| `invoiceRepositoryGetter` | `Getter`<[`InvoiceRepository`](InvoiceRepository.md)<[`Invoice`](Invoice.md)\>\> |
| `subscription` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  T,
  typeof Subscription.prototype.id,
  SubscriptionRelations
\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/subscription.repository.ts:35](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/subscription.repository.ts#L35)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/subscription.repository.ts:39](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/subscription.repository.ts#L39)

___

### invoice

• `Readonly` **invoice**: `BelongsToAccessor`<[`Invoice`](Invoice.md), `string`\>

#### Defined in

[services/subscription-service/src/repositories/subscription.repository.ts:30](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/subscription.repository.ts#L30)

___

### invoiceRepositoryGetter

• `Protected` **invoiceRepositoryGetter**: `Getter`<[`InvoiceRepository`](InvoiceRepository.md)<[`Invoice`](Invoice.md)\>\>

#### Defined in

[services/subscription-service/src/repositories/subscription.repository.ts:43](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/subscription.repository.ts#L43)

___

### plan

• `Readonly` **plan**: `BelongsToAccessor`<[`Plan`](Plan.md), `string`\>

#### Defined in

[services/subscription-service/src/repositories/subscription.repository.ts:25](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/subscription.repository.ts#L25)

___

### planRepositoryGetter

• `Protected` **planRepositoryGetter**: `Getter`<[`PlanRepository`](PlanRepository.md)<[`Plan`](Plan.md)\>\>

#### Defined in

[services/subscription-service/src/repositories/subscription.repository.ts:41](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/subscription.repository.ts#L41)

___

### subscription

• `Private` `Readonly` **subscription**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/subscription-service/src/repositories/subscription.repository.ts:45](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/subscription.repository.ts#L45)
