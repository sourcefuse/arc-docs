[@sourceloop/oidc-service](../README.md) / [Exports](../modules.md) / OidcServiceComponent

# Class: OidcServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](OidcServiceComponent.md#constructor)

### Properties

- [application](OidcServiceComponent.md#application)
- [bindings](OidcServiceComponent.md#bindings)
- [controllers](OidcServiceComponent.md#controllers)
- [models](OidcServiceComponent.md#models)
- [providers](OidcServiceComponent.md#providers)
- [repositories](OidcServiceComponent.md#repositories)
- [services](OidcServiceComponent.md#services)

### Methods

- [setupSequence](OidcServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new OidcServiceComponent**(`application`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |

#### Defined in

[services/oidc-service/src/component.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/component.ts#L51)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/oidc-service/src/component.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/component.ts#L53)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[]

#### Implementation of

Component.bindings

#### Defined in

[services/oidc-service/src/component.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/component.ts#L50)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/oidc-service/src/component.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/component.ts#L49)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/oidc-service/src/component.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/component.ts#L38)

___

### providers

• **providers**: `ProviderMap`

#### Implementation of

Component.providers

#### Defined in

[services/oidc-service/src/component.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/component.ts#L40)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

#### Defined in

[services/oidc-service/src/component.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/component.ts#L32)

___

### services

• **services**: typeof `OidcInitializerService`[]

#### Implementation of

Component.services

#### Defined in

[services/oidc-service/src/component.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/component.ts#L45)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/oidc-service/src/component.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/component.ts#L88)
