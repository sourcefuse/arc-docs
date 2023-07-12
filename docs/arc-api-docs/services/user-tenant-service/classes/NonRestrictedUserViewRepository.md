[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / NonRestrictedUserViewRepository

# Class: NonRestrictedUserViewRepository

## Hierarchy

- `DefaultCrudRepository`<[`UserView`](UserView.md), `undefined` \| `string`, {}, `this`\>

  ↳ **`NonRestrictedUserViewRepository`**

## Table of contents

### Constructors

- [constructor](NonRestrictedUserViewRepository.md#constructor)

### Properties

- [getAuditLogRepository](NonRestrictedUserViewRepository.md#getauditlogrepository)
- [getCurrentUser](NonRestrictedUserViewRepository.md#getcurrentuser)

## Constructors

### constructor

• **new NonRestrictedUserViewRepository**(`dataSource`, `getCurrentUser`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultCrudRepository&lt;UserView, typeof UserView.prototype.id\&gt;,
  NonRestrictedUserViewAuditOpts,
).constructor

#### Defined in

[services/user-tenant-service/src/repositories/non-restricted-user-view.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/user-tenant-service/src/repositories/non-restricted-user-view.repository.ts#L27)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/non-restricted-user-view.repository.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/user-tenant-service/src/repositories/non-restricted-user-view.repository.ts#L35)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Defined in

[services/user-tenant-service/src/repositories/non-restricted-user-view.repository.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/user-tenant-service/src/repositories/non-restricted-user-view.repository.ts#L31)
