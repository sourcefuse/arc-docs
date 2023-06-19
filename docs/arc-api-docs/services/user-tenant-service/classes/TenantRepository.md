[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / TenantRepository

# Class: TenantRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Tenant`](Tenant.md), `undefined` \| `string`, [`TenantRelations`](../interfaces/TenantRelations.md), `this`\> & `DefaultCrudRepository`<[`Tenant`](Tenant.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`TenantRepository`**

## Table of contents

### Constructors

- [constructor](TenantRepository.md#constructor)

### Properties

- [getAuditLogRepository](TenantRepository.md#getauditlogrepository)
- [getCurrentUser](TenantRepository.md#getcurrentuser)
- [tenantConfigRepositoryGetter](TenantRepository.md#tenantconfigrepositorygetter)
- [tenantConfigs](TenantRepository.md#tenantconfigs)
- [userTenantRepositoryGetter](TenantRepository.md#usertenantrepositorygetter)
- [userTenants](TenantRepository.md#usertenants)

## Constructors

### constructor

• **new TenantRepository**(`dataSource`, `tenantConfigRepositoryGetter`, `userTenantRepositoryGetter`, `getCurrentUser`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `tenantConfigRepositoryGetter` | `Getter`<[`TenantConfigRepository`](TenantConfigRepository.md)\> |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    Tenant,
    typeof Tenant.prototype.id,
    TenantRelations
  \&gt;,
  TenantAuditOpts,
).constructor

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/tenant.repository.ts#L49)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/tenant.repository.ts#L61)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    Tenant,
    typeof Tenant.prototype.id,
    TenantRelations
  \>,
  TenantAuditOpts,
).getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/tenant.repository.ts#L57)

___

### tenantConfigRepositoryGetter

• `Protected` **tenantConfigRepositoryGetter**: `Getter`<[`TenantConfigRepository`](TenantConfigRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/tenant.repository.ts#L53)

___

### tenantConfigs

• `Readonly` **tenantConfigs**: `HasManyRepositoryFactory`<[`TenantConfig`](TenantConfig.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/tenant.repository.ts#L39)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/tenant.repository.ts#L55)

___

### userTenants

• `Readonly` **userTenants**: `HasManyRepositoryFactory`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/repositories/tenant.repository.ts#L44)
