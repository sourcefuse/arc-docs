[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / UserLevelPermissionRepository

# Class: UserLevelPermissionRepository

## Hierarchy

- `DefaultSoftCrudRepository`<[`UserLevelPermission`](UserLevelPermission.md), typeof [`id`](UserLevelPermission.md#id)\>

  ↳ **`UserLevelPermissionRepository`**

## Table of contents

### Constructors

- [constructor](UserLevelPermissionRepository.md#constructor)

### Properties

- [userTenant](UserLevelPermissionRepository.md#usertenant)
- [userTenantRepositoryGetter](UserLevelPermissionRepository.md#usertenantrepositorygetter)

## Constructors

### constructor

• **new UserLevelPermissionRepository**(`dataSource`, `userTenantRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |

#### Overrides

DefaultSoftCrudRepository&lt;
  UserLevelPermission,
  typeof UserLevelPermission.prototype.id
\&gt;.constructor

#### Defined in

[services/authentication-service/src/repositories/user-level-permission.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-level-permission.repository.ts#L23)

## Properties

### userTenant

• `Readonly` **userTenant**: `BelongsToAccessor`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user-level-permission.repository.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-level-permission.repository.ts#L18)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user-level-permission.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-level-permission.repository.ts#L27)
