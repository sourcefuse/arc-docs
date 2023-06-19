[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserTenantPrefsRepository

# Class: UserTenantPrefsRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`UserTenantPrefs`](UserTenantPrefs.md), `undefined` \| `string`, [`UserTenantPrefs`](UserTenantPrefs.md), `this`\> & `DefaultCrudRepository`<[`UserTenantPrefs`](UserTenantPrefs.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`UserTenantPrefsRepository`**

## Table of contents

### Constructors

- [constructor](UserTenantPrefsRepository.md#constructor)

### Properties

- [getAuditLogRepository](UserTenantPrefsRepository.md#getauditlogrepository)
- [getCurrentUser](UserTenantPrefsRepository.md#getcurrentuser)
- [userTenant](UserTenantPrefsRepository.md#usertenant)
- [userTenantRepositoryGetter](UserTenantPrefsRepository.md#usertenantrepositorygetter)

## Constructors

### constructor

• **new UserTenantPrefsRepository**(`dataSource`, `getCurrentUser`, `userTenantRepositoryGetter`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    UserTenantPrefs,
    typeof UserTenantPrefs.prototype.id,
    UserTenantPrefs
  \&gt;,
  UserTenantPrefsAuditOpts,
).constructor

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts#L38)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts#L48)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    UserTenantPrefs,
    typeof UserTenantPrefs.prototype.id,
    UserTenantPrefs
  \>,
  UserTenantPrefsAuditOpts,
).getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts#L42)

___

### userTenant

• `Readonly` **userTenant**: `BelongsToAccessor`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts#L33)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts#L46)
