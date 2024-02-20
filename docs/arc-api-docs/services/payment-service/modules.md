[@sourceloop/payment-service](README.md) / Exports

# @sourceloop/payment-service

## Table of contents

### Namespaces

- [GatewayBindings](modules/GatewayBindings.md)
- [PayPalBindings](modules/PayPalBindings.md)
- [PaymentServiceBindings](modules/PaymentServiceBindings.md)
- [PaymentServiceComponentBindings](modules/PaymentServiceComponentBindings.md)
- [RazorpayBindings](modules/RazorpayBindings.md)
- [StripeBindings](modules/StripeBindings.md)

### Enumerations

- [GatewayType](enums/GatewayType.md)
- [ResponseMessage](enums/ResponseMessage.md)
- [Status](enums/Status.md)
- [TemplateName](enums/TemplateName.md)
- [TemplateType](enums/TemplateType.md)

### Classes

- [GatewayProvider](classes/GatewayProvider.md)
- [Orders](classes/Orders.md)
- [OrdersRepository](classes/OrdersRepository.md)
- [PaymentGateways](classes/PaymentGateways.md)
- [PaymentGatewaysRepository](classes/PaymentGatewaysRepository.md)
- [PaymentServiceComponent](classes/PaymentServiceComponent.md)
- [PaypalProvider](classes/PaypalProvider.md)
- [RazorpayProvider](classes/RazorpayProvider.md)
- [StripeProvider](classes/StripeProvider.md)
- [Subscriptions](classes/Subscriptions.md)
- [SubscriptionsRepository](classes/SubscriptionsRepository.md)
- [Templates](classes/Templates.md)
- [TemplatesRepository](classes/TemplatesRepository.md)
- [Transactions](classes/Transactions.md)
- [TransactionsRepository](classes/TransactionsRepository.md)

### Interfaces

- [IGateway](interfaces/IGateway.md)
- [IPayPalConfig](interfaces/IPayPalConfig.md)
- [IRazorpayConfig](interfaces/IRazorpayConfig.md)
- [IStripeConfig](interfaces/IStripeConfig.md)
- [PayPalPaymentGateway](interfaces/PayPalPaymentGateway.md)
- [PaymentServiceComponentOptions](interfaces/PaymentServiceComponentOptions.md)
- [PaymentServiceConfig](interfaces/PaymentServiceConfig.md)
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

[services/payment-service/src/types.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/types.ts#L20)

___

### PaymentDatasourceName

• `Const` **PaymentDatasourceName**: ``"payment"``

#### Defined in

[services/payment-service/src/keys.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/keys.ts#L23)
