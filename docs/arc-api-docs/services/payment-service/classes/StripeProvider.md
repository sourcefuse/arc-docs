[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / StripeProvider

# Class: StripeProvider

## Implements

- `Provider`<[`StripePaymentGateway`](../interfaces/StripePaymentGateway.md)\>

## Table of contents

### Constructors

- [constructor](StripeProvider.md#constructor)

### Properties

- [config](StripeProvider.md#config)
- [ordersRepository](StripeProvider.md#ordersrepository)
- [stripe](StripeProvider.md#stripe)
- [subscriptionsRepository](StripeProvider.md#subscriptionsrepository)
- [transactionsRepository](StripeProvider.md#transactionsrepository)

### Methods

- [value](StripeProvider.md#value)

## Constructors

### constructor

• **new StripeProvider**(`transactionsRepository`, `ordersRepository`, `subscriptionsRepository`, `config?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `transactionsRepository` | [`TransactionsRepository`](TransactionsRepository.md) |
| `ordersRepository` | [`OrdersRepository`](OrdersRepository.md) |
| `subscriptionsRepository` | [`SubscriptionsRepository`](SubscriptionsRepository.md) |
| `config?` | [`IStripeConfig`](../interfaces/IStripeConfig.md) |

#### Defined in

[services/payment-service/src/providers/stripe/stripe.provider.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/stripe/stripe.provider.ts#L27)

## Properties

### config

• `Private` `Optional` `Readonly` **config**: [`IStripeConfig`](../interfaces/IStripeConfig.md)

#### Defined in

[services/payment-service/src/providers/stripe/stripe.provider.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/stripe/stripe.provider.ts#L37)

___

### ordersRepository

• `Private` `Readonly` **ordersRepository**: [`OrdersRepository`](OrdersRepository.md)

#### Defined in

[services/payment-service/src/providers/stripe/stripe.provider.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/stripe/stripe.provider.ts#L31)

___

### stripe

• **stripe**: `any` = `Stripe`

#### Defined in

[services/payment-service/src/providers/stripe/stripe.provider.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/stripe/stripe.provider.ts#L46)

___

### subscriptionsRepository

• `Private` `Readonly` **subscriptionsRepository**: [`SubscriptionsRepository`](SubscriptionsRepository.md)

#### Defined in

[services/payment-service/src/providers/stripe/stripe.provider.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/stripe/stripe.provider.ts#L33)

___

### transactionsRepository

• `Private` `Readonly` **transactionsRepository**: [`TransactionsRepository`](TransactionsRepository.md)

#### Defined in

[services/payment-service/src/providers/stripe/stripe.provider.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/stripe/stripe.provider.ts#L29)

## Methods

### value

▸ **value**(): `Object`

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `charge` | (`chargeResponse`: `DataObject`<{ `orderId`: `string` ; `stripeEmail`: `string` ; `stripeToken`: `string`  }\>) => `Promise`<{ `orderId`: `undefined` \| `string` = order.id; `res`: [`ResponseMessage`](../enums/ResponseMessage.md) = ResponseMessage.Sucess }\> |
| `create` | (`payorder`: [`Orders`](Orders.md), `paymentTemplate`: `string`) => `Promise`<`string`\> |
| `refund` | (`transactionId`: `string`) => `Promise`<`any`\> |
| `subscriptionCharge` | (`chargeResponse`: `DataObject`<{ `stripeEmail`: `string` ; `stripeToken`: `string` ; `subscriptionId`: `string`  }\>) => `Promise`<{ `res`: [`ResponseMessage`](../enums/ResponseMessage.md) = ResponseMessage.Sucess; `subscriptionId`: `string` = subscription.id }\> |
| `subscriptionCreate` | (`subscription`: [`Subscriptions`](Subscriptions.md)) => `Promise`<`string`\> |
| `subscriptionWebHook` | (`sub`: `DataObject`<{ `data`: `DataObject`<{ `object`: `DataObject`<{ `status`: `string` ; `subscription`: `string`  }\>  }\>  }\>) => `Promise`<`boolean`\> |

#### Implementation of

Provider.value

#### Defined in

[services/payment-service/src/providers/stripe/stripe.provider.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/stripe/stripe.provider.ts#L48)
