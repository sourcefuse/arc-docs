[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / GoogleAuthenticatorVerifyProvider

# Class: GoogleAuthenticatorVerifyProvider

## Implements

- `Provider`<`VerifyFunction.OtpAuthFn`\>

## Table of contents

### Constructors

- [constructor](GoogleAuthenticatorVerifyProvider.md#constructor)

### Properties

- [logger](GoogleAuthenticatorVerifyProvider.md#logger)
- [otpCacheRepo](GoogleAuthenticatorVerifyProvider.md#otpcacherepo)
- [userCredsRepository](GoogleAuthenticatorVerifyProvider.md#usercredsrepository)
- [userRepository](GoogleAuthenticatorVerifyProvider.md#userrepository)

### Methods

- [value](GoogleAuthenticatorVerifyProvider.md#value)

## Constructors

### constructor

• **new GoogleAuthenticatorVerifyProvider**(`userRepository`, `userCredsRepository`, `otpCacheRepo`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userRepository` | [`UserRepository`](UserRepository.md) |
| `userCredsRepository` | [`UserCredentialsRepository`](UserCredentialsRepository.md) |
| `otpCacheRepo` | [`OtpCacheRepository`](OtpCacheRepository.md) |
| `logger` | `ILogger` |

#### Defined in

[services/authentication-service/src/modules/auth/providers/google-authenticator-verify.provider.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/google-authenticator-verify.provider.ts#L21)

## Properties

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/modules/auth/providers/google-authenticator-verify.provider.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/google-authenticator-verify.provider.ts#L28)

___

### otpCacheRepo

• **otpCacheRepo**: [`OtpCacheRepository`](OtpCacheRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/google-authenticator-verify.provider.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/google-authenticator-verify.provider.ts#L27)

___

### userCredsRepository

• **userCredsRepository**: [`UserCredentialsRepository`](UserCredentialsRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/google-authenticator-verify.provider.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/google-authenticator-verify.provider.ts#L25)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/google-authenticator-verify.provider.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/google-authenticator-verify.provider.ts#L23)

## Methods

### value

▸ **value**(): `OtpAuthFn`<`IAuthUser`\>

#### Returns

`OtpAuthFn`<`IAuthUser`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/google-authenticator-verify.provider.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/google-authenticator-verify.provider.ts#L31)
