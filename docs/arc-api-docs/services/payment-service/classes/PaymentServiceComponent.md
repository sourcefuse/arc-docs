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
- [tenantConfig](PaymentServiceComponent.md#tenantconfig)

## Constructors

### constructor

• **new PaymentServiceComponent**(`application`, `paymentConfig?`, `options?`, `tenantConfig?`)

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `application` | `Application` | `undefined` |
| `paymentConfig?` | [`PaymentServiceConfig`](../interfaces/PaymentServiceConfig.md) | `undefined` |
| `options` | [`PaymentServiceComponentOptions`](../interfaces/PaymentServiceComponentOptions.md) | `DEFAULT_PAYMENT_SERVICE_OPTIONS` |
| `tenantConfig?` | `ITenantUtilitiesConfig` | `undefined` |

#### Defined in

[services/payment-service/src/component.ts:99](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/component.ts#L99)

## Properties

### application

• `Private` `Readonly` **application**: `Application`

#### Defined in

[services/payment-service/src/component.ts:101](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/component.ts#L101)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/payment-service/src/component.ts:97](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/component.ts#L97)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/payment-service/src/component.ts:96](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/component.ts#L96)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/payment-service/src/component.ts:91](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/component.ts#L91)

___

### options

• `Private` `Readonly` **options**: [`PaymentServiceComponentOptions`](../interfaces/PaymentServiceComponentOptions.md) = `DEFAULT_PAYMENT_SERVICE_OPTIONS`

#### Defined in

[services/payment-service/src/component.ts:105](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/component.ts#L105)

___

### paymentConfig

• `Private` `Optional` `Readonly` **paymentConfig**: [`PaymentServiceConfig`](../interfaces/PaymentServiceConfig.md)

#### Defined in

[services/payment-service/src/component.ts:103](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/component.ts#L103)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/payment-service/src/component.ts:98](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/component.ts#L98)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

#### Defined in

[services/payment-service/src/component.ts:85](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/component.ts#L85)

___

### tenantConfig

• `Private` `Optional` `Readonly` **tenantConfig**: `ITenantUtilitiesConfig`

#### Defined in

[services/payment-service/src/component.ts:107](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/component.ts#L107)
