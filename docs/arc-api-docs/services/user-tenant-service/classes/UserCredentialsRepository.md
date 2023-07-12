[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserCredentialsRepository

# Class: UserCredentialsRepository

## Hierarchy

- `SoftCrudRepository`<[`UserCredentials`](UserCredentials.md), `undefined` \| `string`, [`UserCredentialsRelations`](../interfaces/UserCredentialsRelations.md), `this`\> & `DefaultCrudRepository`<[`UserCredentials`](UserCredentials.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`UserCredentialsRepository`**

## Table of contents

### Constructors

- [constructor](UserCredentialsRepository.md#constructor)

### Properties

- [getAuditLogRepository](UserCredentialsRepository.md#getauditlogrepository)
- [user](UserCredentialsRepository.md#user)
- [userRepositoryGetter](UserCredentialsRepository.md#userrepositorygetter)

## Constructors

### constructor

• **new UserCredentialsRepository**(`dataSource`, `userRepositoryGetter`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `userRepositoryGetter` | `Getter`<[`UserRepository`](UserRepository.md)\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  SoftCrudRepository&lt;
    UserCredentials,
    typeof UserCredentials.prototype.id,
    UserCredentialsRelations
  \&gt;,
  UserCredentialsAuditOpts,
).constructor

#### Defined in

[services/user-tenant-service/src/repositories/user-credentials.repository.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/user-tenant-service/src/repositories/user-credentials.repository.ts#L35)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-credentials.repository.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/user-tenant-service/src/repositories/user-credentials.repository.ts#L41)

___

### user

• `Readonly` **user**: `BelongsToAccessor`<[`User`](User.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-credentials.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/user-tenant-service/src/repositories/user-credentials.repository.ts#L30)

___

### userRepositoryGetter

• `Protected` **userRepositoryGetter**: `Getter`<[`UserRepository`](UserRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-credentials.repository.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/user-tenant-service/src/repositories/user-credentials.repository.ts#L39)
