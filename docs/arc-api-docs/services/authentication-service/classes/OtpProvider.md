[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / OtpProvider

# Class: OtpProvider

## Implements

- `Provider`<[`OtpFn`](../modules.md#otpfn)\>

## Table of contents

### Constructors

- [constructor](OtpProvider.md#constructor)

### Properties

- [generateOtp](OtpProvider.md#generateotp)
- [sendOtp](OtpProvider.md#sendotp)

### Methods

- [value](OtpProvider.md#value)

## Constructors

### constructor

• **new OtpProvider**(`generateOtp`, `sendOtp`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `generateOtp` | [`OtpGenerateFn`](../modules.md#otpgeneratefn) |
| `sendOtp` | [`OtpSenderFn`](../modules.md#otpsenderfn) |

#### Defined in

[services/authentication-service/src/providers/otp.provider.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/otp.provider.ts#L12)

## Properties

### generateOtp

• `Private` `Readonly` **generateOtp**: [`OtpGenerateFn`](../modules.md#otpgeneratefn)

#### Defined in

[services/authentication-service/src/providers/otp.provider.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/otp.provider.ts#L14)

___

### sendOtp

• `Private` `Readonly` **sendOtp**: [`OtpSenderFn`](../modules.md#otpsenderfn)

#### Defined in

[services/authentication-service/src/providers/otp.provider.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/otp.provider.ts#L16)

## Methods

### value

▸ **value**(): [`OtpFn`](../modules.md#otpfn)

#### Returns

[`OtpFn`](../modules.md#otpfn)

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/otp.provider.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/otp.provider.ts#L19)
