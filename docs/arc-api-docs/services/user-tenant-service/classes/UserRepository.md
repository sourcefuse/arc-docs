[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserRepository

# Class: UserRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`User`](User.md), `undefined` \| `string`, [`UserRelations`](../interfaces/UserRelations.md), `this`\> & `DefaultCrudRepository`<[`User`](User.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`UserRepository`**

## Table of contents

### Constructors

- [constructor](UserRepository.md#constructor)

### Properties

- [credentials](UserRepository.md#credentials)
- [getAuditLogRepository](UserRepository.md#getauditlogrepository)
- [getCurrentUser](UserRepository.md#getcurrentuser)
- [tenant](UserRepository.md#tenant)
- [tenantRepositoryGetter](UserRepository.md#tenantrepositorygetter)
- [user](UserRepository.md#user)
- [userCredentialsRepositoryGetter](UserRepository.md#usercredentialsrepositorygetter)
- [userTenantRepositoryGetter](UserRepository.md#usertenantrepositorygetter)
- [userTenants](UserRepository.md#usertenants)

### Methods

- [create](UserRepository.md#create)
- [updatePassword](UserRepository.md#updatepassword)
- [verifyPassword](UserRepository.md#verifypassword)

## Constructors

### constructor

• **new UserRepository**(`dataSource`, `getCurrentUser`, `tenantRepositoryGetter`, `userCredentialsRepositoryGetter`, `userTenantRepositoryGetter`, `user`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)\> |
| `userCredentialsRepositoryGetter` | `Getter`<[`UserCredentialsRepository`](UserCredentialsRepository.md)\> |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |
| `user` | typeof `Entity` & { `prototype`: [`User`](User.md)  } |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    User,
    typeof User.prototype.id,
    UserRelations
  \&gt;,
  UserAuditOpts,
).constructor

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user.repository.ts#L67)

## Properties

### credentials

• `Readonly` **credentials**: `HasOneRepositoryFactory`<[`UserCredentials`](UserCredentials.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user.repository.ts#L57)

___

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user.repository.ts#L83)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    User,
    typeof User.prototype.id,
    UserRelations
  \>,
  UserAuditOpts,
).getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user.repository.ts#L71)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user.repository.ts#L55)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user.repository.ts#L75)

___

### user

• `Private` `Readonly` **user**: typeof `Entity` & { `prototype`: [`User`](User.md)  }

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user.repository.ts#L81)

___

### userCredentialsRepositoryGetter

• `Protected` **userCredentialsRepositoryGetter**: `Getter`<[`UserCredentialsRepository`](UserCredentialsRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user.repository.ts#L77)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user.repository.ts#L79)

___

### userTenants

• `Readonly` **userTenants**: `HasManyRepositoryFactory`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user.repository.ts#L62)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`User`](User.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`User`](User.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<[`User`](User.md)\>

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    User,
    typeof User.prototype.id,
    UserRelations
  \&gt;,
  UserAuditOpts,
).create

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user.repository.ts#L112)

___

### updatePassword

▸ **updatePassword**(`username`, `password`, `newPassword`): `Promise`<[`User`](User.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `username` | `string` |
| `password` | `string` |
| `newPassword` | `string` |

#### Returns

`Promise`<[`User`](User.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:172](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user.repository.ts#L172)

___

### verifyPassword

▸ **verifyPassword**(`username`, `password`): `Promise`<[`User`](User.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `username` | `string` |
| `password` | `string` |

#### Returns

`Promise`<[`User`](User.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:153](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/user.repository.ts#L153)
