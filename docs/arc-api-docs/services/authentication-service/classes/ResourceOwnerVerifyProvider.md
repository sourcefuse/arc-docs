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

- [ensureUserIsActiveInTenant](ResourceOwnerVerifyProvider.md#ensureuserisactiveintenant)
- [validateClientAccess](ResourceOwnerVerifyProvider.md#validateclientaccess)
- [value](ResourceOwnerVerifyProvider.md#value)
- [verifyUserOrOtp](ResourceOwnerVerifyProvider.md#verifyuserorotp)

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

[services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts#L21)

## Properties

### authClientRepository

• **authClientRepository**: [`AuthClientRepository`](AuthClientRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts#L27)

___

### otpRepository

• **otpRepository**: [`OtpRepository`](OtpRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts#L29)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts#L23)

___

### utRepository

• **utRepository**: [`UserTenantRepository`](UserTenantRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts#L25)

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

[services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts#L68)

___

### validateClientAccess

▸ `Private` **validateClientAccess**(`clientId`, `clientSecret`, `user`): `Promise`<[`AuthClient`](AuthClient.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `clientId` | `string` |
| `clientSecret` | `string` |
| `user` | [`User`](User.md)<`DataObject`<`Model`\>\> |

#### Returns

`Promise`<[`AuthClient`](AuthClient.md)<`DataObject`<`Model`\>\>\>

#### Defined in

[services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts#L84)

___

### value

▸ **value**(): `ResourceOwnerPasswordFn`<`IAuthClient`, `IAuthUser`\>

#### Returns

`ResourceOwnerPasswordFn`<`IAuthClient`, `IAuthUser`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts#L32)

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

[services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/providers/resource-owner-verify.provider.ts#L48)
