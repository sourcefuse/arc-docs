[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / BillingCustomerService

# Class: BillingCustomerService

## Table of contents

### Constructors

- [constructor](BillingCustomerService.md#constructor)

### Properties

- [billingCustomerRepo](BillingCustomerService.md#billingcustomerrepo)
- [billingProvider](BillingCustomerService.md#billingprovider)
- [invoiceRepo](BillingCustomerService.md#invoicerepo)

### Methods

- [createCustomer](BillingCustomerService.md#createcustomer)
- [deleteCustomerByTenantId](BillingCustomerService.md#deletecustomerbytenantid)
- [getCustomer](BillingCustomerService.md#getcustomer)
- [mapToCustomerDto](BillingCustomerService.md#maptocustomerdto)
- [updateCustomerByTenantId](BillingCustomerService.md#updatecustomerbytenantid)

## Constructors

### constructor

• **new BillingCustomerService**(`billingCustomerRepo`, `invoiceRepo`, `billingProvider`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `billingCustomerRepo` | [`BillingCustomerRepository`](BillingCustomerRepository.md)<[`BillingCustomer`](BillingCustomer.md)\> |
| `invoiceRepo` | [`InvoiceRepository`](InvoiceRepository.md)<[`Invoice`](Invoice.md)\> |
| `billingProvider` | `IService` |

#### Defined in

[services/subscription-service/src/services/billing-customer.service.ts:9](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-customer.service.ts#L9)

## Properties

### billingCustomerRepo

• `Private` `Readonly` **billingCustomerRepo**: [`BillingCustomerRepository`](BillingCustomerRepository.md)<[`BillingCustomer`](BillingCustomer.md)\>

#### Defined in

[services/subscription-service/src/services/billing-customer.service.ts:11](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-customer.service.ts#L11)

___

### billingProvider

• `Private` `Readonly` **billingProvider**: `IService`

#### Defined in

[services/subscription-service/src/services/billing-customer.service.ts:15](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-customer.service.ts#L15)

___

### invoiceRepo

• `Private` `Readonly` **invoiceRepo**: [`InvoiceRepository`](InvoiceRepository.md)<[`Invoice`](Invoice.md)\>

#### Defined in

[services/subscription-service/src/services/billing-customer.service.ts:13](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-customer.service.ts#L13)

## Methods

### createCustomer

▸ **createCustomer**(`customerDto`, `tenantId`): `Promise`<[`CustomerDto`](CustomerDto.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `customerDto` | `Omit`<[`CustomerDto`](CustomerDto.md), ``"id"``\> |
| `tenantId` | `string` |

#### Returns

`Promise`<[`CustomerDto`](CustomerDto.md)\>

#### Defined in

[services/subscription-service/src/services/billing-customer.service.ts:17](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-customer.service.ts#L17)

___

### deleteCustomerByTenantId

▸ **deleteCustomerByTenantId**(`tenantId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `tenantId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/subscription-service/src/services/billing-customer.service.ts:87](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-customer.service.ts#L87)

___

### getCustomer

▸ **getCustomer**(`filter?`): `Promise`<{ `customerDetails`: [`CustomerDto`](CustomerDto.md) ; `info`: [`BillingCustomer`](BillingCustomer.md)  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `filter?` | `Filter`<[`BillingCustomer`](BillingCustomer.md)\> |

#### Returns

`Promise`<{ `customerDetails`: [`CustomerDto`](CustomerDto.md) ; `info`: [`BillingCustomer`](BillingCustomer.md)  }\>

#### Defined in

[services/subscription-service/src/services/billing-customer.service.ts:52](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-customer.service.ts#L52)

___

### mapToCustomerDto

▸ `Private` **mapToCustomerDto**(`customer`): [`CustomerDto`](CustomerDto.md)

#### Parameters

| Name | Type |
| :------ | :------ |
| `customer` | `TCustomer` |

#### Returns

[`CustomerDto`](CustomerDto.md)

#### Defined in

[services/subscription-service/src/services/billing-customer.service.ts:30](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-customer.service.ts#L30)

___

### updateCustomerByTenantId

▸ **updateCustomerByTenantId**(`tenantId`, `customerDto`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `tenantId` | `string` |
| `customerDto` | `Partial`<[`CustomerDto`](CustomerDto.md)\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/subscription-service/src/services/billing-customer.service.ts:69](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-customer.service.ts#L69)
