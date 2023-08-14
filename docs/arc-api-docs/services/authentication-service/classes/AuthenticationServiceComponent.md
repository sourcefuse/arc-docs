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

[services/authentication-service/src/component.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/component.ts#L108)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/authentication-service/src/component.ts:110](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/component.ts#L110)

___

### authConfig

• `Private` `Optional` `Readonly` **authConfig**: [`IAuthServiceConfig`](../interfaces/IAuthServiceConfig.md)

#### Defined in

[services/authentication-service/src/component.ts:116](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/component.ts#L116)

___

### bindings

• **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/authentication-service/src/component.ts:178](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/component.ts#L178)

___

### config

• `Private` `Optional` `Readonly` **config**: `AuthenticationConfig`

#### Defined in

[services/authentication-service/src/component.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/component.ts#L118)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/authentication-service/src/component.ts:195](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/component.ts#L195)

___

### mfaConfig

• `Private` `Readonly` **mfaConfig**: [`IMfaConfig`](../interfaces/IMfaConfig.md)

#### Defined in

[services/authentication-service/src/component.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/component.ts#L112)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/authentication-service/src/component.ts:190](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/component.ts#L190)

___

### otpConfig

• `Private` `Readonly` **otpConfig**: [`IOtpConfig`](../interfaces/IOtpConfig.md)

#### Defined in

[services/authentication-service/src/component.ts:114](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/component.ts#L114)

___

### providers

• **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/authentication-service/src/component.ts:176](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/component.ts#L176)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/authentication-service/src/component.ts:184](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/component.ts#L184)

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

[services/authentication-service/src/component.ts:206](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/component.ts#L206)

___

### setupAuthorizationComponent

▸ **setupAuthorizationComponent**(): `void`

#### Returns

`void`

#### Defined in

[services/authentication-service/src/component.ts:327](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/component.ts#L327)

___

### setupMultiFactorAuthentication

▸ **setupMultiFactorAuthentication**(): `void`

#### Returns

`void`

#### Defined in

[services/authentication-service/src/component.ts:335](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/component.ts#L335)

___

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/authentication-service/src/component.ts:202](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/component.ts#L202)
