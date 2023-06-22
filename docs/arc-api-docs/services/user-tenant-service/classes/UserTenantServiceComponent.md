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
- [controllers](UserTenantServiceComponent.md#controllers)
- [models](UserTenantServiceComponent.md#models)
- [options](UserTenantServiceComponent.md#options)
- [providers](UserTenantServiceComponent.md#providers)
- [repositories](UserTenantServiceComponent.md#repositories)

## Constructors

### constructor

• **new UserTenantServiceComponent**(`application`, `options?`)

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `application` | `Application` | `undefined` |
| `options` | [`UserTenantServiceComponentOptions`](../interfaces/UserTenantServiceComponentOptions.md) | `DEFAULT_USER_TENANT_SERVICE_OPTIONS` |

#### Defined in

[services/user-tenant-service/src/component.ts:95](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/component.ts#L95)

## Properties

### application

• `Private` `Readonly` **application**: `Application`

#### Defined in

[services/user-tenant-service/src/component.ts:97](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/component.ts#L97)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/user-tenant-service/src/component.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/component.ts#L93)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/user-tenant-service/src/component.ts:92](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/component.ts#L92)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/user-tenant-service/src/component.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/component.ts#L87)

___

### options

• `Private` `Readonly` **options**: [`UserTenantServiceComponentOptions`](../interfaces/UserTenantServiceComponentOptions.md) = `DEFAULT_USER_TENANT_SERVICE_OPTIONS`

#### Defined in

[services/user-tenant-service/src/component.ts:99](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/component.ts#L99)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/user-tenant-service/src/component.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/component.ts#L94)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

#### Defined in

[services/user-tenant-service/src/component.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/component.ts#L81)
