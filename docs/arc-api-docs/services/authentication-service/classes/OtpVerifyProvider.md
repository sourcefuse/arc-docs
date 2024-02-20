[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / OtpVerifyProvider

# Class: OtpVerifyProvider

## Implements

- `Provider`<`VerifyFunction.OtpAuthFn`\>

## Table of contents

### Constructors

- [constructor](OtpVerifyProvider.md#constructor)

### Properties

- [client](OtpVerifyProvider.md#client)
- [logger](OtpVerifyProvider.md#logger)
- [otpCacheRepo](OtpVerifyProvider.md#otpcacherepo)
- [otpService](OtpVerifyProvider.md#otpservice)
- [userRepository](OtpVerifyProvider.md#userrepository)

### Methods

- [value](OtpVerifyProvider.md#value)

## Constructors

### constructor

• **new OtpVerifyProvider**(`userRepository`, `otpCacheRepo`, `logger`, `client`, `otpService`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userRepository` | [`UserRepository`](UserRepository.md) |
| `otpCacheRepo` | [`OtpCacheRepository`](OtpCacheRepository.md) |
| `logger` | `ILogger` |
| `client` | [`AuthClient`](AuthClient.md)<`DataObject`<`Model`\>\> |
| `otpService` | [`OtpService`](OtpService.md) |

#### Defined in

[services/authentication-service/src/modules/auth/providers/otp-verify.provider.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/otp-verify.provider.ts#L19)

## Properties

### client

• `Private` `Readonly` **client**: [`AuthClient`](AuthClient.md)<`DataObject`<`Model`\>\>

#### Defined in

[services/authentication-service/src/modules/auth/providers/otp-verify.provider.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/otp-verify.provider.ts#L26)

___

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/modules/auth/providers/otp-verify.provider.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/otp-verify.provider.ts#L24)

___

### otpCacheRepo

• **otpCacheRepo**: [`OtpCacheRepository`](OtpCacheRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/otp-verify.provider.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/otp-verify.provider.ts#L23)

___

### otpService

• `Private` `Readonly` **otpService**: [`OtpService`](OtpService.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/otp-verify.provider.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/otp-verify.provider.ts#L28)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/otp-verify.provider.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/otp-verify.provider.ts#L21)

## Methods

### value

▸ **value**(): `OtpAuthFn`<`IAuthUser`\>

#### Returns

`OtpAuthFn`<`IAuthUser`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/otp-verify.provider.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/otp-verify.provider.ts#L31)
