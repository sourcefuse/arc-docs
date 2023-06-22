[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / GroupRepository

# Class: GroupRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Group`](Group.md), `undefined` \| `string`, [`GroupRelations`](../interfaces/GroupRelations.md), `this`\> & `DefaultCrudRepository`<[`Group`](Group.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`GroupRepository`**

## Table of contents

### Constructors

- [constructor](GroupRepository.md#constructor)

### Properties

- [getAuditLogRepository](GroupRepository.md#getauditlogrepository)
- [getCurrentUser](GroupRepository.md#getcurrentuser)
- [userGroupRepositoryGetter](GroupRepository.md#usergrouprepositorygetter)
- [userGroups](GroupRepository.md#usergroups)

## Constructors

### constructor

• **new GroupRepository**(`dataSource`, `getCurrentUser`, `userGroupRepositoryGetter`, `getAuditLogRepository`)

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
    Group,
    typeof Group.prototype.id,
    GroupRelations
  \&gt;,
  GroupAuditOpts,
).constructor

#### Defined in

[services/user-tenant-service/src/repositories/group.repository.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/repositories/group.repository.ts#L42)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/group.repository.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/repositories/group.repository.ts#L52)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    Group,
    typeof Group.prototype.id,
    GroupRelations
  \>,
  GroupAuditOpts,
).getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/group.repository.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/repositories/group.repository.ts#L46)

___

### userGroupRepositoryGetter

• `Protected` **userGroupRepositoryGetter**: `Getter`<[`UserGroupRepository`](UserGroupRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/group.repository.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/repositories/group.repository.ts#L50)

___

### userGroups

• `Readonly` **userGroups**: `HasManyRepositoryFactory`<[`UserGroup`](UserGroup.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/group.repository.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/repositories/group.repository.ts#L37)
