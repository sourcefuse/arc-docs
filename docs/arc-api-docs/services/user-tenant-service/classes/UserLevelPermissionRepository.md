[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserLevelPermissionRepository

# Class: UserLevelPermissionRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`UserLevelPermission`](UserLevelPermission.md), `undefined` \| `string`, {}, `this`\> & `DefaultCrudRepository`<[`UserLevelPermission`](UserLevelPermission.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`UserLevelPermissionRepository`**

## Table of contents

### Constructors

- [constructor](UserLevelPermissionRepository.md#constructor)

### Properties

- [getAuditLogRepository](UserLevelPermissionRepository.md#getauditlogrepository)
- [getCurrentUser](UserLevelPermissionRepository.md#getcurrentuser)
- [userTenant](UserLevelPermissionRepository.md#usertenant)
- [userTenantRepositoryGetter](UserLevelPermissionRepository.md#usertenantrepositorygetter)

## Constructors

### constructor

• **new UserLevelPermissionRepository**(`dataSource`, `userTenantRepositoryGetter`, `getCurrentUser`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    UserLevelPermission,
    typeof UserLevelPermission.prototype.id
  \&gt;,
  UserLevelPermissionAuditOpts,
).constructor

#### Defined in

[services/user-tenant-service/src/repositories/user-level-permission.repository.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/repositories/user-level-permission.repository.ts#L37)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-level-permission.repository.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/repositories/user-level-permission.repository.ts#L47)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    UserLevelPermission,
    typeof UserLevelPermission.prototype.id
  \>,
  UserLevelPermissionAuditOpts,
).getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/user-level-permission.repository.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/repositories/user-level-permission.repository.ts#L43)

___

### userTenant

• `Readonly` **userTenant**: `BelongsToAccessor`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-level-permission.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/repositories/user-level-permission.repository.ts#L32)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-level-permission.repository.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/repositories/user-level-permission.repository.ts#L41)
