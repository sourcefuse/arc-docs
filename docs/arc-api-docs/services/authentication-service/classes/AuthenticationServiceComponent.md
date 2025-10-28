[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / AuthenticationServiceComponent

# Class: AuthenticationServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](AuthenticationServiceComponent.md#constructor)

### Properties

- [application](AuthenticationServiceComponent.md#application)
- [authConfig](AuthenticationServiceComponent.md#authconfig)
- [bindings](AuthenticationServiceComponent.md#bindings)
- [config](AuthenticationServiceComponent.md#config)
- [controllers](AuthenticationServiceComponent.md#controllers)
- [mfaConfig](AuthenticationServiceComponent.md#mfaconfig)
- [models](AuthenticationServiceComponent.md#models)
- [otpConfig](AuthenticationServiceComponent.md#otpconfig)
- [providers](AuthenticationServiceComponent.md#providers)
- [repositories](AuthenticationServiceComponent.md#repositories)

### Methods

- [setupAuthenticationComponent](AuthenticationServiceComponent.md#setupauthenticationcomponent)
- [setupAuthorizationComponent](AuthenticationServiceComponent.md#setupauthorizationcomponent)
- [setupMultiFactorAuthentication](AuthenticationServiceComponent.md#setupmultifactorauthentication)
- [setupSequence](AuthenticationServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new AuthenticationServiceComponent**(`application`, `mfaConfig`, `otpConfig`, `authConfig?`, `config?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `mfaConfig` | [`IMfaConfig`](../interfaces/IMfaConfig.md) |
| `otpConfig` | [`IOtpConfig`](../interfaces/IOtpConfig.md) |
| `authConfig?` | [`IAuthServiceConfig`](../interfaces/IAuthServiceConfig.md) |
| `config?` | `AuthenticationConfig` |

#### Defined in

[services/authentication-service/src/component.ts:131](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/component.ts#L131)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/authentication-service/src/component.ts:133](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/component.ts#L133)

___

### authConfig

• `Private` `Optional` `Readonly` **authConfig**: [`IAuthServiceConfig`](../interfaces/IAuthServiceConfig.md)

#### Defined in

[services/authentication-service/src/component.ts:139](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/component.ts#L139)

___

### bindings

• **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/authentication-service/src/component.ts:217](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/component.ts#L217)

___

### config

• `Private` `Optional` `Readonly` **config**: `AuthenticationConfig`

#### Defined in

[services/authentication-service/src/component.ts:141](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/component.ts#L141)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/authentication-service/src/component.ts:234](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/component.ts#L234)

___

### mfaConfig

• `Private` `Readonly` **mfaConfig**: [`IMfaConfig`](../interfaces/IMfaConfig.md)

#### Defined in

[services/authentication-service/src/component.ts:135](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/component.ts#L135)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/authentication-service/src/component.ts:229](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/component.ts#L229)

___

### otpConfig

• `Private` `Readonly` **otpConfig**: [`IOtpConfig`](../interfaces/IOtpConfig.md)

#### Defined in

[services/authentication-service/src/component.ts:137](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/component.ts#L137)

___

### providers

• **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/authentication-service/src/component.ts:215](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/component.ts#L215)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/authentication-service/src/component.ts:223](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/component.ts#L223)

## Methods

### setupAuthenticationComponent

▸ **setupAuthenticationComponent**(`secureClient?`): `void`

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `secureClient` | `boolean` | `false` |

#### Returns

`void`

#### Defined in

[services/authentication-service/src/component.ts:245](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/component.ts#L245)

___

### setupAuthorizationComponent

▸ **setupAuthorizationComponent**(): `void`

#### Returns

`void`

#### Defined in

[services/authentication-service/src/component.ts:388](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/component.ts#L388)

___

### setupMultiFactorAuthentication

▸ **setupMultiFactorAuthentication**(): `void`

#### Returns

`void`

#### Defined in

[services/authentication-service/src/component.ts:396](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/component.ts#L396)

___

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/authentication-service/src/component.ts:241](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/component.ts#L241)
