[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / BillingPaymentSourceService

# Class: BillingPaymentSourceService

## Table of contents

### Constructors

- [constructor](BillingPaymentSourceService.md#constructor)

### Properties

- [billingCustomerRepository](BillingPaymentSourceService.md#billingcustomerrepository)
- [billingProvider](BillingPaymentSourceService.md#billingprovider)

### Methods

- [createPaymentSource](BillingPaymentSourceService.md#createpaymentsource)
- [deletePaymentSource](BillingPaymentSourceService.md#deletepaymentsource)
- [getPaymentSource](BillingPaymentSourceService.md#getpaymentsource)

## Constructors

### constructor

• **new BillingPaymentSourceService**(`billingCustomerRepository`, `billingProvider`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `billingCustomerRepository` | [`BillingCustomerRepository`](BillingCustomerRepository.md)<[`BillingCustomer`](BillingCustomer.md)\> |
| `billingProvider` | `IService` |

#### Defined in

[services/subscription-service/src/services/billing-payment-source.service.ts:9](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-payment-source.service.ts#L9)

## Properties

### billingCustomerRepository

• `Private` `Readonly` **billingCustomerRepository**: [`BillingCustomerRepository`](BillingCustomerRepository.md)<[`BillingCustomer`](BillingCustomer.md)\>

#### Defined in

[services/subscription-service/src/services/billing-payment-source.service.ts:11](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-payment-source.service.ts#L11)

___

### billingProvider

• `Private` `Readonly` **billingProvider**: `IService`

#### Defined in

[services/subscription-service/src/services/billing-payment-source.service.ts:13](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-payment-source.service.ts#L13)

## Methods

### createPaymentSource

▸ **createPaymentSource**(`paymentSourceDto`): `Promise`<[`PaymentSourceDto`](PaymentSourceDto.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `paymentSourceDto` | [`PaymentSourceDto`](PaymentSourceDto.md) |

#### Returns

`Promise`<[`PaymentSourceDto`](PaymentSourceDto.md)\>

#### Defined in

[services/subscription-service/src/services/billing-payment-source.service.ts:15](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-payment-source.service.ts#L15)

___

### deletePaymentSource

▸ **deletePaymentSource**(`paymentSourceId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `paymentSourceId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/subscription-service/src/services/billing-payment-source.service.ts:51](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-payment-source.service.ts#L51)

___

### getPaymentSource

▸ **getPaymentSource**(`paymentSourceId`): `Promise`<[`PaymentSourceDto`](PaymentSourceDto.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `paymentSourceId` | `string` |

#### Returns

`Promise`<[`PaymentSourceDto`](PaymentSourceDto.md)\>

#### Defined in

[services/subscription-service/src/services/billing-payment-source.service.ts:40](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/billing-payment-source.service.ts#L40)
