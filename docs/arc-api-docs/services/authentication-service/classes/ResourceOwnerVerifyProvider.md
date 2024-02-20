[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / ResourceOwnerVerifyProvider

# Class: ResourceOwnerVerifyProvider

## Implements

- `Provider`<`VerifyFunction.ResourceOwnerPasswordFn`\>

## Table of contents

### Constructors

- [constructor](ResourceOwnerVerifyProvider.md#constructor)

### Properties

- [authClientRepository](ResourceOwnerVerifyProvider.md#authclientrepository)
- [otpRepository](ResourceOwnerVerifyProvider.md#otprepository)
- [userRepository](ResourceOwnerVerifyProvider.md#userrepository)
- [utRepository](ResourceOwnerVerifyProvider.md#utrepository)

### Methods

- [value](ResourceOwnerVerifyProvider.md#value)

## Constructors

### constructor

• **new ResourceOwnerVerifyProvider**(`userRepository`, `utRepository`, `authClientRepository`, `otpRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userRepository` | [`UserRepository`](UserRepository.md) |
| `utRepository` | [`UserTenantRepository`](UserTenantRepository.md) |
| `authClientRepository` | [`AuthClientRepository`](AuthClientRepository.md) |
| `otpRepository` | [`OtpRepository`](OtpRepository.md) |

#### Defined in

[services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts#L21)

## Properties

### authClientRepository

• **authClientRepository**: [`AuthClientRepository`](AuthClientRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts#L27)

___

### otpRepository

• **otpRepository**: [`OtpRepository`](OtpRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts#L29)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts#L23)

___

### utRepository

• **utRepository**: [`UserTenantRepository`](UserTenantRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts#L25)

## Methods

### value

▸ **value**(): `ResourceOwnerPasswordFn`<`IAuthClient`, `IAuthUser`\>

#### Returns

`ResourceOwnerPasswordFn`<`IAuthClient`, `IAuthUser`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts#L32)
