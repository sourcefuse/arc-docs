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
| `transactionsRepository` | `TransactionsRepository` |
| `ordersRepository` | `OrdersRepository` |
| `subscriptionsRepository` | `SubscriptionsRepository` |
| `config?` | [`IStripeConfig`](../interfaces/IStripeConfig.md) |

#### Defined in

[providers/stripe/stripe.provider.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/payment-service/src/providers/stripe/stripe.provider.ts#L26)

## Properties

### config

• `Private` `Optional` `Readonly` **config**: [`IStripeConfig`](../interfaces/IStripeConfig.md)

#### Defined in

[providers/stripe/stripe.provider.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/payment-service/src/providers/stripe/stripe.provider.ts#L36)

___

### ordersRepository

• `Private` `Readonly` **ordersRepository**: `OrdersRepository`

#### Defined in

[providers/stripe/stripe.provider.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/payment-service/src/providers/stripe/stripe.provider.ts#L30)

___

### stripe

• **stripe**: `any` = `Stripe`

#### Defined in

[providers/stripe/stripe.provider.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/payment-service/src/providers/stripe/stripe.provider.ts#L45)

___

### subscriptionsRepository

• `Private` `Readonly` **subscriptionsRepository**: `SubscriptionsRepository`

#### Defined in

[providers/stripe/stripe.provider.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/payment-service/src/providers/stripe/stripe.provider.ts#L32)

___

### transactionsRepository

• `Private` `Readonly` **transactionsRepository**: `TransactionsRepository`

#### Defined in

[providers/stripe/stripe.provider.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/payment-service/src/providers/stripe/stripe.provider.ts#L28)

## Methods

### value

▸ **value**(): `Object`

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `charge` | (`chargeResponse`: `DataObject`<{ `orderId`: `string` ; `stripeEmail`: `string` ; `stripeToken`: `string`  }\>) => `Promise`<{ `orderId`: `undefined` \| `string` = order.id; `res`: `ResponseMessage` = ResponseMessage.Sucess }\> |
| `create` | (`payorder`: `Orders`, `paymentTemplate`: `string`) => `Promise`<`string`\> |
| `refund` | (`transactionId`: `string`) => `Promise`<`any`\> |
| `subscriptionCharge` | (`chargeResponse`: `DataObject`<{ `stripeEmail`: `string` ; `stripeToken`: `string` ; `subscriptionId`: `string`  }\>) => `Promise`<{ `res`: `ResponseMessage` = ResponseMessage.Sucess; `subscriptionId`: `string` = subscription.id }\> |
| `subscriptionCreate` | (`subscription`: `Subscriptions`) => `Promise`<`string`\> |
| `subscriptionWebHook` | (`sub`: `DataObject`<{ `data`: `DataObject`<{ `object`: `DataObject`<{ `status`: `string` ; `subscription`: `string`  }\>  }\>  }\>) => `Promise`<`boolean`\> |

#### Implementation of

Provider.value

#### Defined in

[providers/stripe/stripe.provider.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/payment-service/src/providers/stripe/stripe.provider.ts#L47)
