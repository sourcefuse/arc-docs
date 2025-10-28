[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / LeadRepository

# Class: LeadRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Lead`](Lead.md) = [`Lead`](Lead.md) |

## Hierarchy

- `DefaultUserModifyCrudRepository`<`T`, typeof [`id`](Lead.md#id), [`LeadRelations`](../interfaces/LeadRelations.md)\>

  ↳ **`LeadRepository`**

## Table of contents

### Constructors

- [constructor](LeadRepository.md#constructor)

### Properties

- [address](LeadRepository.md#address)
- [addressRepositoryGetter](LeadRepository.md#addressrepositorygetter)
- [getCurrentUser](LeadRepository.md#getcurrentuser)
- [lead](LeadRepository.md#lead)
- [tenant](LeadRepository.md#tenant)
- [tenantRepositoryGetter](LeadRepository.md#tenantrepositorygetter)

## Constructors

### constructor

• **new LeadRepository**<`T`\>(`dataSource`, `getCurrentUser`, `tenantRepositoryGetter`, `addressRepositoryGetter`, `lead`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Lead`](Lead.md)<`T`\> = [`Lead`](Lead.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)<[`Tenant`](Tenant.md)\>\> |
| `addressRepositoryGetter` | `Getter`<[`AddressRepository`](AddressRepository.md)<[`Address`](Address.md)\>\> |
| `lead` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  T,
  typeof Lead.prototype.id,
  LeadRelations
\&gt;.constructor

#### Defined in

[services/tenant-management-service/src/repositories/lead.repository.ts:38](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/lead.repository.ts#L38)

## Properties

### address

• `Readonly` **address**: `BelongsToAccessor`<[`Address`](Address.md), `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/lead.repository.ts:33](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/lead.repository.ts#L33)

___

### addressRepositoryGetter

• `Protected` **addressRepositoryGetter**: `Getter`<[`AddressRepository`](AddressRepository.md)<[`Address`](Address.md)\>\>

#### Defined in

[services/tenant-management-service/src/repositories/lead.repository.ts:46](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/lead.repository.ts#L46)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/tenant-management-service/src/repositories/lead.repository.ts:42](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/lead.repository.ts#L42)

___

### lead

• `Private` `Readonly` **lead**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/tenant-management-service/src/repositories/lead.repository.ts:48](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/lead.repository.ts#L48)

___

### tenant

• `Readonly` **tenant**: `HasOneRepositoryFactory`<[`Tenant`](Tenant.md), `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/lead.repository.ts:28](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/lead.repository.ts#L28)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)<[`Tenant`](Tenant.md)\>\>

#### Defined in

[services/tenant-management-service/src/repositories/lead.repository.ts:44](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/lead.repository.ts#L44)
