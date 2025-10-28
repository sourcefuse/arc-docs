[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / BillingInvoiceService

# Class: BillingInvoiceService

## Table of contents

### Constructors

- [constructor](BillingInvoiceService.md#constructor)

### Properties

- [billingCustomerRepository](BillingInvoiceService.md#billingcustomerrepository)
- [billingProvider](BillingInvoiceService.md#billingprovider)
- [invoiceRepository](BillingInvoiceService.md#invoicerepository)

### Methods

- [applyPayment](BillingInvoiceService.md#applypayment)
- [createInvoice](BillingInvoiceService.md#createinvoice)
- [deleteInvoice](BillingInvoiceService.md#deleteinvoice)
- [getInvoice](BillingInvoiceService.md#getinvoice)

## Constructors

### constructor

• **new BillingInvoiceService**(`billingCustomerRepository`, `invoiceRepository`, `billingProvider`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `billingCustomerRepository` | [`BillingCustomerRepository`](BillingCustomerRepository.md)<[`BillingCustomer`](BillingCustomer.md)\> |
| `invoiceRepository` | [`InvoiceRepository`](InvoiceRepository.md)<[`Invoice`](Invoice.md)\> |
| `billingProvider` | `IService` |

#### Defined in

[services/subscription-service/src/services/billing-invoice.service.ts:10](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-invoice.service.ts#L10)

## Properties

### billingCustomerRepository

• `Private` `Readonly` **billingCustomerRepository**: [`BillingCustomerRepository`](BillingCustomerRepository.md)<[`BillingCustomer`](BillingCustomer.md)\>

#### Defined in

[services/subscription-service/src/services/billing-invoice.service.ts:12](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-invoice.service.ts#L12)

___

### billingProvider

• `Private` `Readonly` **billingProvider**: `IService`

#### Defined in

[services/subscription-service/src/services/billing-invoice.service.ts:16](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-invoice.service.ts#L16)

___

### invoiceRepository

• `Private` `Readonly` **invoiceRepository**: [`InvoiceRepository`](InvoiceRepository.md)<[`Invoice`](Invoice.md)\>

#### Defined in

[services/subscription-service/src/services/billing-invoice.service.ts:14](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-invoice.service.ts#L14)

## Methods

### applyPayment

▸ **applyPayment**(`invoiceId`, `transactionDto`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `invoiceId` | `string` |
| `transactionDto` | `TransactionDto` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/subscription-service/src/services/billing-invoice.service.ts:86](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-invoice.service.ts#L86)

___

### createInvoice

▸ **createInvoice**(`invoiceDto`): `Promise`<[`InvoiceDto`](InvoiceDto.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `invoiceDto` | `Omit`<[`InvoiceDto`](InvoiceDto.md), ``"id"`` \| ``"status"``\> |

#### Returns

`Promise`<[`InvoiceDto`](InvoiceDto.md)\>

#### Defined in

[services/subscription-service/src/services/billing-invoice.service.ts:18](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-invoice.service.ts#L18)

___

### deleteInvoice

▸ **deleteInvoice**(`invoiceId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `invoiceId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/subscription-service/src/services/billing-invoice.service.ts:94](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-invoice.service.ts#L94)

___

### getInvoice

▸ **getInvoice**(`invoiceId`): `Promise`<[`InvoiceDto`](InvoiceDto.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `invoiceId` | `string` |

#### Returns

`Promise`<[`InvoiceDto`](InvoiceDto.md)\>

#### Defined in

[services/subscription-service/src/services/billing-invoice.service.ts:60](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-invoice.service.ts#L60)
