[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / RoleRepository

# Class: RoleRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Role`](Role.md), `undefined` \| `string`, [`RoleRelations`](../interfaces/RoleRelations.md), `this`\> & `DefaultCrudRepository`<[`Role`](Role.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`RoleRepository`**

## Table of contents

### Constructors

- [constructor](RoleRepository.md#constructor)

### Properties

- [createdByUser](RoleRepository.md#createdbyuser)
- [getAuditLogRepository](RoleRepository.md#getauditlogrepository)
- [getCurrentUser](RoleRepository.md#getcurrentuser)
- [modifiedByUser](RoleRepository.md#modifiedbyuser)
- [userTenantRepositoryGetter](RoleRepository.md#usertenantrepositorygetter)
- [userTenants](RoleRepository.md#usertenants)
- [userViewRepositoryGetter](RoleRepository.md#userviewrepositorygetter)

## Constructors

### constructor

• **new RoleRepository**(`dataSource`, `getCurrentUser`, `userTenantRepositoryGetter`, `userViewRepositoryGetter`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |
| `userViewRepositoryGetter` | `Getter`<[`UserViewRepository`](UserViewRepository.md)\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    Role,
    typeof Role.prototype.id,
    RoleRelations
  \&gt;,
  RoleAuditOpts,
).constructor

#### Defined in

[services/user-tenant-service/src/repositories/role.repository.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/role.repository.ts#L55)

## Properties

### createdByUser

• `Readonly` **createdByUser**: `HasOneRepositoryFactory`<[`UserView`](UserView.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/role.repository.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/role.repository.ts#L45)

___

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/role.repository.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/role.repository.ts#L67)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    Role,
    typeof Role.prototype.id,
    RoleRelations
  \>,
  RoleAuditOpts,
).getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/role.repository.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/role.repository.ts#L59)

___

### modifiedByUser

• `Readonly` **modifiedByUser**: `HasOneRepositoryFactory`<[`UserView`](UserView.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/role.repository.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/role.repository.ts#L50)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/role.repository.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/role.repository.ts#L63)

___

### userTenants

• `Readonly` **userTenants**: `HasManyRepositoryFactory`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/role.repository.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/role.repository.ts#L40)

___

### userViewRepositoryGetter

• `Protected` **userViewRepositoryGetter**: `Getter`<[`UserViewRepository`](UserViewRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/role.repository.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/role.repository.ts#L65)
