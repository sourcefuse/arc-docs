[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / Invoice

# Class: Invoice

## Hierarchy

- `UserModifiableEntity`

  ↳ **`Invoice`**

## Table of contents

### Constructors

- [constructor](Invoice.md#constructor)

### Properties

- [billingCustomerId](Invoice.md#billingcustomerid)
- [id](Invoice.md#id)
- [invoiceId](Invoice.md#invoiceid)
- [invoiceStatus](Invoice.md#invoicestatus)

## Constructors

### constructor

• **new Invoice**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Invoice`](Invoice.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/subscription-service/src/models/invoice.model.ts:37](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/invoice.model.ts#L37)

## Properties

### billingCustomerId

• **billingCustomerId**: `string`

#### Defined in

[services/subscription-service/src/models/invoice.model.ts:35](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/invoice.model.ts#L35)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/subscription-service/src/models/invoice.model.ts:14](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/invoice.model.ts#L14)

___

### invoiceId

• **invoiceId**: `string`

#### Defined in

[services/subscription-service/src/models/invoice.model.ts:21](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/invoice.model.ts#L21)

___

### invoiceStatus

• `Optional` **invoiceStatus**: [`InvoiceStatus`](../modules.md#invoicestatus)

#### Defined in

[services/subscription-service/src/models/invoice.model.ts:28](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/invoice.model.ts#L28)
