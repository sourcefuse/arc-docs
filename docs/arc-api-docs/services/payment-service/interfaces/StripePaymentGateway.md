[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / StripePaymentGateway

# Interface: StripePaymentGateway

## Table of contents

### Methods

- [charge](StripePaymentGateway.md#charge)
- [create](StripePaymentGateway.md#create)
- [refund](StripePaymentGateway.md#refund)
- [subscriptionCharge](StripePaymentGateway.md#subscriptioncharge)
- [subscriptionCreate](StripePaymentGateway.md#subscriptioncreate)
- [subscriptionWebHook](StripePaymentGateway.md#subscriptionwebhook)

## Methods

### charge

▸ **charge**(`chargeResponse`): `Promise`<`DataObject`<{ `res`: `string`  }\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `chargeResponse` | `DataObject`<{ `orderId`: `string` ; `stripeEmail`: `string` ; `stripeToken`: `string`  }\> |

#### Returns

`Promise`<`DataObject`<{ `res`: `string`  }\>\>

#### Defined in

[services/payment-service/src/providers/stripe/types.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/stripe/types.ts#L13)

___

### create

▸ **create**(`payorder`, `paymentTemplate`): `Promise`<`string`\> \| `DataObject`<{}\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `payorder` | [`Orders`](../classes/Orders.md) |
| `paymentTemplate` | `undefined` \| `string` |

#### Returns

`Promise`<`string`\> \| `DataObject`<{}\>

#### Defined in

[services/payment-service/src/providers/stripe/types.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/stripe/types.ts#L9)

___

### refund

▸ **refund**(`transactionId`): `void` \| `Promise`<{}\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `transactionId` | `string` |

#### Returns

`void` \| `Promise`<{}\>

#### Defined in

[services/payment-service/src/providers/stripe/types.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/stripe/types.ts#L20)

___

### subscriptionCharge

▸ **subscriptionCharge**(`chargeResponse`): `Promise`<`DataObject`<{ `res`: `string`  }\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `chargeResponse` | `DataObject`<{ `stripeEmail`: `string` ; `stripeToken`: `string` ; `subscriptionId`: `string`  }\> |

#### Returns

`Promise`<`DataObject`<{ `res`: `string`  }\>\>

#### Defined in

[services/payment-service/src/providers/stripe/types.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/stripe/types.ts#L25)

___

### subscriptionCreate

▸ **subscriptionCreate**(`subscriptions`, `paymentTemplate`): {} \| `Promise`<`string`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `subscriptions` | [`Subscriptions`](../classes/Subscriptions.md) |
| `paymentTemplate` | `undefined` \| `string` |

#### Returns

{} \| `Promise`<`string`\>

#### Defined in

[services/payment-service/src/providers/stripe/types.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/stripe/types.ts#L21)

___

### subscriptionWebHook

▸ **subscriptionWebHook**(`sub`): `Promise`<{}\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `sub` | `DataObject`<{ `data`: `DataObject`<{ `object`: `DataObject`<{ `status`: `string` ; `subscription`: `string`  }\>  }\>  }\> |

#### Returns

`Promise`<{}\>

#### Defined in

[services/payment-service/src/providers/stripe/types.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/stripe/types.ts#L32)
