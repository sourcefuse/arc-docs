[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserTenantServiceComponent

# Class: UserTenantServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](UserTenantServiceComponent.md#constructor)

### Properties

- [application](UserTenantServiceComponent.md#application)
- [bindings](UserTenantServiceComponent.md#bindings)
- [config](UserTenantServiceComponent.md#config)
- [controllers](UserTenantServiceComponent.md#controllers)
- [models](UserTenantServiceComponent.md#models)
- [providers](UserTenantServiceComponent.md#providers)
- [repositories](UserTenantServiceComponent.md#repositories)

### Methods

- [setupSequence](UserTenantServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new UserTenantServiceComponent**(`application`, `config?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `config?` | [`IUserServiceConfig`](../interfaces/IUserServiceConfig.md) |

#### Defined in

[services/user-tenant-service/src/component.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/component.ts#L118)

## Properties

### application

• `Private` **application**: `RestApplication`

#### Defined in

[services/user-tenant-service/src/component.ts:120](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/component.ts#L120)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/user-tenant-service/src/component.ts:116](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/component.ts#L116)

___

### config

• `Private` `Optional` `Readonly` **config**: [`IUserServiceConfig`](../interfaces/IUserServiceConfig.md)

#### Defined in

[services/user-tenant-service/src/component.ts:122](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/component.ts#L122)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/user-tenant-service/src/component.ts:115](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/component.ts#L115)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/user-tenant-service/src/component.ts:110](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/component.ts#L110)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/user-tenant-service/src/component.ts:117](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/component.ts#L117)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

#### Defined in

[services/user-tenant-service/src/component.ts:104](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/component.ts#L104)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

#### Returns

`void`

#### Defined in

[services/user-tenant-service/src/component.ts:209](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/component.ts#L209)
