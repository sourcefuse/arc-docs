[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserGroupRepository

# Class: UserGroupRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`UserGroup`](UserGroup.md), `undefined` \| `string`, [`UserGroupRelations`](../interfaces/UserGroupRelations.md), `this`\> & `DefaultCrudRepository`<[`UserGroup`](UserGroup.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`UserGroupRepository`**

## Table of contents

### Constructors

- [constructor](UserGroupRepository.md#constructor)

### Properties

- [getAuditLogRepository](UserGroupRepository.md#getauditlogrepository)
- [getCurrentUser](UserGroupRepository.md#getcurrentuser)
- [group](UserGroupRepository.md#group)
- [groupRepositoryGetter](UserGroupRepository.md#grouprepositorygetter)
- [userTenant](UserGroupRepository.md#usertenant)
- [userTenantRepositoryGetter](UserGroupRepository.md#usertenantrepositorygetter)

## Constructors

### constructor

• **new UserGroupRepository**(`dataSource`, `getCurrentUser`, `groupRepositoryGetter`, `userTenantRepositoryGetter`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `groupRepositoryGetter` | `Getter`<[`GroupRepository`](GroupRepository.md)\> |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    UserGroup,
    typeof UserGroup.prototype.id,
    UserGroupRelations
  \&gt;,
  UserGroupAuditOpts,
).constructor

#### Defined in

[services/user-tenant-service/src/repositories/user-group.repository.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-group.repository.ts#L44)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-group.repository.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-group.repository.ts#L56)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    UserGroup,
    typeof UserGroup.prototype.id,
    UserGroupRelations
  \>,
  UserGroupAuditOpts,
).getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/user-group.repository.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-group.repository.ts#L48)

___

### group

• `Readonly` **group**: `BelongsToAccessor`<[`Group`](Group.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-group.repository.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-group.repository.ts#L34)

___

### groupRepositoryGetter

• `Protected` **groupRepositoryGetter**: `Getter`<[`GroupRepository`](GroupRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-group.repository.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-group.repository.ts#L52)

___

### userTenant

• `Readonly` **userTenant**: `BelongsToAccessor`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-group.repository.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-group.repository.ts#L39)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-group.repository.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-group.repository.ts#L54)
