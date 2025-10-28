[@sourceloop/notification-service](../README.md) / [Exports](../modules.md) / NotificationServiceComponent

# Class: NotificationServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](NotificationServiceComponent.md#constructor)

### Properties

- [application](NotificationServiceComponent.md#application)
- [bindings](NotificationServiceComponent.md#bindings)
- [controllers](NotificationServiceComponent.md#controllers)
- [models](NotificationServiceComponent.md#models)
- [notifConfig](NotificationServiceComponent.md#notifconfig)
- [providers](NotificationServiceComponent.md#providers)
- [repositories](NotificationServiceComponent.md#repositories)

### Methods

- [setupSequence](NotificationServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new NotificationServiceComponent**(`application`, `notifConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `notifConfig?` | [`INotifServiceConfig`](../interfaces/INotifServiceConfig.md) |

#### Defined in

[services/notification-service/src/component.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/notification-service/src/component.ts#L63)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/notification-service/src/component.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/notification-service/src/component.ts#L65)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/notification-service/src/component.ts:140](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/notification-service/src/component.ts#L140)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/notification-service/src/component.ts:157](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/notification-service/src/component.ts#L157)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/notification-service/src/component.ts:152](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/notification-service/src/component.ts#L152)

___

### notifConfig

• `Private` `Optional` `Readonly` **notifConfig**: [`INotifServiceConfig`](../interfaces/INotifServiceConfig.md)

#### Defined in

[services/notification-service/src/component.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/notification-service/src/component.ts#L67)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/notification-service/src/component.ts:138](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/notification-service/src/component.ts#L138)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/notification-service/src/component.ts:146](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/notification-service/src/component.ts#L146)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/notification-service/src/component.ts:163](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/notification-service/src/component.ts#L163)
