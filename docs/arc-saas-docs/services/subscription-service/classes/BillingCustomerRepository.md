[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / BillingCustomerRepository

# Class: BillingCustomerRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`BillingCustomer`](BillingCustomer.md) = [`BillingCustomer`](BillingCustomer.md) |

## Hierarchy

- `DefaultUserModifyCrudRepository`<`T`, typeof [`id`](BillingCustomer.md#id), {}\>

  ↳ **`BillingCustomerRepository`**

## Table of contents

### Constructors

- [constructor](BillingCustomerRepository.md#constructor)

### Properties

- [billingCustomer](BillingCustomerRepository.md#billingcustomer)
- [getCurrentUser](BillingCustomerRepository.md#getcurrentuser)
- [invoiceRepositoryGetter](BillingCustomerRepository.md#invoicerepositorygetter)
- [invoices](BillingCustomerRepository.md#invoices)

## Constructors

### constructor

• **new BillingCustomerRepository**<`T`\>(`dataSource`, `invoiceRepositoryGetter`, `getCurrentUser`, `billingCustomer`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`BillingCustomer`](BillingCustomer.md)<`T`\> = [`BillingCustomer`](BillingCustomer.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `invoiceRepositoryGetter` | `Getter`<[`InvoiceRepository`](InvoiceRepository.md)<[`Invoice`](Invoice.md)\>\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `billingCustomer` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  T,
  typeof BillingCustomer.prototype.id,
  {}
\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/billing-customer.repository.ts:29](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/billing-customer.repository.ts#L29)

## Properties

### billingCustomer

• `Private` `Readonly` **billingCustomer**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/subscription-service/src/repositories/billing-customer.repository.ts:37](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/billing-customer.repository.ts#L37)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/billing-customer.repository.ts:35](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/billing-customer.repository.ts#L35)

___

### invoiceRepositoryGetter

• `Protected` **invoiceRepositoryGetter**: `Getter`<[`InvoiceRepository`](InvoiceRepository.md)<[`Invoice`](Invoice.md)\>\>

#### Defined in

[services/subscription-service/src/repositories/billing-customer.repository.ts:33](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/billing-customer.repository.ts#L33)

___

### invoices

• `Readonly` **invoices**: `HasManyRepositoryFactory`<[`Invoice`](Invoice.md), `undefined` \| `string`\>

#### Defined in

[services/subscription-service/src/repositories/billing-customer.repository.ts:24](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/billing-customer.repository.ts#L24)
