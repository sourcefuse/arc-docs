[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / SubscriptionServiceComponent

# Class: SubscriptionServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](SubscriptionServiceComponent.md#constructor)

### Properties

- [application](SubscriptionServiceComponent.md#application)
- [bindings](SubscriptionServiceComponent.md#bindings)
- [controllers](SubscriptionServiceComponent.md#controllers)
- [models](SubscriptionServiceComponent.md#models)
- [providers](SubscriptionServiceComponent.md#providers)
- [repositories](SubscriptionServiceComponent.md#repositories)
- [services](SubscriptionServiceComponent.md#services)
- [subscriptionConfig](SubscriptionServiceComponent.md#subscriptionconfig)

### Methods

- [setupSequence](SubscriptionServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new SubscriptionServiceComponent**(`application`, `subscriptionConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `subscriptionConfig?` | [`ISubscriptionServiceConfig`](../interfaces/ISubscriptionServiceConfig.md) |

#### Defined in

[services/subscription-service/src/component.ts:69](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/component.ts#L69)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/subscription-service/src/component.ts:71](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/component.ts#L71)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/subscription-service/src/component.ts:141](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/component.ts#L141)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/subscription-service/src/component.ts:160](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/component.ts#L160)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/subscription-service/src/component.ts:155](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/component.ts#L155)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/subscription-service/src/component.ts:139](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/component.ts#L139)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/subscription-service/src/component.ts:149](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/component.ts#L149)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/subscription-service/src/component.ts:143](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/component.ts#L143)

___

### subscriptionConfig

• `Private` `Optional` `Readonly` **subscriptionConfig**: [`ISubscriptionServiceConfig`](../interfaces/ISubscriptionServiceConfig.md)

#### Defined in

[services/subscription-service/src/component.ts:73](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/component.ts#L73)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/subscription-service/src/component.ts:166](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/component.ts#L166)
