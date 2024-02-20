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

[services/payment-service/src/providers/gateway.provider.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/gateway.provider.ts#L15)

## Properties

### paypalHelper

• `Private` `Readonly` **paypalHelper**: [`PayPalPaymentGateway`](../interfaces/PayPalPaymentGateway.md)

#### Defined in

[services/payment-service/src/providers/gateway.provider.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/gateway.provider.ts#L23)

___

### razorpayPaymentHelper

• `Private` `Readonly` **razorpayPaymentHelper**: [`RazorpayPaymentGateway`](../interfaces/RazorpayPaymentGateway.md)

#### Defined in

[services/payment-service/src/providers/gateway.provider.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/gateway.provider.ts#L19)

___

### req

• `Private` `Readonly` **req**: `Request`<`ParamsDictionary`, `any`, `any`, `ParsedQs`, `Record`<`string`, `any`\>\>

#### Defined in

[services/payment-service/src/providers/gateway.provider.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/gateway.provider.ts#L17)

___

### res

• `Private` `Readonly` **res**: `Response`<`any`, `Record`<`string`, `any`\>\>

#### Defined in

[services/payment-service/src/providers/gateway.provider.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/gateway.provider.ts#L16)

___

### stripeHelper

• `Private` `Readonly` **stripeHelper**: [`StripePaymentGateway`](../interfaces/StripePaymentGateway.md)

#### Defined in

[services/payment-service/src/providers/gateway.provider.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/gateway.provider.ts#L21)

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

[services/payment-service/src/providers/gateway.provider.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/providers/gateway.provider.ts#L26)
