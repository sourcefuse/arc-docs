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

[services/authentication-service/src/services/otp.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/authentication-service/src/services/otp.service.ts#L18)

## Properties

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/services/otp.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/authentication-service/src/services/otp.service.ts#L23)

___

### otpCacheRepo

• `Private` `Readonly` **otpCacheRepo**: [`OtpCacheRepository`](OtpCacheRepository.md)

#### Defined in

[services/authentication-service/src/services/otp.service.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/authentication-service/src/services/otp.service.ts#L20)

___

### otpSender

• `Private` `Readonly` **otpSender**: [`OtpFn`](../modules.md#otpfn)

#### Defined in

[services/authentication-service/src/services/otp.service.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/authentication-service/src/services/otp.service.ts#L25)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/services/otp.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/authentication-service/src/services/otp.service.ts#L22)

## Methods

### sendOtp

▸ **sendOtp**(`user`, `client?`): `Promise`<`void` \| `OtpResponse`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `user` | ``null`` \| [`User`](User.md) |
| `client?` | [`AuthClient`](AuthClient.md) |

#### Returns

`Promise`<`void` \| `OtpResponse`\>

#### Defined in

[services/authentication-service/src/services/otp.service.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/authentication-service/src/services/otp.service.ts#L28)
