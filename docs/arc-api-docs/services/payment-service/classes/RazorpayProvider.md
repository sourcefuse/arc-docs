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

[providers/razorpay/razorpay.provider.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L27)

## Properties

### config

• `Private` `Optional` `Readonly` **config**: [`IRazorpayConfig`](../interfaces/IRazorpayConfig.md)

#### Defined in

[providers/razorpay/razorpay.provider.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L36)

___

### instance

• **instance**: `any`

#### Defined in

[providers/razorpay/razorpay.provider.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L39)

___

### logger

• **logger**: `ILogger`

#### Defined in

[providers/razorpay/razorpay.provider.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L34)

___

### ordersRepository

• `Private` `Readonly` **ordersRepository**: [`OrdersRepository`](OrdersRepository.md)

#### Defined in

[providers/razorpay/razorpay.provider.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L31)

___

### razorpayKey

• **razorpayKey**: `undefined` \| `string`

#### Defined in

[providers/razorpay/razorpay.provider.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L45)

___

### subscriptionsRepository

• `Private` `Readonly` **subscriptionsRepository**: [`SubscriptionsRepository`](SubscriptionsRepository.md)

#### Defined in

[providers/razorpay/razorpay.provider.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L33)

___

### transactionsRepository

• `Private` `Readonly` **transactionsRepository**: [`TransactionsRepository`](TransactionsRepository.md)

#### Defined in

[providers/razorpay/razorpay.provider.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L29)

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

[providers/razorpay/razorpay.provider.ts:101](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L101)

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

[providers/razorpay/razorpay.provider.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L47)

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

[providers/razorpay/razorpay.provider.ts:138](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L138)

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

[providers/razorpay/razorpay.provider.ts:159](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/payment-service/src/providers/razorpay/razorpay.provider.ts#L159)
