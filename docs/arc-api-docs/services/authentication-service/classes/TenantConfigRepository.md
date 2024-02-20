[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / TenantConfigRepository

# Class: TenantConfigRepository

## Hierarchy

- `DefaultSoftCrudRepository`<[`TenantConfig`](TenantConfig.md), typeof [`id`](TenantConfig.md#id), {}\>

  ↳ **`TenantConfigRepository`**

## Table of contents

### Constructors

- [constructor](TenantConfigRepository.md#constructor)

### Properties

- [tenant](TenantConfigRepository.md#tenant)
- [tenantRepositoryGetter](TenantConfigRepository.md#tenantrepositorygetter)

## Constructors

### constructor

• **new TenantConfigRepository**(`dataSource`, `tenantRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)\> |

#### Overrides

DefaultSoftCrudRepository&lt;
  TenantConfig,
  typeof TenantConfig.prototype.id,
  {}
\&gt;.constructor

#### Defined in

[services/authentication-service/src/repositories/tenant-config.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/tenant-config.repository.ts#L23)

## Properties

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/tenant-config.repository.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/tenant-config.repository.ts#L18)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/tenant-config.repository.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/tenant-config.repository.ts#L26)
