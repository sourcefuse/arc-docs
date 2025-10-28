[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / InvoiceHelperService

# Class: InvoiceHelperService

## Table of contents

### Constructors

- [constructor](InvoiceHelperService.md#constructor)

### Properties

- [invoiceRepository](InvoiceHelperService.md#invoicerepository)

### Methods

- [createInvoice](InvoiceHelperService.md#createinvoice)
- [downloadInvoice](InvoiceHelperService.md#downloadinvoice)
- [generatePDF](InvoiceHelperService.md#generatepdf)

## Constructors

### constructor

• **new InvoiceHelperService**(`invoiceRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `invoiceRepository` | [`InvoiceRepository`](InvoiceRepository.md)<[`Invoice`](Invoice.md)\> |

#### Defined in

[services/tenant-management-service/src/services/invoice-helper.service.ts:12](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/services/invoice-helper.service.ts#L12)

## Properties

### invoiceRepository

• `Private` `Readonly` **invoiceRepository**: [`InvoiceRepository`](InvoiceRepository.md)<[`Invoice`](Invoice.md)\>

#### Defined in

[services/tenant-management-service/src/services/invoice-helper.service.ts:14](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/services/invoice-helper.service.ts#L14)

## Methods

### createInvoice

▸ **createInvoice**(`invoice`): `Promise`<[`Invoice`](Invoice.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `invoice` | `Omit`<[`Invoice`](Invoice.md), ``"id"``\> |

#### Returns

`Promise`<[`Invoice`](Invoice.md)\>

#### Defined in

[services/tenant-management-service/src/services/invoice-helper.service.ts:16](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/services/invoice-helper.service.ts#L16)

___

### downloadInvoice

▸ **downloadInvoice**(`id`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/tenant-management-service/src/services/invoice-helper.service.ts:19](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/services/invoice-helper.service.ts#L19)

___

### generatePDF

▸ **generatePDF**(`invoice`): `Promise`<`string`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `invoice` | [`Invoice`](Invoice.md) |

#### Returns

`Promise`<`string`\>

#### Defined in

[services/tenant-management-service/src/services/invoice-helper.service.ts:30](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/services/invoice-helper.service.ts#L30)
