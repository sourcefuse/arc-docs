[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / ThemeRepository

# Class: ThemeRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Theme`](Theme.md), `undefined` \| `string`, {}, `this`\> & {}

  ↳ **`ThemeRepository`**

## Table of contents

### Constructors

- [constructor](ThemeRepository.md#constructor)

### Properties

- [getAuditLogRepository](ThemeRepository.md#getauditlogrepository)
- [getCurrentUser](ThemeRepository.md#getcurrentuser)

### Methods

- [save](ThemeRepository.md#save)

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

[services/scheduler-service/src/repositories/theme.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/theme.repository.ts#L27)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/theme.repository.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/theme.repository.ts#L35)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<Theme, typeof Theme.prototype.id, {}\>,
  ThemeAuditOpts,
).getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/theme.repository.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/theme.repository.ts#L31)

## Methods

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Theme`](Theme.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Theme`](Theme.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Theme`](Theme.md)\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<Theme, typeof Theme.prototype.id, {}\>,
  ThemeAuditOpts,
).save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13
