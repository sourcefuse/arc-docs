[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / SubscriptionSequelizeServiceComponent

# Class: SubscriptionSequelizeServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](SubscriptionSequelizeServiceComponent.md#constructor)

### Properties

- [application](SubscriptionSequelizeServiceComponent.md#application)
- [bindings](SubscriptionSequelizeServiceComponent.md#bindings)
- [controllers](SubscriptionSequelizeServiceComponent.md#controllers)
- [models](SubscriptionSequelizeServiceComponent.md#models)
- [providers](SubscriptionSequelizeServiceComponent.md#providers)
- [repositories](SubscriptionSequelizeServiceComponent.md#repositories)
- [services](SubscriptionSequelizeServiceComponent.md#services)
- [subscriptionConfig](SubscriptionSequelizeServiceComponent.md#subscriptionconfig)

### Methods

- [setupSequence](SubscriptionSequelizeServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new SubscriptionSequelizeServiceComponent**(`application`, `subscriptionConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `subscriptionConfig?` | [`ISubscriptionServiceConfig`](../interfaces/ISubscriptionServiceConfig.md) |

#### Defined in

[services/subscription-service/src/sequelize-component.ts:92](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/sequelize-component.ts#L92)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/subscription-service/src/sequelize-component.ts:94](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/sequelize-component.ts#L94)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/subscription-service/src/sequelize-component.ts:182](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/sequelize-component.ts#L182)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/subscription-service/src/sequelize-component.ts:201](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/sequelize-component.ts#L201)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/subscription-service/src/sequelize-component.ts:196](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/sequelize-component.ts#L196)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/subscription-service/src/sequelize-component.ts:180](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/sequelize-component.ts#L180)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/subscription-service/src/sequelize-component.ts:190](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/sequelize-component.ts#L190)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/subscription-service/src/sequelize-component.ts:184](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/sequelize-component.ts#L184)

___

### subscriptionConfig

• `Private` `Optional` `Readonly` **subscriptionConfig**: [`ISubscriptionServiceConfig`](../interfaces/ISubscriptionServiceConfig.md)

#### Defined in

[services/subscription-service/src/sequelize-component.ts:96](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/sequelize-component.ts#L96)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/subscription-service/src/sequelize-component.ts:207](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/sequelize-component.ts#L207)
