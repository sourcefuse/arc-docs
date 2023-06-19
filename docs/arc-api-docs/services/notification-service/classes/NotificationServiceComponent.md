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

[services/notification-service/src/component.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/notification-service/src/component.ts#L49)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/notification-service/src/component.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/notification-service/src/component.ts#L51)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/notification-service/src/component.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/notification-service/src/component.ts#L108)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/notification-service/src/component.ts:125](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/notification-service/src/component.ts#L125)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/notification-service/src/component.ts:120](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/notification-service/src/component.ts#L120)

___

### notifConfig

• `Private` `Optional` `Readonly` **notifConfig**: [`INotifServiceConfig`](../interfaces/INotifServiceConfig.md)

#### Defined in

[services/notification-service/src/component.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/notification-service/src/component.ts#L53)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/notification-service/src/component.ts:106](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/notification-service/src/component.ts#L106)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/notification-service/src/component.ts:114](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/notification-service/src/component.ts#L114)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/notification-service/src/component.ts:131](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/notification-service/src/component.ts#L131)
