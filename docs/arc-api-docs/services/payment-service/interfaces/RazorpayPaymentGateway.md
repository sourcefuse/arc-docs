[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / RazorpayPaymentGateway

# Interface: RazorpayPaymentGateway

## Table of contents

### Methods

- [charge](RazorpayPaymentGateway.md#charge)
- [create](RazorpayPaymentGateway.md#create)
- [refund](RazorpayPaymentGateway.md#refund)
- [subscriptionCharge](RazorpayPaymentGateway.md#subscriptioncharge)
- [subscriptionCreate](RazorpayPaymentGateway.md#subscriptioncreate)
- [subscriptionWebHook](RazorpayPaymentGateway.md#subscriptionwebhook)

## Methods

### charge

▸ **charge**(`chargeResponse`): `Promise`<`DataObject`<{ `res`: `string`  }\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `chargeResponse` | `DataObject`<{ `razorpay_order_id`: `string`  }\> |

#### Returns

`Promise`<`DataObject`<{ `res`: `string`  }\>\>

#### Defined in

[services/payment-service/src/providers/razorpay/types.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/types.ts#L13)

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

[services/payment-service/src/providers/razorpay/types.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/types.ts#L9)

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

[services/payment-service/src/providers/razorpay/types.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/types.ts#L17)

___

### subscriptionCharge

▸ **subscriptionCharge**(`chargeResponse`): `Promise`<`DataObject`<{ `res`: `string`  }\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `chargeResponse` | `DataObject`<{ `razorpay_subscription_id`: `string`  }\> |

#### Returns

`Promise`<`DataObject`<{ `res`: `string`  }\>\>

#### Defined in

[services/payment-service/src/providers/razorpay/types.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/types.ts#L22)

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

[services/payment-service/src/providers/razorpay/types.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/types.ts#L18)

___

### subscriptionWebHook

▸ **subscriptionWebHook**(`sub`): `Promise`<{}\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `sub` | `DataObject`<{}\> |

#### Returns

`Promise`<{}\>

#### Defined in

[services/payment-service/src/providers/razorpay/types.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/razorpay/types.ts#L26)
