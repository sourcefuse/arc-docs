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
- [providers](PaymentServiceComponent.md#providers)
- [repositories](PaymentServiceComponent.md#repositories)

## Constructors

### constructor

• **new PaymentServiceComponent**(`application`, `options?`)

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `application` | `Application` | `undefined` |
| `options` | [`PaymentServiceComponentOptions`](../interfaces/PaymentServiceComponentOptions.md) | `DEFAULT_PAYMENT_SERVICE_OPTIONS` |

#### Defined in

[component.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/payment-service/src/component.ts#L75)

## Properties

### application

• `Private` `Readonly` **application**: `Application`

#### Defined in

[component.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/payment-service/src/component.ts#L77)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[component.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/payment-service/src/component.ts#L73)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[component.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/payment-service/src/component.ts#L72)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[component.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/payment-service/src/component.ts#L67)

___

### options

• `Private` `Readonly` **options**: [`PaymentServiceComponentOptions`](../interfaces/PaymentServiceComponentOptions.md) = `DEFAULT_PAYMENT_SERVICE_OPTIONS`

#### Defined in

[component.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/payment-service/src/component.ts#L79)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[component.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/payment-service/src/component.ts#L74)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

#### Defined in

[component.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/payment-service/src/component.ts#L61)
