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

[services/authentication-service/src/services/login-helper.service.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/services/login-helper.service.ts#L16)

## Properties

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/services/login-helper.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/services/login-helper.service.ts#L19)

___

### userTenantRepo

• `Private` `Readonly` **userTenantRepo**: [`UserTenantRepository`](UserTenantRepository.md)

#### Defined in

[services/authentication-service/src/services/login-helper.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/services/login-helper.service.ts#L18)

## Methods

### verifyClientUserLogin

▸ **verifyClientUserLogin**(`req`, `client?`, `reqUser?`): `Promise`<``null`` \| `Pick`<[`UserTenant`](UserTenant.md), ``"status"``\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `req` | [`IAuthClientDTO`](../interfaces/IAuthClientDTO.md) |
| `client?` | [`AuthClient`](AuthClient.md)<`DataObject`<`Model`\>\> |
| `reqUser?` | ``null`` \| `Pick`<[`AuthUser`](AuthUser.md), ``"id"`` \| ``"authClientIds"``\> |

#### Returns

`Promise`<``null`` \| `Pick`<[`UserTenant`](UserTenant.md), ``"status"``\>\>

#### Defined in

[services/authentication-service/src/services/login-helper.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/services/login-helper.service.ts#L22)
