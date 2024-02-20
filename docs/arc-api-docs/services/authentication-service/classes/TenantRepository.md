[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / TenantRepository

# Class: TenantRepository

## Hierarchy

- `DefaultSoftCrudRepository`<[`Tenant`](Tenant.md), typeof [`id`](Tenant.md#id)\>

  ↳ **`TenantRepository`**

## Table of contents

### Constructors

- [constructor](TenantRepository.md#constructor)

### Properties

- [tenant](TenantRepository.md#tenant)
- [tenantConfigRepositoryGetter](TenantRepository.md#tenantconfigrepositorygetter)
- [tenantConfigs](TenantRepository.md#tenantconfigs)

## Constructors

### constructor

• **new TenantRepository**(`dataSource`, `tenantConfigRepositoryGetter`, `tenant`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `tenantConfigRepositoryGetter` | `Getter`<[`TenantConfigRepository`](TenantConfigRepository.md)\> |
| `tenant` | typeof `Entity` & { `prototype`: [`Tenant`](Tenant.md)  } |

#### Overrides

DefaultSoftCrudRepository&lt;
  Tenant,
  typeof Tenant.prototype.id
\&gt;.constructor

#### Defined in

[services/authentication-service/src/repositories/tenant.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/tenant.repository.ts#L27)

## Properties

### tenant

• `Private` `Readonly` **tenant**: typeof `Entity` & { `prototype`: [`Tenant`](Tenant.md)  }

#### Defined in

[services/authentication-service/src/repositories/tenant.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/tenant.repository.ts#L32)

___

### tenantConfigRepositoryGetter

• `Protected` **tenantConfigRepositoryGetter**: `Getter`<[`TenantConfigRepository`](TenantConfigRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/tenant.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/tenant.repository.ts#L30)

___

### tenantConfigs

• `Readonly` **tenantConfigs**: `HasManyRepositoryFactory`<[`TenantConfig`](TenantConfig.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/tenant.repository.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/tenant.repository.ts#L22)
