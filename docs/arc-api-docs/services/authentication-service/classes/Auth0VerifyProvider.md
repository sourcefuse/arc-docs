[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / Auth0VerifyProvider

# Class: Auth0VerifyProvider

## Implements

- `Provider`<`VerifyFunction.Auth0Fn`\>

## Table of contents

### Constructors

- [constructor](Auth0VerifyProvider.md#constructor)

### Properties

- [postVerifyProvider](Auth0VerifyProvider.md#postverifyprovider)
- [preVerifyProvider](Auth0VerifyProvider.md#preverifyprovider)
- [signupProvider](Auth0VerifyProvider.md#signupprovider)
- [userCredsRepository](Auth0VerifyProvider.md#usercredsrepository)
- [userRepository](Auth0VerifyProvider.md#userrepository)

### Methods

- [value](Auth0VerifyProvider.md#value)

## Constructors

### constructor

• **new Auth0VerifyProvider**(`userRepository`, `userCredsRepository`, `signupProvider`, `preVerifyProvider`, `postVerifyProvider`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userRepository` | [`UserRepository`](UserRepository.md) |
| `userCredsRepository` | [`UserCredentialsRepository`](UserCredentialsRepository.md) |
| `signupProvider` | [`Auth0SignUpFn`](../modules.md#auth0signupfn) |
| `preVerifyProvider` | [`Auth0PreVerifyFn`](../modules.md#auth0preverifyfn) |
| `postVerifyProvider` | [`Auth0PostVerifyFn`](../modules.md#auth0postverifyfn) |

#### Defined in

[services/authentication-service/src/modules/auth/providers/auth0-verify.provider.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/auth0-verify.provider.ts#L20)

## Properties

### postVerifyProvider

• `Private` `Readonly` **postVerifyProvider**: [`Auth0PostVerifyFn`](../modules.md#auth0postverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/auth0-verify.provider.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/auth0-verify.provider.ts#L30)

___

### preVerifyProvider

• `Private` `Readonly` **preVerifyProvider**: [`Auth0PreVerifyFn`](../modules.md#auth0preverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/auth0-verify.provider.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/auth0-verify.provider.ts#L28)

___

### signupProvider

• `Private` `Readonly` **signupProvider**: [`Auth0SignUpFn`](../modules.md#auth0signupfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/auth0-verify.provider.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/auth0-verify.provider.ts#L26)

___

### userCredsRepository

• **userCredsRepository**: [`UserCredentialsRepository`](UserCredentialsRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/auth0-verify.provider.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/auth0-verify.provider.ts#L24)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/auth0-verify.provider.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/auth0-verify.provider.ts#L22)

## Methods

### value

▸ **value**(): `Auth0Fn`<`IAuthUser`\>

#### Returns

`Auth0Fn`<`IAuthUser`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/auth0-verify.provider.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/auth0-verify.provider.ts#L33)
