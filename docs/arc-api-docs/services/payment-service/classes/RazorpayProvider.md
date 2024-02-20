[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / RazorpayProvider

# Class: RazorpayProvider

## Implements

- `Provider`<[`RazorpayPaymentGateway`](../interfaces/RazorpayPaymentGateway.md)\>

## Table of contents

### Constructors

- [constructor](RazorpayProvider.md#constructor)

### Properties

- [config](RazorpayProvider.md#config)
- [instance](RazorpayProvider.md#instance)
- [logger](RazorpayProvider.md#logger)
- [ordersRepository](RazorpayProvider.md#ordersrepository)
- [razorpayKey](RazorpayProvider.md#razorpaykey)
- [subscriptionsRepository](RazorpayProvider.md#subscriptionsrepository)
- [transactionsRepository](RazorpayProvider.md#transactionsrepository)

### Methods

- [subscriptionCharge](RazorpayProvider.md#subscriptioncharge)
- [subscriptionCreate](RazorpayProvider.md#subscriptioncreate)
- [subscriptionWebHook](RazorpayProvider.md#subscriptionwebhook)
- [value](RazorpayProvider.md#value)

## Constructors

### constructor

• **new RazorpayProvider**(`transactionsRepository`, `ordersRepository`, `subscriptionsRepository`, `logger`, `config?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `transactionsRepository` | [`TransactionsRepository`](TransactionsRepository.md) |
| `ordersRepository` | [`OrdersRepository`](OrdersRepository.md) |
| `subscriptionsRepository` | [`SubscriptionsRepository`](SubscriptionsRepository.md) |
| `logger` | `ILogger` |
| `config?` | [`IRazorpayConfig`](../interfaces/IRazorpayConfig.md) |

#### Defined in

[services/payment-service/src/providers/razorpay/razorpay.provider.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L28)

## Properties

### config

• `Private` `Optional` `Readonly` **config**: [`IRazorpayConfig`](../interfaces/IRazorpayConfig.md)

#### Defined in

[services/payment-service/src/providers/razorpay/razorpay.provider.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L37)

___

### instance

• **instance**: `any`

#### Defined in

[services/payment-service/src/providers/razorpay/razorpay.provider.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L40)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/payment-service/src/providers/razorpay/razorpay.provider.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L35)

___

### ordersRepository

• `Private` `Readonly` **ordersRepository**: [`OrdersRepository`](OrdersRepository.md)

#### Defined in

[services/payment-service/src/providers/razorpay/razorpay.provider.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L32)

___

### razorpayKey

• **razorpayKey**: `undefined` \| `string`

#### Defined in

[services/payment-service/src/providers/razorpay/razorpay.provider.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L46)

___

### subscriptionsRepository

• `Private` `Readonly` **subscriptionsRepository**: [`SubscriptionsRepository`](SubscriptionsRepository.md)

#### Defined in

[services/payment-service/src/providers/razorpay/razorpay.provider.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L34)

___

### transactionsRepository

• `Private` `Readonly` **transactionsRepository**: [`TransactionsRepository`](TransactionsRepository.md)

#### Defined in

[services/payment-service/src/providers/razorpay/razorpay.provider.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L30)

## Methods

### subscriptionCharge

▸ **subscriptionCharge**(`chargeResponse`): `Promise`<{ `res`: [`ResponseMessage`](../enums/ResponseMessage.md) = ResponseMessage.NotSucess; `subscriptionId`: `undefined` \| `string` = chargeResponse.razorpay\_subscription\_id }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `chargeResponse` | `DataObject`<{ `razorpay_payment_id`: `string` ; `razorpay_subscription_id`: `string`  }\> |

#### Returns

`Promise`<{ `res`: [`ResponseMessage`](../enums/ResponseMessage.md) = ResponseMessage.NotSucess; `subscriptionId`: `undefined` \| `string` = chargeResponse.razorpay\_subscription\_id }\>

#### Defined in

[services/payment-service/src/providers/razorpay/razorpay.provider.ts:102](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L102)

___

### subscriptionCreate

▸ **subscriptionCreate**(`subscription`, `paymentTemplate`): `Promise`<`string`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `subscription` | [`Subscriptions`](Subscriptions.md) |
| `paymentTemplate` | `string` |

#### Returns

`Promise`<`string`\>

#### Defined in

[services/payment-service/src/providers/razorpay/razorpay.provider.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L48)

___

### subscriptionWebHook

▸ **subscriptionWebHook**(`sub`): `Promise`<`boolean`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `sub` | `DataObject`<{ `payload`: `DataObject`<{ `subscription`: `DataObject`<{ `entity`: `DataObject`<{ `id`: `undefined` \| `string` ; `status`: `string`  }\>  }\>  }\>  }\> |

#### Returns

`Promise`<`boolean`\>

#### Defined in

[services/payment-service/src/providers/razorpay/razorpay.provider.ts:139](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L139)

___

### value

▸ **value**(): `Object`

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `charge` | (`chargeResponse`: `DataObject`<{ `razorpay_order_id`: `string` ; `razorpay_payment_id`: `string`  }\>) => `Promise`<{ `orderId`: `undefined` \| `string` ; `res`: [`ResponseMessage`](../enums/ResponseMessage.md) = ResponseMessage.Sucess }\> |
| `create` | (`payorder`: [`Orders`](Orders.md), `paymentTemplate`: `string`) => `Promise`<`unknown`\> |
| `refund` | (`transactionId`: `string`) => `Promise`<`any`\> |
| `subscriptionCharge` | (`chargeResponse`: `DataObject`<{ `razorpay_payment_id`: `string` ; `razorpay_subscription_id`: `string`  }\>) => `Promise`<{ `res`: [`ResponseMessage`](../enums/ResponseMessage.md) = ResponseMessage.NotSucess; `subscriptionId`: `undefined` \| `string` = chargeResponse.razorpay\_subscription\_id }\> |
| `subscriptionCreate` | (`subscription`: [`Subscriptions`](Subscriptions.md), `paymentTemplate`: `string`) => `Promise`<`string`\> |
| `subscriptionWebHook` | (`sub`: `DataObject`<{ `payload`: `DataObject`<{ `subscription`: `DataObject`<{ `entity`: `DataObject`<{ `id`: `undefined` \| `string` ; `status`: `string`  }\>  }\>  }\>  }\>) => `Promise`<`boolean`\> |

#### Implementation of

Provider.value

#### Defined in

[services/payment-service/src/providers/razorpay/razorpay.provider.ts:160](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L160)
