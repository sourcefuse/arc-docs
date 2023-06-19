[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserViewRepository

# Class: UserViewRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`UserView`](UserView.md), `undefined` \| `string`, {}, `this`\> & `DefaultCrudRepository`<[`UserView`](UserView.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`UserViewRepository`**

## Table of contents

### Constructors

- [constructor](UserViewRepository.md#constructor)

### Properties

- [getAuditLogRepository](UserViewRepository.md#getauditlogrepository)
- [getCurrentUser](UserViewRepository.md#getcurrentuser)

## Constructors

### constructor

• **new UserViewRepository**(`dataSource`, `getCurrentUser`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;UserView, typeof UserView.prototype.id\&gt;,
  UserViewAuditOpts,
).constructor

#### Defined in

[services/user-tenant-service/src/repositories/user-view.repository.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-view.repository.ts#L29)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-view.repository.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-view.repository.ts#L37)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<UserView, typeof UserView.prototype.id\>,
  UserViewAuditOpts,
).getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/user-view.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user-view.repository.ts#L33)
