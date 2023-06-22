[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserGroupCountViewRepository

# Class: UserGroupCountViewRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`GroupUserCountView`](GroupUserCountView.md), `undefined` \| `string`, [`GroupUserCountView`](GroupUserCountView.md), `this`\> & `DefaultCrudRepository`<[`GroupUserCountView`](GroupUserCountView.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`UserGroupCountViewRepository`**

## Table of contents

### Constructors

- [constructor](UserGroupCountViewRepository.md#constructor)

### Properties

- [getAuditLogRepository](UserGroupCountViewRepository.md#getauditlogrepository)
- [getCurrentUser](UserGroupCountViewRepository.md#getcurrentuser)
- [userGroupRepositoryGetter](UserGroupCountViewRepository.md#usergrouprepositorygetter)

## Constructors

### constructor

• **new UserGroupCountViewRepository**(`dataSource`, `getCurrentUser`, `userGroupRepositoryGetter`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `userGroupRepositoryGetter` | `Getter`<[`UserGroupRepository`](UserGroupRepository.md)\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    GroupUserCountView,
    typeof GroupUserCountView.prototype.id,
    GroupUserCountView
  \&gt;,
  UserGroupCountAuditOpts,
).constructor

#### Defined in

[services/user-tenant-service/src/repositories/group-user-count-view.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/repositories/group-user-count-view.repository.ts#L33)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/group-user-count-view.repository.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/repositories/group-user-count-view.repository.ts#L43)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    GroupUserCountView,
    typeof GroupUserCountView.prototype.id,
    GroupUserCountView
  \>,
  UserGroupCountAuditOpts,
).getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/group-user-count-view.repository.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/repositories/group-user-count-view.repository.ts#L37)

___

### userGroupRepositoryGetter

• `Protected` **userGroupRepositoryGetter**: `Getter`<[`UserGroupRepository`](UserGroupRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/group-user-count-view.repository.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/repositories/group-user-count-view.repository.ts#L41)
