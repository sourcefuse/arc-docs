[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / OtpGenerateProvider

# Class: OtpGenerateProvider

## Implements

- `Provider`<[`OtpGenerateFn`](../modules.md#otpgeneratefn)\>

## Table of contents

### Constructors

- [constructor](OtpGenerateProvider.md#constructor)

### Properties

- [logger](OtpGenerateProvider.md#logger)

### Methods

- [value](OtpGenerateProvider.md#value)

## Constructors

### constructor

• **new OtpGenerateProvider**(`logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `logger` | `ILogger` |

#### Defined in

[services/authentication-service/src/providers/otp-generate.provider.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/otp-generate.provider.ts#L16)

## Properties

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/providers/otp-generate.provider.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/otp-generate.provider.ts#L16)

## Methods

### value

▸ **value**(): [`OtpGenerateFn`](../modules.md#otpgeneratefn)

#### Returns

[`OtpGenerateFn`](../modules.md#otpgeneratefn)

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/otp-generate.provider.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/otp-generate.provider.ts#L17)
