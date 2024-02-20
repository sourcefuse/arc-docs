[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / PayPalPaymentGateway

# Interface: PayPalPaymentGateway

## Table of contents

### Methods

- [charge](PayPalPaymentGateway.md#charge)
- [create](PayPalPaymentGateway.md#create)
- [refund](PayPalPaymentGateway.md#refund)
- [subscriptionCharge](PayPalPaymentGateway.md#subscriptioncharge)
- [subscriptionCreate](PayPalPaymentGateway.md#subscriptioncreate)
- [subscriptionWebHook](PayPalPaymentGateway.md#subscriptionwebhook)

## Methods

### charge

▸ **charge**(`chargeResponse`): `Promise`<`DataObject`<{ `orderId`: `string` ; `res`: `string`  }\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `chargeResponse` | `Object` |
| `chargeResponse.orderId` | `string` |

#### Returns

`Promise`<`DataObject`<{ `orderId`: `string` ; `res`: `string`  }\>\>

#### Defined in

[services/payment-service/src/providers/paypal/types.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/paypal/types.ts#L9)

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

[services/payment-service/src/providers/paypal/types.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/paypal/types.ts#L5)

___

### refund

▸ **refund**(`transactionId`, `note?`): `void` \| `Promise`<{}\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `transactionId` | `string` |
| `note?` | `string` |

#### Returns

`void` \| `Promise`<{}\>

#### Defined in

[services/payment-service/src/providers/paypal/types.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/paypal/types.ts#L12)

___

### subscriptionCharge

▸ **subscriptionCharge**(`chargeResponse`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `chargeResponse` | `AnyObject` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/payment-service/src/providers/paypal/types.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/paypal/types.ts#L17)

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

[services/payment-service/src/providers/paypal/types.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/paypal/types.ts#L13)

___

### subscriptionWebHook

▸ **subscriptionWebHook**(`sub`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `sub` | `DataObject`<{}\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/payment-service/src/providers/paypal/types.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/paypal/types.ts#L18)
