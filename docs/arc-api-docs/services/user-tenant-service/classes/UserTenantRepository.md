[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserTenantRepository

# Class: UserTenantRepository

## Hierarchy

- `SoftCrudRepository`<[`UserTenant`](UserTenant.md), `undefined` \| `string`, [`UserTenantRelations`](../interfaces/UserTenantRelations.md), `this`\> & `DefaultCrudRepository`<[`UserTenant`](UserTenant.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`UserTenantRepository`**

## Table of contents

### Constructors

- [constructor](UserTenantRepository.md#constructor)

### Properties

- [getAuditLogRepository](UserTenantRepository.md#getauditlogrepository)
- [role](UserTenantRepository.md#role)
- [roleRepositoryGetter](UserTenantRepository.md#rolerepositorygetter)
- [tenant](UserTenantRepository.md#tenant)
- [tenantRepositoryGetter](UserTenantRepository.md#tenantrepositorygetter)
- [user](UserTenantRepository.md#user)
- [userGroupRepositoryGetter](UserTenantRepository.md#usergrouprepositorygetter)
- [userGroups](UserTenantRepository.md#usergroups)
- [userLevelPermissionRepositoryGetter](UserTenantRepository.md#userlevelpermissionrepositorygetter)
- [userLevelPermissions](UserTenantRepository.md#userlevelpermissions)
- [userRepositoryGetter](UserTenantRepository.md#userrepositorygetter)

## Constructors

### constructor

• **new UserTenantRepository**(`dataSource`, `userRepositoryGetter`, `tenantRepositoryGetter`, `roleRepositoryGetter`, `userLevelPermissionRepositoryGetter`, `userGroupRepositoryGetter`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `userRepositoryGetter` | `Getter`<[`UserRepository`](UserRepository.md)\> |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)\> |
| `roleRepositoryGetter` | `Getter`<[`RoleRepository`](RoleRepository.md)\> |
| `userLevelPermissionRepositoryGetter` | `Getter`<[`UserLevelPermissionRepository`](UserLevelPermissionRepository.md)\> |
| `userGroupRepositoryGetter` | `Getter`<[`UserGroupRepository`](UserGroupRepository.md)\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  SoftCrudRepository&lt;
    UserTenant,
    typeof UserTenant.prototype.id,
    UserTenantRelations
  \&gt;,
  UserTenantAuditOpts,
).constructor

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L65)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L79)

___

### role

• `Readonly` **role**: `BelongsToAccessor`<[`Role`](Role.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L51)

___

### roleRepositoryGetter

• `Protected` **roleRepositoryGetter**: `Getter`<[`RoleRepository`](RoleRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L73)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L46)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L71)

___

### user

• `Readonly` **user**: `BelongsToAccessor`<[`User`](User.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L58)

___

### userGroupRepositoryGetter

• `Protected` **userGroupRepositoryGetter**: `Getter`<[`UserGroupRepository`](UserGroupRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L77)

___

### userGroups

• `Readonly` **userGroups**: `HasManyRepositoryFactory`<[`UserGroup`](UserGroup.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L60)

___

### userLevelPermissionRepositoryGetter

• `Protected` **userLevelPermissionRepositoryGetter**: `Getter`<[`UserLevelPermissionRepository`](UserLevelPermissionRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L75)

___

### userLevelPermissions

• `Readonly` **userLevelPermissions**: `HasManyRepositoryFactory`<[`UserLevelPermission`](UserLevelPermission.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L53)

___

### userRepositoryGetter

• `Protected` **userRepositoryGetter**: `Getter`<[`UserRepository`](UserRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L69)
