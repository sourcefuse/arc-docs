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
- [notifConfig](SubscriptionServiceComponent.md#notifconfig)
- [providers](SubscriptionServiceComponent.md#providers)
- [repositories](SubscriptionServiceComponent.md#repositories)
- [services](SubscriptionServiceComponent.md#services)

### Methods

- [setupSequence](SubscriptionServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new SubscriptionServiceComponent**(`application`, `notifConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `notifConfig?` | [`ISubscriptionServiceConfig`](../interfaces/ISubscriptionServiceConfig.md) |

#### Defined in

[services/subscription-service/src/component.ts:39](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/component.ts#L39)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/subscription-service/src/component.ts:41](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/component.ts#L41)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/subscription-service/src/component.ts:106](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/component.ts#L106)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/subscription-service/src/component.ts:125](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/component.ts#L125)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/subscription-service/src/component.ts:120](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/component.ts#L120)

___

### notifConfig

• `Private` `Optional` `Readonly` **notifConfig**: [`ISubscriptionServiceConfig`](../interfaces/ISubscriptionServiceConfig.md)

#### Defined in

[services/subscription-service/src/component.ts:43](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/component.ts#L43)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/subscription-service/src/component.ts:104](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/component.ts#L104)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/subscription-service/src/component.ts:114](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/component.ts#L114)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/subscription-service/src/component.ts:108](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/component.ts#L108)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/subscription-service/src/component.ts:131](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/component.ts#L131)
