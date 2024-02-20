[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / UserTenantRepository

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
- [userTenant](UserTenantRepository.md#usertenant)

## Constructors

### constructor

• **new UserTenantRepository**(`dataSource`, `tenantRepositoryGetter`, `userRepositoryGetter`, `roleRepositoryGetter`, `userLevelPermissionRepositoryGetter`, `userTenant`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)\> |
| `userRepositoryGetter` | `Getter`<[`UserRepository`](UserRepository.md)\> |
| `roleRepositoryGetter` | `Getter`<[`RoleRepository`](RoleRepository.md)\> |
| `userLevelPermissionRepositoryGetter` | `Getter`<[`UserLevelPermissionRepository`](UserLevelPermissionRepository.md)\> |
| `userTenant` | typeof `Entity` & { `prototype`: [`UserTenant`](UserTenant.md)  } |

#### Overrides

DefaultSoftCrudRepository&lt;
  UserTenant,
  typeof UserTenant.prototype.id,
  UserTenantRelations
\&gt;.constructor

#### Defined in

[services/authentication-service/src/repositories/user-tenant.repository.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-tenant.repository.ts#L48)

## Properties

### role

• `Readonly` **role**: `BelongsToAccessor`<[`Role`](Role.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user-tenant.repository.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-tenant.repository.ts#L41)

___

### roleRepositoryGetter

• `Protected` **roleRepositoryGetter**: `Getter`<[`RoleRepository`](RoleRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user-tenant.repository.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-tenant.repository.ts#L56)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user-tenant.repository.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-tenant.repository.ts#L34)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user-tenant.repository.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-tenant.repository.ts#L52)

___

### user

• `Readonly` **user**: `BelongsToAccessor`<[`User`](User.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user-tenant.repository.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-tenant.repository.ts#L39)

___

### userLevelPermissionRepositoryGetter

• `Protected` **userLevelPermissionRepositoryGetter**: `Getter`<[`UserLevelPermissionRepository`](UserLevelPermissionRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user-tenant.repository.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-tenant.repository.ts#L58)

___

### userLevelPermissions

• `Readonly` **userLevelPermissions**: `HasManyRepositoryFactory`<[`UserLevelPermission`](UserLevelPermission.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user-tenant.repository.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-tenant.repository.ts#L43)

___

### userRepositoryGetter

• `Protected` **userRepositoryGetter**: `Getter`<[`UserRepository`](UserRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user-tenant.repository.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-tenant.repository.ts#L54)

___

### userTenant

• `Private` `Readonly` **userTenant**: typeof `Entity` & { `prototype`: [`UserTenant`](UserTenant.md)  }

#### Defined in

[services/authentication-service/src/repositories/user-tenant.repository.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-tenant.repository.ts#L60)
