[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / OtpService

# Class: OtpService

## Table of contents

### Constructors

- [constructor](OtpService.md#constructor)

### Properties

- [logger](OtpService.md#logger)
- [otpCacheRepo](OtpService.md#otpcacherepo)
- [otpSender](OtpService.md#otpsender)
- [userRepository](OtpService.md#userrepository)

### Methods

- [sendOtp](OtpService.md#sendotp)

## Constructors

### constructor

• **new OtpService**(`otpCacheRepo`, `userRepository`, `logger`, `otpSender`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `otpCacheRepo` | [`OtpCacheRepository`](OtpCacheRepository.md) |
| `userRepository` | [`UserRepository`](UserRepository.md) |
| `logger` | `ILogger` |
| `otpSender` | [`OtpFn`](../modules.md#otpfn) |

#### Defined in

[services/authentication-service/src/services/otp.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/services/otp.service.ts#L19)

## Properties

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/services/otp.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/services/otp.service.ts#L24)

___

### otpCacheRepo

• `Private` `Readonly` **otpCacheRepo**: [`OtpCacheRepository`](OtpCacheRepository.md)

#### Defined in

[services/authentication-service/src/services/otp.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/services/otp.service.ts#L21)

___

### otpSender

• `Private` `Readonly` **otpSender**: [`OtpFn`](../modules.md#otpfn)

#### Defined in

[services/authentication-service/src/services/otp.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/services/otp.service.ts#L26)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/services/otp.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/services/otp.service.ts#L23)

## Methods

### sendOtp

▸ **sendOtp**(`user`, `client?`): `Promise`<`void` \| [`OtpResponse`](../interfaces/OtpResponse.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `user` | ``null`` \| [`User`](User.md)<`DataObject`<`Model`\>\> |
| `client?` | [`AuthClient`](AuthClient.md)<`DataObject`<`Model`\>\> |

#### Returns

`Promise`<`void` \| [`OtpResponse`](../interfaces/OtpResponse.md)\>

#### Defined in

[services/authentication-service/src/services/otp.service.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/services/otp.service.ts#L29)
