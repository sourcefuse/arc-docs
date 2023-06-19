[@sourceloop/oidc-service](README.md) / Exports

# @sourceloop/oidc-service

## Table of contents

### Namespaces

- [OIDCServiceBindings](modules/OIDCServiceBindings.md)

### Classes

- [AuthClient](classes/AuthClient.md)
- [AuthClientRepository](classes/AuthClientRepository.md)
- [FindAccountProvider](classes/FindAccountProvider.md)
- [OidcProviderProvider](classes/OidcProviderProvider.md)
- [OidcServiceComponent](classes/OidcServiceComponent.md)
- [Otp](classes/Otp.md)
- [OtpRepository](classes/OtpRepository.md)
- [Role](classes/Role.md)
- [RoleRepository](classes/RoleRepository.md)
- [Tenant](classes/Tenant.md)
- [TenantConfig](classes/TenantConfig.md)
- [TenantConfigRepository](classes/TenantConfigRepository.md)
- [TenantRepository](classes/TenantRepository.md)
- [User](classes/User.md)
- [UserCredentials](classes/UserCredentials.md)
- [UserCredentialsRepository](classes/UserCredentialsRepository.md)
- [UserLevelPermission](classes/UserLevelPermission.md)
- [UserLevelPermissionRepository](classes/UserLevelPermissionRepository.md)
- [UserRepository](classes/UserRepository.md)
- [UserTenant](classes/UserTenant.md)
- [UserTenantRepository](classes/UserTenantRepository.md)

### Interfaces

- [ExternalTokens](interfaces/ExternalTokens.md)
- [FindAccountResult](interfaces/FindAccountResult.md)
- [IAuthClientDTO](interfaces/IAuthClientDTO.md)
- [IAuthServiceConfig](interfaces/IAuthServiceConfig.md)
- [IMfaConfig](interfaces/IMfaConfig.md)
- [UserCredentialsRelations](interfaces/UserCredentialsRelations.md)
- [UserRelations](interfaces/UserRelations.md)
- [UserTenantRelations](interfaces/UserTenantRelations.md)

### Type Aliases

- [FindAccountProviderFn](modules.md#findaccountproviderfn)
- [RoleWithRelations](modules.md#rolewithrelations)
- [TenantWithRelations](modules.md#tenantwithrelations)
- [UserCredentialsWithRelations](modules.md#usercredentialswithrelations)
- [UserTenantWithRelations](modules.md#usertenantwithrelations)
- [UserWithRelations](modules.md#userwithrelations)

### Variables

- [AuthCacheSourceName](modules.md#authcachesourcename)
- [AuthDbSourceName](modules.md#authdbsourcename)
- [jwks](modules.md#jwks)

## Type Aliases

### FindAccountProviderFn

Ƭ **FindAccountProviderFn**: (`ctx`: `unknown`, `sub`: `string`, `token`: `unknown`) => `Promise`<[`FindAccountResult`](interfaces/FindAccountResult.md)\>

#### Type declaration

▸ (`ctx`, `sub`, `token`): `Promise`<[`FindAccountResult`](interfaces/FindAccountResult.md)\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `ctx` | `unknown` |
| `sub` | `string` |
| `token` | `unknown` |

##### Returns

`Promise`<[`FindAccountResult`](interfaces/FindAccountResult.md)\>

#### Defined in

[services/oidc-service/src/types.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/oidc-service/src/types.ts#L34)

___

### RoleWithRelations

Ƭ **RoleWithRelations**: [`Role`](classes/Role.md)

#### Defined in

[services/oidc-service/src/models/role.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/oidc-service/src/models/role.model.ts#L45)

___

### TenantWithRelations

Ƭ **TenantWithRelations**: [`Tenant`](classes/Tenant.md)

#### Defined in

[services/oidc-service/src/models/tenant.model.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/oidc-service/src/models/tenant.model.ts#L75)

___

### UserCredentialsWithRelations

Ƭ **UserCredentialsWithRelations**: [`UserCredentials`](classes/UserCredentials.md) & [`UserCredentialsRelations`](interfaces/UserCredentialsRelations.md)

#### Defined in

[services/oidc-service/src/models/user-credentials.model.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/oidc-service/src/models/user-credentials.model.ts#L70)

___

### UserTenantWithRelations

Ƭ **UserTenantWithRelations**: [`UserTenant`](classes/UserTenant.md) & [`UserTenantRelations`](interfaces/UserTenantRelations.md)

#### Defined in

[services/oidc-service/src/models/user-tenant.model.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/oidc-service/src/models/user-tenant.model.ts#L82)

___

### UserWithRelations

Ƭ **UserWithRelations**: [`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md)

#### Defined in

[services/oidc-service/src/models/user.model.ts:128](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/oidc-service/src/models/user.model.ts#L128)

## Variables

### AuthCacheSourceName

• `Const` **AuthCacheSourceName**: ``"AuthCache"``

#### Defined in

[services/oidc-service/src/types.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/oidc-service/src/types.ts#L16)

___

### AuthDbSourceName

• `Const` **AuthDbSourceName**: ``"AuthDB"``

#### Defined in

[services/oidc-service/src/types.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/oidc-service/src/types.ts#L15)

___

### jwks

• `Const` **jwks**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `keys` | { `alg`: `undefined` \| `string` = process.env.OIDC\_JWKS\_ALG; `d`: `undefined` \| `string` = process.env.OIDC\_JWKS\_D; `dp`: `undefined` \| `string` = process.env.OIDC\_JWKS\_DP; `dq`: `undefined` \| `string` = process.env.OIDC\_JWKS\_DQ; `e`: `undefined` \| `string` = process.env.OIDC\_JWKS\_E; `kid`: `undefined` \| `string` = process.env.OIDC\_JWKS\_KID; `kty`: `undefined` \| `string` = process.env.OIDC\_JWKS\_KTY; `n`: `undefined` \| `string` = process.env.OIDC\_JWKS\_N; `p`: `undefined` \| `string` = process.env.OIDC\_JWKS\_P; `q`: `undefined` \| `string` = process.env.OIDC\_JWKS\_Q; `qi`: `undefined` \| `string` = process.env.OIDC\_JWKS\_QI; `use`: `undefined` \| `string` = process.env.OIDC\_JWKS\_USE }[] |

#### Defined in

[services/oidc-service/src/providers/oidc.provider.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/oidc-service/src/providers/oidc.provider.ts#L23)
