[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / GatewayProvider

# Class: GatewayProvider

## Implements

- `Provider`<[`IGateway`](../interfaces/IGateway.md)\>

## Table of contents

### Constructors

- [constructor](GatewayProvider.md#constructor)

### Properties

- [paypalHelper](GatewayProvider.md#paypalhelper)
- [razorpayPaymentHelper](GatewayProvider.md#razorpaypaymenthelper)
- [req](GatewayProvider.md#req)
- [res](GatewayProvider.md#res)
- [stripeHelper](GatewayProvider.md#stripehelper)

### Methods

- [value](GatewayProvider.md#value)

## Constructors

### constructor

• **new GatewayProvider**(`res`, `req`, `razorpayPaymentHelper`, `stripeHelper`, `paypalHelper`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `res` | `Response`<`any`, `Record`<`string`, `any`\>\> |
| `req` | `Request`<`ParamsDictionary`, `any`, `any`, `ParsedQs`, `Record`<`string`, `any`\>\> |
| `razorpayPaymentHelper` | [`RazorpayPaymentGateway`](../interfaces/RazorpayPaymentGateway.md) |
| `stripeHelper` | [`StripePaymentGateway`](../interfaces/StripePaymentGateway.md) |
| `paypalHelper` | [`PayPalPaymentGateway`](../interfaces/PayPalPaymentGateway.md) |

#### Defined in

[services/payment-service/src/providers/gateway.provider.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/providers/gateway.provider.ts#L16)

## Properties

### paypalHelper

• `Private` `Readonly` **paypalHelper**: [`PayPalPaymentGateway`](../interfaces/PayPalPaymentGateway.md)

#### Defined in

[services/payment-service/src/providers/gateway.provider.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/providers/gateway.provider.ts#L24)

___

### razorpayPaymentHelper

• `Private` `Readonly` **razorpayPaymentHelper**: [`RazorpayPaymentGateway`](../interfaces/RazorpayPaymentGateway.md)

#### Defined in

[services/payment-service/src/providers/gateway.provider.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/providers/gateway.provider.ts#L20)

___

### req

• `Private` `Readonly` **req**: `Request`<`ParamsDictionary`, `any`, `any`, `ParsedQs`, `Record`<`string`, `any`\>\>

#### Defined in

[services/payment-service/src/providers/gateway.provider.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/providers/gateway.provider.ts#L18)

___

### res

• `Private` `Readonly` **res**: `Response`<`any`, `Record`<`string`, `any`\>\>

#### Defined in

[services/payment-service/src/providers/gateway.provider.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/providers/gateway.provider.ts#L17)

___

### stripeHelper

• `Private` `Readonly` **stripeHelper**: [`StripePaymentGateway`](../interfaces/StripePaymentGateway.md)

#### Defined in

[services/payment-service/src/providers/gateway.provider.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/providers/gateway.provider.ts#L22)

## Methods

### value

▸ **value**(): `Object`

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `charge` | `any` |
| `create` | `any` |
| `refund` | `any` |
| `subscriptionCharge` | `any` |
| `subscriptionCreate` | `any` |
| `subscriptionWebHook` | `any` |

#### Implementation of

Provider.value

#### Defined in

[services/payment-service/src/providers/gateway.provider.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/providers/gateway.provider.ts#L27)
