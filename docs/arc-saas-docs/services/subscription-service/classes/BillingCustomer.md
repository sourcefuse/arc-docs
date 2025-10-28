[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / BillingCustomer

# Class: BillingCustomer

## Hierarchy

- `UserModifiableEntity`

  ↳ **`BillingCustomer`**

## Table of contents

### Constructors

- [constructor](BillingCustomer.md#constructor)

### Properties

- [customerId](BillingCustomer.md#customerid)
- [id](BillingCustomer.md#id)
- [invoices](BillingCustomer.md#invoices)
- [paymentSourceId](BillingCustomer.md#paymentsourceid)
- [tenantId](BillingCustomer.md#tenantid)

## Constructors

### constructor

• **new BillingCustomer**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`BillingCustomer`](BillingCustomer.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/subscription-service/src/models/billing-customer.model.ts:41](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/billing-customer.model.ts#L41)

## Properties

### customerId

• **customerId**: `string`

#### Defined in

[services/subscription-service/src/models/billing-customer.model.ts:29](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/billing-customer.model.ts#L29)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/subscription-service/src/models/billing-customer.model.ts:15](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/billing-customer.model.ts#L15)

___

### invoices

• **invoices**: [`Invoice`](Invoice.md)[]

#### Defined in

[services/subscription-service/src/models/billing-customer.model.ts:39](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/billing-customer.model.ts#L39)

___

### paymentSourceId

• `Optional` **paymentSourceId**: `string`

#### Defined in

[services/subscription-service/src/models/billing-customer.model.ts:35](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/billing-customer.model.ts#L35)

___

### tenantId

• **tenantId**: `string`

#### Defined in

[services/subscription-service/src/models/billing-customer.model.ts:22](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/billing-customer.model.ts#L22)
