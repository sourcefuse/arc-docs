[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / TenantConfigRepository

# Class: TenantConfigRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`TenantConfig`](TenantConfig.md), `undefined` \| `string`, [`TenantConfigRelations`](../interfaces/TenantConfigRelations.md), `this`\> & `DefaultCrudRepository`<[`TenantConfig`](TenantConfig.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`TenantConfigRepository`**

## Table of contents

### Constructors

- [constructor](TenantConfigRepository.md#constructor)

### Properties

- [getAuditLogRepository](TenantConfigRepository.md#getauditlogrepository)
- [getCurrentUser](TenantConfigRepository.md#getcurrentuser)
- [tenant](TenantConfigRepository.md#tenant)
- [tenantRepositoryGetter](TenantConfigRepository.md#tenantrepositorygetter)

## Constructors

### constructor

• **new TenantConfigRepository**(`dataSource`, `tenantRepositoryGetter`, `getCurrentUser`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    TenantConfig,
    typeof TenantConfig.prototype.id,
    TenantConfigRelations
  \&gt;,
  TenantConfigAuditOpts,
).constructor

#### Defined in

[services/user-tenant-service/src/repositories/tenant-config.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/tenant-config.repository.ts#L38)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant-config.repository.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/tenant-config.repository.ts#L48)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    TenantConfig,
    typeof TenantConfig.prototype.id,
    TenantConfigRelations
  \>,
  TenantConfigAuditOpts,
).getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/tenant-config.repository.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/tenant-config.repository.ts#L44)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant-config.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/tenant-config.repository.ts#L33)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant-config.repository.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/tenant-config.repository.ts#L42)
