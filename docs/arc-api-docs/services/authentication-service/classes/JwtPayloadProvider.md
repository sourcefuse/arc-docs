[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / JwtPayloadProvider

# Class: JwtPayloadProvider

## Implements

- `Provider`<[`JwtPayloadFn`](../interfaces/JwtPayloadFn.md)\>

## Table of contents

### Constructors

- [constructor](JwtPayloadProvider.md#constructor)

### Properties

- [getUserPermissions](JwtPayloadProvider.md#getuserpermissions)
- [logger](JwtPayloadProvider.md#logger)
- [roleRepo](JwtPayloadProvider.md#rolerepo)
- [tenantConfigRepo](JwtPayloadProvider.md#tenantconfigrepo)
- [userTenantRepo](JwtPayloadProvider.md#usertenantrepo)
- [utPermsRepo](JwtPayloadProvider.md#utpermsrepo)

### Methods

- [\_removeUnnecessaryData](JwtPayloadProvider.md#_removeunnecessarydata)
- [\_setLocale](JwtPayloadProvider.md#_setlocale)
- [value](JwtPayloadProvider.md#value)

## Constructors

### constructor

• **new JwtPayloadProvider**(`roleRepo`, `utPermsRepo`, `userTenantRepo`, `tenantConfigRepo`, `getUserPermissions`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `roleRepo` | [`RoleRepository`](RoleRepository.md) |
| `utPermsRepo` | [`UserLevelPermissionRepository`](UserLevelPermissionRepository.md) |
| `userTenantRepo` | [`UserTenantRepository`](UserTenantRepository.md) |
| `tenantConfigRepo` | [`TenantConfigRepository`](TenantConfigRepository.md) |
| `getUserPermissions` | `UserPermissionsFn`<`string`\> |
| `logger` | `ILogger` |

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/authentication-service/src/providers/jwt-payload.provider.ts#L32)

## Properties

### getUserPermissions

• `Private` `Readonly` **getUserPermissions**: `UserPermissionsFn`<`string`\>

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/authentication-service/src/providers/jwt-payload.provider.ts#L42)

___

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/authentication-service/src/providers/jwt-payload.provider.ts#L43)

___

### roleRepo

• `Private` `Readonly` **roleRepo**: [`RoleRepository`](RoleRepository.md)

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/authentication-service/src/providers/jwt-payload.provider.ts#L34)

___

### tenantConfigRepo

• `Private` `Readonly` **tenantConfigRepo**: [`TenantConfigRepository`](TenantConfigRepository.md)

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/authentication-service/src/providers/jwt-payload.provider.ts#L40)

___

### userTenantRepo

• `Private` `Readonly` **userTenantRepo**: [`UserTenantRepository`](UserTenantRepository.md)

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/authentication-service/src/providers/jwt-payload.provider.ts#L38)

___

### utPermsRepo

• `Private` `Readonly` **utPermsRepo**: [`UserLevelPermissionRepository`](UserLevelPermissionRepository.md)

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/authentication-service/src/providers/jwt-payload.provider.ts#L36)

## Methods

### \_removeUnnecessaryData

▸ `Private` **_removeUnnecessaryData**(`authUser`): `AnyObject`

#### Parameters

| Name | Type |
| :------ | :------ |
| `authUser` | `AnyObject` |

#### Returns

`AnyObject`

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/authentication-service/src/providers/jwt-payload.provider.ts#L108)

___

### \_setLocale

▸ `Private` **_setLocale**(`authUser`, `userTenant`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `authUser` | `AuthUser` |
| `userTenant` | [`UserTenant`](UserTenant.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:121](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/authentication-service/src/providers/jwt-payload.provider.ts#L121)

___

### value

▸ **value**(): (`authUserData`: `IAuthUser`, `authClient`: `IAuthClient`) => `Promise`<`Object`\>

#### Returns

`fn`

▸ (`authUserData`, `authClient`): `Promise`<`Object`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `authUserData` | `IAuthUser` |
| `authClient` | `IAuthClient` |

##### Returns

`Promise`<`Object`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/authentication-service/src/providers/jwt-payload.provider.ts#L46)
