[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / IGateway

# Interface: IGateway

## Table of contents

### Methods

- [charge](IGateway.md#charge)
- [create](IGateway.md#create)
- [refund](IGateway.md#refund)
- [subscriptionCharge](IGateway.md#subscriptioncharge)
- [subscriptionCreate](IGateway.md#subscriptioncreate)
- [subscriptionWebHook](IGateway.md#subscriptionwebhook)

## Methods

### charge

▸ **charge**(`chargeResponse`): `Promise`<`DataObject`<{ `res`: `string`  }\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `chargeResponse` | `DataObject`<{}\> |

#### Returns

`Promise`<`DataObject`<{ `res`: `string`  }\>\>

#### Defined in

[services/payment-service/src/providers/types.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/types.ts#L13)

___

### create

▸ **create**(`payorder`, `paymentTemplate`): `DataObject`<{}\> \| `Promise`<`unknown`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `payorder` | [`Orders`](../classes/Orders.md) |
| `paymentTemplate` | `undefined` \| `string` |

#### Returns

`DataObject`<{}\> \| `Promise`<`unknown`\>

#### Defined in

[services/payment-service/src/providers/types.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/types.ts#L9)

___

### refund

▸ **refund**(`transactionId`): `void` \| `Promise`<`unknown`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `transactionId` | `string` |

#### Returns

`void` \| `Promise`<`unknown`\>

#### Defined in

[services/payment-service/src/providers/types.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/types.ts#L14)

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

[services/payment-service/src/providers/types.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/types.ts#L19)

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

[services/payment-service/src/providers/types.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/types.ts#L15)

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

[services/payment-service/src/providers/types.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/types.ts#L26)
