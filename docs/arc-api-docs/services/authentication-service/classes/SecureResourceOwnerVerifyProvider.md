[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / SecureResourceOwnerVerifyProvider

# Class: SecureResourceOwnerVerifyProvider

## Implements

- `Provider`<`VerifyFunction.SecureResourceOwnerPasswordFn`\>

## Table of contents

### Constructors

- [constructor](SecureResourceOwnerVerifyProvider.md#constructor)

### Properties

- [authSecureClientRepository](SecureResourceOwnerVerifyProvider.md#authsecureclientrepository)
- [otpRepository](SecureResourceOwnerVerifyProvider.md#otprepository)
- [userRepository](SecureResourceOwnerVerifyProvider.md#userrepository)
- [utRepository](SecureResourceOwnerVerifyProvider.md#utrepository)

### Methods

- [value](SecureResourceOwnerVerifyProvider.md#value)

## Constructors

### constructor

• **new SecureResourceOwnerVerifyProvider**(`userRepository`, `utRepository`, `authSecureClientRepository`, `otpRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userRepository` | [`UserRepository`](UserRepository.md) |
| `utRepository` | [`UserTenantRepository`](UserTenantRepository.md) |
| `authSecureClientRepository` | [`AuthSecureClientRepository`](AuthSecureClientRepository.md) |
| `otpRepository` | [`OtpRepository`](OtpRepository.md) |

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts#L25)

## Properties

### authSecureClientRepository

• **authSecureClientRepository**: [`AuthSecureClientRepository`](AuthSecureClientRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts#L31)

___

### otpRepository

• **otpRepository**: [`OtpRepository`](OtpRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts#L33)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts#L27)

___

### utRepository

• **utRepository**: [`UserTenantRepository`](UserTenantRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts#L29)

## Methods

### value

▸ **value**(): `SecureResourceOwnerPasswordFn`<`IAuthSecureClient`, `IAuthUser`\>

#### Returns

`SecureResourceOwnerPasswordFn`<`IAuthSecureClient`, `IAuthUser`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts#L36)
