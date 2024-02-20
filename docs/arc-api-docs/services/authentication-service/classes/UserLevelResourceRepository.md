[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / UserLevelResourceRepository

# Class: UserLevelResourceRepository

## Hierarchy

- `DefaultSoftCrudRepository`<[`UserLevelResource`](UserLevelResource.md), typeof [`id`](UserLevelResource.md#id)\>

  ↳ **`UserLevelResourceRepository`**

## Table of contents

### Constructors

- [constructor](UserLevelResourceRepository.md#constructor)

### Properties

- [userTenant](UserLevelResourceRepository.md#usertenant)
- [userTenantRepositoryGetter](UserLevelResourceRepository.md#usertenantrepositorygetter)

## Constructors

### constructor

• **new UserLevelResourceRepository**(`dataSource`, `userTenantRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |

#### Overrides

DefaultSoftCrudRepository&lt;
  UserLevelResource,
  typeof UserLevelResource.prototype.id
\&gt;.constructor

#### Defined in

[services/authentication-service/src/repositories/user-level-resource.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-level-resource.repository.ts#L23)

## Properties

### userTenant

• `Readonly` **userTenant**: `BelongsToAccessor`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user-level-resource.repository.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-level-resource.repository.ts#L18)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user-level-resource.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-level-resource.repository.ts#L27)
