[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / JwtPayloadProvider

# Class: JwtPayloadProvider

## Implements

- `Provider`<[`JwtPayloadFn`](../modules.md#jwtpayloadfn)\>

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

[services/authentication-service/src/providers/jwt-payload.provider.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/jwt-payload.provider.ts#L31)

## Properties

### getUserPermissions

• `Private` `Readonly` **getUserPermissions**: `UserPermissionsFn`<`string`\>

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/jwt-payload.provider.ts#L41)

___

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/jwt-payload.provider.ts#L42)

___

### roleRepo

• `Private` `Readonly` **roleRepo**: [`RoleRepository`](RoleRepository.md)

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/jwt-payload.provider.ts#L33)

___

### tenantConfigRepo

• `Private` `Readonly` **tenantConfigRepo**: [`TenantConfigRepository`](TenantConfigRepository.md)

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/jwt-payload.provider.ts#L39)

___

### userTenantRepo

• `Private` `Readonly` **userTenantRepo**: [`UserTenantRepository`](UserTenantRepository.md)

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/jwt-payload.provider.ts#L37)

___

### utPermsRepo

• `Private` `Readonly` **utPermsRepo**: [`UserLevelPermissionRepository`](UserLevelPermissionRepository.md)

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/jwt-payload.provider.ts#L35)

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

[services/authentication-service/src/providers/jwt-payload.provider.ts:111](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/jwt-payload.provider.ts#L111)

___

### \_setLocale

▸ `Private` **_setLocale**(`authUser`, `userTenant`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `authUser` | [`AuthUser`](AuthUser.md) |
| `userTenant` | [`UserTenant`](UserTenant.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:124](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/jwt-payload.provider.ts#L124)

___

### value

▸ **value**(): (`authUserData`: `IAuthUser`, `authClient`: `IAuthClient`, `tenantId?`: `string`) => `Promise`<`Object`\>

#### Returns

`fn`

▸ (`authUserData`, `authClient`, `tenantId?`): `Promise`<`Object`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `authUserData` | `IAuthUser` |
| `authClient` | `IAuthClient` |
| `tenantId?` | `string` |

##### Returns

`Promise`<`Object`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/jwt-payload.provider.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/jwt-payload.provider.ts#L45)
