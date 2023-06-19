[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserGroupViewRepository

# Class: UserGroupViewRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`UserGroupView`](UserGroupView.md), `undefined` \| `string`, [`UserGroupView`](UserGroupView.md), `this`\> & `DefaultCrudRepository`<[`UserGroupView`](UserGroupView.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`UserGroupViewRepository`**

## Table of contents

### Constructors

- [constructor](UserGroupViewRepository.md#constructor)

### Properties

- [getAuditLogRepository](UserGroupViewRepository.md#getauditlogrepository)
- [getCurrentUser](UserGroupViewRepository.md#getcurrentuser)
- [userGroupRepositoryGetter](UserGroupViewRepository.md#usergrouprepositorygetter)

## Constructors

### constructor

• **new UserGroupViewRepository**(`dataSource`, `getCurrentUser`, `userGroupRepositoryGetter`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`\>\> |
| `userGroupRepositoryGetter` | `Getter`<[`UserGroupRepository`](UserGroupRepository.md)\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    UserGroupView,
    typeof UserGroupView.prototype.id,
    UserGroupView
  \&gt;,
  UserGroupViewAuditOpts,
).constructor

#### Defined in

[services/user-tenant-service/src/repositories/user-group-view.repository.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-group-view.repository.ts#L31)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-group-view.repository.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-group-view.repository.ts#L41)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    UserGroupView,
    typeof UserGroupView.prototype.id,
    UserGroupView
  \>,
  UserGroupViewAuditOpts,
).getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/user-group-view.repository.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-group-view.repository.ts#L35)

___

### userGroupRepositoryGetter

• `Protected` **userGroupRepositoryGetter**: `Getter`<[`UserGroupRepository`](UserGroupRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-group-view.repository.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-group-view.repository.ts#L39)
