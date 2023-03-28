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

• **new AuthenticationServiceComponent**(`application`, `mfaConfig`, `otpConfig`, `authConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `mfaConfig` | [`IMfaConfig`](../interfaces/IMfaConfig.md) |
| `otpConfig` | [`IOtpConfig`](../interfaces/IOtpConfig.md) |
| `authConfig?` | [`IAuthServiceConfig`](../interfaces/IAuthServiceConfig.md) |

#### Defined in

[services/authentication-service/src/component.ts:104](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/component.ts#L104)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/authentication-service/src/component.ts:106](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/component.ts#L106)

___

### authConfig

• `Private` `Optional` `Readonly` **authConfig**: [`IAuthServiceConfig`](../interfaces/IAuthServiceConfig.md)

#### Defined in

[services/authentication-service/src/component.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/component.ts#L112)

___

### bindings

• **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/authentication-service/src/component.ts:168](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/component.ts#L168)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/authentication-service/src/component.ts:185](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/component.ts#L185)

___

### mfaConfig

• `Private` `Readonly` **mfaConfig**: [`IMfaConfig`](../interfaces/IMfaConfig.md)

#### Defined in

[services/authentication-service/src/component.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/component.ts#L108)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/authentication-service/src/component.ts:180](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/component.ts#L180)

___

### otpConfig

• `Private` `Readonly` **otpConfig**: [`IOtpConfig`](../interfaces/IOtpConfig.md)

#### Defined in

[services/authentication-service/src/component.ts:110](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/component.ts#L110)

___

### providers

• **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/authentication-service/src/component.ts:166](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/component.ts#L166)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/authentication-service/src/component.ts:174](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/component.ts#L174)

## Methods

### setupAuthenticationComponent

▸ **setupAuthenticationComponent**(): `void`

#### Returns

`void`

#### Defined in

[services/authentication-service/src/component.ts:196](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/component.ts#L196)

___

### setupAuthorizationComponent

▸ **setupAuthorizationComponent**(): `void`

#### Returns

`void`

#### Defined in

[services/authentication-service/src/component.ts:306](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/component.ts#L306)

___

### setupMultiFactorAuthentication

▸ **setupMultiFactorAuthentication**(): `void`

#### Returns

`void`

#### Defined in

[services/authentication-service/src/component.ts:314](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/component.ts#L314)

___

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/authentication-service/src/component.ts:192](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/component.ts#L192)
