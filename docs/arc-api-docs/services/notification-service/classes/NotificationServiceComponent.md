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

[services/notification-service/src/component.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/component.ts#L61)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/notification-service/src/component.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/component.ts#L63)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/notification-service/src/component.ts:136](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/component.ts#L136)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/notification-service/src/component.ts:153](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/component.ts#L153)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/notification-service/src/component.ts:148](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/component.ts#L148)

___

### notifConfig

• `Private` `Optional` `Readonly` **notifConfig**: [`INotifServiceConfig`](../interfaces/INotifServiceConfig.md)

#### Defined in

[services/notification-service/src/component.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/component.ts#L65)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/notification-service/src/component.ts:134](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/component.ts#L134)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/notification-service/src/component.ts:142](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/component.ts#L142)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/notification-service/src/component.ts:159](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/component.ts#L159)
