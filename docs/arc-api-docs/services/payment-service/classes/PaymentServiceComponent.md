[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / PaymentServiceComponent

# Class: PaymentServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](PaymentServiceComponent.md#constructor)

### Properties

- [application](PaymentServiceComponent.md#application)
- [bindings](PaymentServiceComponent.md#bindings)
- [controllers](PaymentServiceComponent.md#controllers)
- [models](PaymentServiceComponent.md#models)
- [options](PaymentServiceComponent.md#options)
- [paymentConfig](PaymentServiceComponent.md#paymentconfig)
- [providers](PaymentServiceComponent.md#providers)
- [repositories](PaymentServiceComponent.md#repositories)

## Constructors

### constructor

• **new PaymentServiceComponent**(`application`, `paymentConfig?`, `options?`)

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `application` | `Application` | `undefined` |
| `paymentConfig?` | [`PaymentServiceConfig`](../interfaces/PaymentServiceConfig.md) | `undefined` |
| `options` | [`PaymentServiceComponentOptions`](../interfaces/PaymentServiceComponentOptions.md) | `DEFAULT_PAYMENT_SERVICE_OPTIONS` |

#### Defined in

[services/payment-service/src/component.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/component.ts#L84)

## Properties

### application

• `Private` `Readonly` **application**: `Application`

#### Defined in

[services/payment-service/src/component.ts:86](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/component.ts#L86)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/payment-service/src/component.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/component.ts#L82)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/payment-service/src/component.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/component.ts#L81)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/payment-service/src/component.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/component.ts#L76)

___

### options

• `Private` `Readonly` **options**: [`PaymentServiceComponentOptions`](../interfaces/PaymentServiceComponentOptions.md) = `DEFAULT_PAYMENT_SERVICE_OPTIONS`

#### Defined in

[services/payment-service/src/component.ts:90](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/component.ts#L90)

___

### paymentConfig

• `Private` `Optional` `Readonly` **paymentConfig**: [`PaymentServiceConfig`](../interfaces/PaymentServiceConfig.md)

#### Defined in

[services/payment-service/src/component.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/component.ts#L88)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/payment-service/src/component.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/component.ts#L83)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

#### Defined in

[services/payment-service/src/component.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/component.ts#L70)
