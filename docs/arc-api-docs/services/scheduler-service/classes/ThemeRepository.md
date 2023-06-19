[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / ThemeRepository

# Class: ThemeRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Theme`](Theme.md), `undefined` \| `string`, {}, `this`\> & `DefaultCrudRepository`<[`Theme`](Theme.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`ThemeRepository`**

## Table of contents

### Constructors

- [constructor](ThemeRepository.md#constructor)

### Properties

- [getAuditLogRepository](ThemeRepository.md#getauditlogrepository)
- [getCurrentUser](ThemeRepository.md#getcurrentuser)

## Constructors

### constructor

• **new ThemeRepository**(`dataSource`, `getCurrentUser`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;Theme, typeof Theme.prototype.id, {}\&gt;,
  ThemeAuditOpts,
).constructor

#### Defined in

[services/scheduler-service/src/repositories/theme.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/repositories/theme.repository.ts#L27)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/theme.repository.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/repositories/theme.repository.ts#L35)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<Theme, typeof Theme.prototype.id, {}\>,
  ThemeAuditOpts,
).getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/theme.repository.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/scheduler-service/src/repositories/theme.repository.ts#L31)
