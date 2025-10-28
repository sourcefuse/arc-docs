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

- [ensureUserIsActiveInTenant](SecureResourceOwnerVerifyProvider.md#ensureuserisactiveintenant)
- [validateClientAccess](SecureResourceOwnerVerifyProvider.md#validateclientaccess)
- [value](SecureResourceOwnerVerifyProvider.md#value)
- [verifyUserOrOtp](SecureResourceOwnerVerifyProvider.md#verifyuserorotp)

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

[services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts#L25)

## Properties

### authSecureClientRepository

• **authSecureClientRepository**: [`AuthSecureClientRepository`](AuthSecureClientRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts#L31)

___

### otpRepository

• **otpRepository**: [`OtpRepository`](OtpRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts#L33)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts#L27)

___

### utRepository

• **utRepository**: [`UserTenantRepository`](UserTenantRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts#L29)

## Methods

### ensureUserIsActiveInTenant

▸ `Private` **ensureUserIsActiveInTenant**(`user`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `user` | [`User`](User.md)<`DataObject`<`Model`\>\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts:80](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts#L80)

___

### validateClientAccess

▸ `Private` **validateClientAccess**(`clientId`, `clientSecret`, `user`): `Promise`<[`AuthSecureClient`](AuthSecureClient.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `clientId` | `string` |
| `clientSecret` | `string` |
| `user` | [`User`](User.md)<`DataObject`<`Model`\>\> |

#### Returns

`Promise`<[`AuthSecureClient`](AuthSecureClient.md)\>

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts:96](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts#L96)

___

### value

▸ **value**(): `SecureResourceOwnerPasswordFn`<`IAuthSecureClient`, `IAuthUser`\>

The function verifies the secure resource owner password for a client and user.

#### Returns

`SecureResourceOwnerPasswordFn`<`IAuthSecureClient`, `IAuthUser`\>

The `value()` function returns a SecureResourceOwnerPasswordFn function, which is an
asynchronous function that takes clientId, clientSecret, username, and password as parameters.
Inside the function, it verifies the user's password or OTP, checks the user's status, validates
the client, and returns an object containing the client and user if all validations pass.

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts#L44)

___

### verifyUserOrOtp

▸ `Private` **verifyUserOrOtp**(`username`, `password`): `Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `username` | `string` |
| `password` | `string` |

#### Returns

`Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/secure-resource-owner-verify.provider.ts#L60)
