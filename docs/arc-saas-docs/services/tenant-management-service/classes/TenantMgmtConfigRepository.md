[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / TenantMgmtConfigRepository

# Class: TenantMgmtConfigRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`TenantMgmtConfig`](TenantMgmtConfig.md) = [`TenantMgmtConfig`](TenantMgmtConfig.md) |

## Hierarchy

- `DefaultUserModifyCrudRepository`<`T`, typeof [`id`](TenantMgmtConfig.md#id), {}\>

  ↳ **`TenantMgmtConfigRepository`**

## Table of contents

### Constructors

- [constructor](TenantMgmtConfigRepository.md#constructor)

### Properties

- [getCurrentUser](TenantMgmtConfigRepository.md#getcurrentuser)
- [tenant](TenantMgmtConfigRepository.md#tenant)
- [tenantMgmtConfig](TenantMgmtConfigRepository.md#tenantmgmtconfig)
- [tenantRepositoryGetter](TenantMgmtConfigRepository.md#tenantrepositorygetter)

## Constructors

### constructor

• **new TenantMgmtConfigRepository**<`T`\>(`getCurrentUser`, `dataSource`, `tenantRepositoryGetter`, `tenantMgmtConfig`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`TenantMgmtConfig`](TenantMgmtConfig.md)<`T`\> = [`TenantMgmtConfig`](TenantMgmtConfig.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `dataSource` | `DataSource` |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)<[`Tenant`](Tenant.md)\>\> |
| `tenantMgmtConfig` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  T,
  typeof TenantMgmtConfig.prototype.id,
  {}
\&gt;.constructor

#### Defined in

[services/tenant-management-service/src/repositories/tenant-mgmt-config.repository.ts:29](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/tenant-mgmt-config.repository.ts#L29)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/tenant-management-service/src/repositories/tenant-mgmt-config.repository.ts:31](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/tenant-mgmt-config.repository.ts#L31)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/tenant-mgmt-config.repository.ts:24](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/tenant-mgmt-config.repository.ts#L24)

___

### tenantMgmtConfig

• `Private` `Readonly` **tenantMgmtConfig**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/tenant-management-service/src/repositories/tenant-mgmt-config.repository.ts:37](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/tenant-mgmt-config.repository.ts#L37)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)<[`Tenant`](Tenant.md)\>\>

#### Defined in

[services/tenant-management-service/src/repositories/tenant-mgmt-config.repository.ts:35](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/tenant-mgmt-config.repository.ts#L35)
