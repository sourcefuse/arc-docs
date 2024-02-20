[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / LocalPasswordVerifyProvider

# Class: LocalPasswordVerifyProvider

## Implements

- `Provider`<`VerifyFunction.LocalPasswordFn`\>

## Table of contents

### Constructors

- [constructor](LocalPasswordVerifyProvider.md#constructor)

### Properties

- [otpRepository](LocalPasswordVerifyProvider.md#otprepository)
- [userRepository](LocalPasswordVerifyProvider.md#userrepository)
- [utRepository](LocalPasswordVerifyProvider.md#utrepository)

### Methods

- [value](LocalPasswordVerifyProvider.md#value)

## Constructors

### constructor

• **new LocalPasswordVerifyProvider**(`userRepository`, `utRepository`, `otpRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userRepository` | [`UserRepository`](UserRepository.md) |
| `utRepository` | [`UserTenantRepository`](UserTenantRepository.md) |
| `otpRepository` | [`OtpRepository`](OtpRepository.md) |

#### Defined in

[services/authentication-service/src/modules/auth/providers/local-password-verify.provider.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/local-password-verify.provider.ts#L21)

## Properties

### otpRepository

• **otpRepository**: [`OtpRepository`](OtpRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/local-password-verify.provider.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/local-password-verify.provider.ts#L27)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/local-password-verify.provider.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/local-password-verify.provider.ts#L23)

___

### utRepository

• **utRepository**: [`UserTenantRepository`](UserTenantRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/local-password-verify.provider.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/local-password-verify.provider.ts#L25)

## Methods

### value

▸ **value**(): `LocalPasswordFn`<`IAuthUser`\>

#### Returns

`LocalPasswordFn`<`IAuthUser`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/local-password-verify.provider.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/local-password-verify.provider.ts#L30)
