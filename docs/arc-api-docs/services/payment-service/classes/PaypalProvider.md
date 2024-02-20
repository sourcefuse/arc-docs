[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / PaypalProvider

# Class: PaypalProvider

## Implements

- `Provider`<[`PayPalPaymentGateway`](../interfaces/PayPalPaymentGateway.md)\>

## Table of contents

### Constructors

- [constructor](PaypalProvider.md#constructor)

### Properties

- [client](PaypalProvider.md#client)
- [config](PaypalProvider.md#config)
- [environment](PaypalProvider.md#environment)
- [logger](PaypalProvider.md#logger)
- [ordersRepository](PaypalProvider.md#ordersrepository)
- [subscriptionsRepository](PaypalProvider.md#subscriptionsrepository)
- [transactionsRepository](PaypalProvider.md#transactionsrepository)

### Methods

- [value](PaypalProvider.md#value)

## Constructors

### constructor

• **new PaypalProvider**(`transactionsRepository`, `ordersRepository`, `subscriptionsRepository`, `logger`, `config?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `transactionsRepository` | [`TransactionsRepository`](TransactionsRepository.md) |
| `ordersRepository` | [`OrdersRepository`](OrdersRepository.md) |
| `subscriptionsRepository` | [`SubscriptionsRepository`](SubscriptionsRepository.md) |
| `logger` | `ILogger` |
| `config?` | [`IPayPalConfig`](../interfaces/IPayPalConfig.md) |

#### Defined in

[services/payment-service/src/providers/paypal/paypal-provider.service.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/paypal/paypal-provider.service.ts#L28)

## Properties

### client

• **client**: `PayPalHttpClient`

#### Defined in

[services/payment-service/src/providers/paypal/paypal-provider.service.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/paypal/paypal-provider.service.ts#L27)

___

### config

• `Private` `Optional` `Readonly` **config**: [`IPayPalConfig`](../interfaces/IPayPalConfig.md)

#### Defined in

[services/payment-service/src/providers/paypal/paypal-provider.service.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/paypal/paypal-provider.service.ts#L37)

___

### environment

• **environment**: `SandboxEnvironment` \| `LiveEnvironment`

#### Defined in

[services/payment-service/src/providers/paypal/paypal-provider.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/paypal/paypal-provider.service.ts#L26)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/payment-service/src/providers/paypal/paypal-provider.service.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/paypal/paypal-provider.service.ts#L35)

___

### ordersRepository

• `Private` `Readonly` **ordersRepository**: [`OrdersRepository`](OrdersRepository.md)

#### Defined in

[services/payment-service/src/providers/paypal/paypal-provider.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/paypal/paypal-provider.service.ts#L32)

___

### subscriptionsRepository

• `Private` `Readonly` **subscriptionsRepository**: [`SubscriptionsRepository`](SubscriptionsRepository.md)

#### Defined in

[services/payment-service/src/providers/paypal/paypal-provider.service.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/paypal/paypal-provider.service.ts#L34)

___

### transactionsRepository

• `Private` `Readonly` **transactionsRepository**: [`TransactionsRepository`](TransactionsRepository.md)

#### Defined in

[services/payment-service/src/providers/paypal/paypal-provider.service.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/paypal/paypal-provider.service.ts#L30)

## Methods

### value

▸ **value**(): `Object`

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `charge` | (`chargeResponse`: { `orderId`: `string`  }) => `Promise`<{ `orderId`: `undefined` \| `string` = orderDetails.id; `res`: [`ResponseMessage`](../enums/ResponseMessage.md) = ResponseMessage.Sucess }\> |
| `create` | (`payorder`: [`Orders`](Orders.md), `paymentTemplate`: `string`) => `Promise`<{ `orderId`: `undefined` \| `string` = payorder.id; `orderPayLink`: `undefined` = payorder.metaData.paypalOrderPayLink; `payOrderId`: `undefined` = order.id; `res`: `string` = 'Payment already Done for this Order'; `status`: [`Status`](../enums/Status.md) = Status.AlreadyPaid } \| { `orderId`: `undefined` \| `string` = payorder.id; `orderPayLink`: `any` = payorder.metaData.paypalOrderPayLink; `payOrderId`: `any` = order.id; `res`: `undefined` = 'Payment already Done for this Order'; `status`: `undefined` = Status.AlreadyPaid }\> |
| `refund` | (`transactionId`: `string`, `note?`: `string`) => `Promise`<`any`\> |
| `subscriptionCharge` | (`chargeResponse`: `AnyObject`) => `Promise`<`void`\> |
| `subscriptionCreate` | (`subscriptions`: [`Subscriptions`](Subscriptions.md), `paymentTemplate`: `string`) => `Promise`<{ `res`: `string` = '' }\> |
| `subscriptionWebHook` | (`sub`: `DataObject`<{}\>) => `Promise`<`void`\> |

#### Implementation of

Provider.value

#### Defined in

[services/payment-service/src/providers/paypal/paypal-provider.service.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/paypal/paypal-provider.service.ts#L57)
