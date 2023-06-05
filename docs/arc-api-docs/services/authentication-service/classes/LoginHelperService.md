[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / LoginHelperService

# Class: LoginHelperService

## Table of contents

### Constructors

- [constructor](LoginHelperService.md#constructor)

### Properties

- [logger](LoginHelperService.md#logger)
- [userTenantRepo](LoginHelperService.md#usertenantrepo)

### Methods

- [verifyClientUserLogin](LoginHelperService.md#verifyclientuserlogin)

## Constructors

### constructor

• **new LoginHelperService**(`userTenantRepo`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userTenantRepo` | [`UserTenantRepository`](UserTenantRepository.md) |
| `logger` | `ILogger` |

#### Defined in

[services/authentication-service/src/services/login-helper.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/authentication-service/src/services/login-helper.service.ts#L17)

## Properties

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/services/login-helper.service.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/authentication-service/src/services/login-helper.service.ts#L20)

___

### userTenantRepo

• `Private` `Readonly` **userTenantRepo**: [`UserTenantRepository`](UserTenantRepository.md)

#### Defined in

[services/authentication-service/src/services/login-helper.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/authentication-service/src/services/login-helper.service.ts#L19)

## Methods

### verifyClientUserLogin

▸ **verifyClientUserLogin**(`req`, `client?`, `reqUser?`): `Promise`<``null`` \| `Pick`<[`UserTenant`](UserTenant.md), ``"status"``\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `req` | [`IAuthClientDTO`](../interfaces/IAuthClientDTO.md) |
| `client?` | [`AuthClient`](AuthClient.md) |
| `reqUser?` | ``null`` \| `Pick`<`AuthUser`, ``"id"`` \| ``"authClientIds"``\> |

#### Returns

`Promise`<``null`` \| `Pick`<[`UserTenant`](UserTenant.md), ``"status"``\>\>

#### Defined in

[services/authentication-service/src/services/login-helper.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/authentication-service/src/services/login-helper.service.ts#L23)
