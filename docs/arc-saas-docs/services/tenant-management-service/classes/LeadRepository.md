[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / LeadRepository

# Class: LeadRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Lead`](Lead.md), typeof [`id`](Lead.md#id), [`LeadRelations`](../interfaces/LeadRelations.md)\>

  ↳ **`LeadRepository`**

## Table of contents

### Constructors

- [constructor](LeadRepository.md#constructor)

### Properties

- [address](LeadRepository.md#address)
- [addressRepositoryGetter](LeadRepository.md#addressrepositorygetter)
- [getCurrentUser](LeadRepository.md#getcurrentuser)
- [tenant](LeadRepository.md#tenant)
- [tenantRepositoryGetter](LeadRepository.md#tenantrepositorygetter)

## Constructors

### constructor

• **new LeadRepository**(`dataSource`, `getCurrentUser`, `tenantRepositoryGetter`, `addressRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)\> |
| `addressRepositoryGetter` | `Getter`<[`AddressRepository`](AddressRepository.md)\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Lead,
  typeof Lead.prototype.id,
  LeadRelations
\&gt;.constructor

#### Defined in

[services/tenant-management-service/src/repositories/lead.repository.ts:35](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/lead.repository.ts#L35)

## Properties

### address

• `Readonly` **address**: `BelongsToAccessor`<[`Address`](Address.md), `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/lead.repository.ts:30](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/lead.repository.ts#L30)

___

### addressRepositoryGetter

• `Protected` **addressRepositoryGetter**: `Getter`<[`AddressRepository`](AddressRepository.md)\>

#### Defined in

[services/tenant-management-service/src/repositories/lead.repository.ts:43](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/lead.repository.ts#L43)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/tenant-management-service/src/repositories/lead.repository.ts:39](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/lead.repository.ts#L39)

___

### tenant

• `Readonly` **tenant**: `HasOneRepositoryFactory`<[`Tenant`](Tenant.md), `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/lead.repository.ts:25](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/lead.repository.ts#L25)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/tenant-management-service/src/repositories/lead.repository.ts:41](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/lead.repository.ts#L41)
