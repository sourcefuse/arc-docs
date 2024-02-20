[@sourceloop/oidc-service](../README.md) / [Exports](../modules.md) / UserTenantRepository

# Class: UserTenantRepository

## Hierarchy

- `DefaultSoftCrudRepository`<[`UserTenant`](UserTenant.md), typeof [`id`](UserTenant.md#id), [`UserTenantRelations`](../interfaces/UserTenantRelations.md)\>

  ↳ **`UserTenantRepository`**

## Table of contents

### Constructors

- [constructor](UserTenantRepository.md#constructor)

### Properties

- [role](UserTenantRepository.md#role)
- [roleRepositoryGetter](UserTenantRepository.md#rolerepositorygetter)
- [tenant](UserTenantRepository.md#tenant)
- [tenantRepositoryGetter](UserTenantRepository.md#tenantrepositorygetter)
- [user](UserTenantRepository.md#user)
- [userLevelPermissionRepositoryGetter](UserTenantRepository.md#userlevelpermissionrepositorygetter)
- [userLevelPermissions](UserTenantRepository.md#userlevelpermissions)
- [userRepositoryGetter](UserTenantRepository.md#userrepositorygetter)

## Constructors

### constructor

• **new UserTenantRepository**(`dataSource`, `tenantRepositoryGetter`, `userRepositoryGetter`, `roleRepositoryGetter`, `userLevelPermissionRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)\> |
| `userRepositoryGetter` | `Getter`<[`UserRepository`](UserRepository.md)\> |
| `roleRepositoryGetter` | `Getter`<[`RoleRepository`](RoleRepository.md)\> |
| `userLevelPermissionRepositoryGetter` | `Getter`<[`UserLevelPermissionRepository`](UserLevelPermissionRepository.md)\> |

#### Overrides

DefaultSoftCrudRepository&lt;
  UserTenant,
  typeof UserTenant.prototype.id,
  UserTenantRelations
\&gt;.constructor

#### Defined in

[services/oidc-service/src/repositories/user-tenant.repository.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user-tenant.repository.ts#L47)

## Properties

### role

• `Readonly` **role**: `BelongsToAccessor`<[`Role`](Role.md), `undefined` \| `string`\>

#### Defined in

[services/oidc-service/src/repositories/user-tenant.repository.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user-tenant.repository.ts#L40)

___

### roleRepositoryGetter

• `Protected` **roleRepositoryGetter**: `Getter`<[`RoleRepository`](RoleRepository.md)\>

#### Defined in

[services/oidc-service/src/repositories/user-tenant.repository.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user-tenant.repository.ts#L55)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `undefined` \| `string`\>

#### Defined in

[services/oidc-service/src/repositories/user-tenant.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user-tenant.repository.ts#L33)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/oidc-service/src/repositories/user-tenant.repository.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user-tenant.repository.ts#L51)

___

### user

• `Readonly` **user**: `BelongsToAccessor`<[`User`](User.md), `undefined` \| `string`\>

#### Defined in

[services/oidc-service/src/repositories/user-tenant.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user-tenant.repository.ts#L38)

___

### userLevelPermissionRepositoryGetter

• `Protected` **userLevelPermissionRepositoryGetter**: `Getter`<[`UserLevelPermissionRepository`](UserLevelPermissionRepository.md)\>

#### Defined in

[services/oidc-service/src/repositories/user-tenant.repository.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user-tenant.repository.ts#L57)

___

### userLevelPermissions

• `Readonly` **userLevelPermissions**: `HasManyRepositoryFactory`<[`UserLevelPermission`](UserLevelPermission.md), `undefined` \| `string`\>

#### Defined in

[services/oidc-service/src/repositories/user-tenant.repository.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user-tenant.repository.ts#L42)

___

### userRepositoryGetter

• `Protected` **userRepositoryGetter**: `Getter`<[`UserRepository`](UserRepository.md)\>

#### Defined in

[services/oidc-service/src/repositories/user-tenant.repository.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user-tenant.repository.ts#L53)
