[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / GoogleOauth2VerifyProvider

# Class: GoogleOauth2VerifyProvider

## Implements

- `Provider`<`VerifyFunction.GoogleAuthFn`\>

## Table of contents

### Constructors

- [constructor](GoogleOauth2VerifyProvider.md#constructor)

### Properties

- [postVerifyProvider](GoogleOauth2VerifyProvider.md#postverifyprovider)
- [preVerifyProvider](GoogleOauth2VerifyProvider.md#preverifyprovider)
- [signupProvider](GoogleOauth2VerifyProvider.md#signupprovider)
- [userCredsRepository](GoogleOauth2VerifyProvider.md#usercredsrepository)
- [userRepository](GoogleOauth2VerifyProvider.md#userrepository)

### Methods

- [value](GoogleOauth2VerifyProvider.md#value)

## Constructors

### constructor

• **new GoogleOauth2VerifyProvider**(`userRepository`, `userCredsRepository`, `signupProvider`, `preVerifyProvider`, `postVerifyProvider`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userRepository` | [`UserRepository`](UserRepository.md) |
| `userCredsRepository` | [`UserCredentialsRepository`](UserCredentialsRepository.md) |
| `signupProvider` | [`GoogleSignUpFn`](../modules.md#googlesignupfn) |
| `preVerifyProvider` | [`GooglePreVerifyFn`](../modules.md#googlepreverifyfn) |
| `postVerifyProvider` | [`GooglePostVerifyFn`](../modules.md#googlepostverifyfn) |

#### Defined in

[services/authentication-service/src/modules/auth/providers/google-oauth2-verify.provider.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/google-oauth2-verify.provider.ts#L27)

## Properties

### postVerifyProvider

• `Private` `Readonly` **postVerifyProvider**: [`GooglePostVerifyFn`](../modules.md#googlepostverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/google-oauth2-verify.provider.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/google-oauth2-verify.provider.ts#L37)

___

### preVerifyProvider

• `Private` `Readonly` **preVerifyProvider**: [`GooglePreVerifyFn`](../modules.md#googlepreverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/google-oauth2-verify.provider.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/google-oauth2-verify.provider.ts#L35)

___

### signupProvider

• `Private` `Readonly` **signupProvider**: [`GoogleSignUpFn`](../modules.md#googlesignupfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/google-oauth2-verify.provider.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/google-oauth2-verify.provider.ts#L33)

___

### userCredsRepository

• **userCredsRepository**: [`UserCredentialsRepository`](UserCredentialsRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/google-oauth2-verify.provider.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/google-oauth2-verify.provider.ts#L31)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/google-oauth2-verify.provider.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/google-oauth2-verify.provider.ts#L29)

## Methods

### value

▸ **value**(): `GoogleAuthFn`<`IAuthUser`\>

#### Returns

`GoogleAuthFn`<`IAuthUser`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/google-oauth2-verify.provider.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/google-oauth2-verify.provider.ts#L40)
