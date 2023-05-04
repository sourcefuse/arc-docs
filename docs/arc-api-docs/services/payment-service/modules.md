[@sourceloop/payment-service](README.md) / Exports

# @sourceloop/payment-service

## Table of contents

### Namespaces

- [GatewayBindings](modules/GatewayBindings.md)
- [PayPalBindings](modules/PayPalBindings.md)
- [PaymentServiceComponentBindings](modules/PaymentServiceComponentBindings.md)
- [RazorpayBindings](modules/RazorpayBindings.md)
- [StripeBindings](modules/StripeBindings.md)

### Classes

- [GatewayProvider](classes/GatewayProvider.md)
- [PaymentServiceComponent](classes/PaymentServiceComponent.md)
- [PaypalProvider](classes/PaypalProvider.md)
- [RazorpayProvider](classes/RazorpayProvider.md)
- [StripeProvider](classes/StripeProvider.md)

### Interfaces

- [IGateway](interfaces/IGateway.md)
- [IPayPalConfig](interfaces/IPayPalConfig.md)
- [IRazorpayConfig](interfaces/IRazorpayConfig.md)
- [IStripeConfig](interfaces/IStripeConfig.md)
- [PayPalPaymentGateway](interfaces/PayPalPaymentGateway.md)
- [PaymentServiceComponentOptions](interfaces/PaymentServiceComponentOptions.md)
- [RazorpayOrder](interfaces/RazorpayOrder.md)
- [RazorpayPaymentGateway](interfaces/RazorpayPaymentGateway.md)
- [StripeOrder](interfaces/StripeOrder.md)
- [StripePaymentGateway](interfaces/StripePaymentGateway.md)

### Variables

- [DEFAULT\_PAYMENT\_SERVICE\_OPTIONS](modules.md#default_payment_service_options)
- [PaymentDatasourceName](modules.md#paymentdatasourcename)

## Variables

### DEFAULT\_PAYMENT\_SERVICE\_OPTIONS

• `Const` **DEFAULT\_PAYMENT\_SERVICE\_OPTIONS**: [`PaymentServiceComponentOptions`](interfaces/PaymentServiceComponentOptions.md) = `{}`

Default options for the component

#### Defined in

[types.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/payment-service/src/types.ts#L17)

___

### PaymentDatasourceName

• `Const` **PaymentDatasourceName**: ``"payment"``

#### Defined in

[keys.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/payment-service/src/keys.ts#L17)
