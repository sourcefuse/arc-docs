[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / AppleOauth2VerifyProvider

# Class: AppleOauth2VerifyProvider

## Implements

- `Provider`<`VerifyFunction.AppleAuthFn`\>

## Table of contents

### Constructors

- [constructor](AppleOauth2VerifyProvider.md#constructor)

### Properties

- [postVerifyProvider](AppleOauth2VerifyProvider.md#postverifyprovider)
- [preVerifyProvider](AppleOauth2VerifyProvider.md#preverifyprovider)
- [signupProvider](AppleOauth2VerifyProvider.md#signupprovider)
- [userCredsRepository](AppleOauth2VerifyProvider.md#usercredsrepository)
- [userRepository](AppleOauth2VerifyProvider.md#userrepository)

### Methods

- [value](AppleOauth2VerifyProvider.md#value)

## Constructors

### constructor

• **new AppleOauth2VerifyProvider**(`userRepository`, `userCredsRepository`, `signupProvider`, `preVerifyProvider`, `postVerifyProvider`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userRepository` | [`UserRepository`](UserRepository.md) |
| `userCredsRepository` | [`UserCredentialsRepository`](UserCredentialsRepository.md) |
| `signupProvider` | [`AppleSignUpFn`](../modules.md#applesignupfn) |
| `preVerifyProvider` | [`ApplePreVerifyFn`](../modules.md#applepreverifyfn) |
| `postVerifyProvider` | [`ApplePostVerifyFn`](../modules.md#applepostverifyfn) |

#### Defined in

[services/authentication-service/src/modules/auth/providers/apple-oauth2-verify.provider.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/apple-oauth2-verify.provider.ts#L27)

## Properties

### postVerifyProvider

• `Private` `Readonly` **postVerifyProvider**: [`ApplePostVerifyFn`](../modules.md#applepostverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/apple-oauth2-verify.provider.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/apple-oauth2-verify.provider.ts#L37)

___

### preVerifyProvider

• `Private` `Readonly` **preVerifyProvider**: [`ApplePreVerifyFn`](../modules.md#applepreverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/apple-oauth2-verify.provider.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/apple-oauth2-verify.provider.ts#L35)

___

### signupProvider

• `Private` `Readonly` **signupProvider**: [`AppleSignUpFn`](../modules.md#applesignupfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/apple-oauth2-verify.provider.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/apple-oauth2-verify.provider.ts#L33)

___

### userCredsRepository

• **userCredsRepository**: [`UserCredentialsRepository`](UserCredentialsRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/apple-oauth2-verify.provider.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/apple-oauth2-verify.provider.ts#L31)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/apple-oauth2-verify.provider.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/apple-oauth2-verify.provider.ts#L29)

## Methods

### value

▸ **value**(): `AppleAuthFn`<`IAuthUser`\>

#### Returns

`AppleAuthFn`<`IAuthUser`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/apple-oauth2-verify.provider.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/apple-oauth2-verify.provider.ts#L40)
