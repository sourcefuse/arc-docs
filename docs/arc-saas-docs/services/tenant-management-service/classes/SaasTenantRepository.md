[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / SaasTenantRepository

# Class: SaasTenantRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Tenant`](Tenant.md) = [`Tenant`](Tenant.md) |

## Hierarchy

- `DefaultTransactionalUserModifyRepository`<`T`, typeof [`id`](Tenant.md#id), [`TenantRelations`](../interfaces/TenantRelations.md)\>

  ↳ **`SaasTenantRepository`**

## Table of contents

### Constructors

- [constructor](SaasTenantRepository.md#constructor)

### Properties

- [address](SaasTenantRepository.md#address)
- [addressRepositoryGetter](SaasTenantRepository.md#addressrepositorygetter)
- [contactRepositoryGetter](SaasTenantRepository.md#contactrepositorygetter)
- [contacts](SaasTenantRepository.md#contacts)
- [getCurrentUser](SaasTenantRepository.md#getcurrentuser)
- [lead](SaasTenantRepository.md#lead)
- [leadRepositoryGetter](SaasTenantRepository.md#leadrepositorygetter)
- [resourceRepositoryGetter](SaasTenantRepository.md#resourcerepositorygetter)
- [resources](SaasTenantRepository.md#resources)
- [tenant](SaasTenantRepository.md#tenant)

## Constructors

### constructor

• **new SaasTenantRepository**<`T`\>(`dataSource`, `getCurrentUser`, `contactRepositoryGetter`, `leadRepositoryGetter`, `resourceRepositoryGetter`, `addressRepositoryGetter`, `tenant`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Tenant`](Tenant.md)<`T`\> = [`Tenant`](Tenant.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `contactRepositoryGetter` | `Getter`<[`ContactRepository`](ContactRepository.md)<[`Contact`](Contact.md)\>\> |
| `leadRepositoryGetter` | `Getter`<[`LeadRepository`](LeadRepository.md)<[`Lead`](Lead.md)\>\> |
| `resourceRepositoryGetter` | `Getter`<[`ResourceRepository`](ResourceRepository.md)<{ `bucket`: `string` ; `path`: `string`  }\>\> |
| `addressRepositoryGetter` | `Getter`<[`AddressRepository`](AddressRepository.md)<[`Address`](Address.md)\>\> |
| `tenant` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultTransactionalUserModifyRepository&lt;
  T,
  typeof Tenant.prototype.id,
  TenantRelations
\&gt;.constructor

#### Defined in

[services/tenant-management-service/src/repositories/saas-tenant.repository.ts:53](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/saas-tenant.repository.ts#L53)

## Properties

### address

• `Readonly` **address**: `BelongsToAccessor`<[`Address`](Address.md), `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/saas-tenant.repository.ts:48](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/saas-tenant.repository.ts#L48)

___

### addressRepositoryGetter

• `Protected` **addressRepositoryGetter**: `Getter`<[`AddressRepository`](AddressRepository.md)<[`Address`](Address.md)\>\>

#### Defined in

[services/tenant-management-service/src/repositories/saas-tenant.repository.ts:65](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/saas-tenant.repository.ts#L65)

___

### contactRepositoryGetter

• `Protected` **contactRepositoryGetter**: `Getter`<[`ContactRepository`](ContactRepository.md)<[`Contact`](Contact.md)\>\>

#### Defined in

[services/tenant-management-service/src/repositories/saas-tenant.repository.ts:59](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/saas-tenant.repository.ts#L59)

___

### contacts

• `Readonly` **contacts**: `HasManyRepositoryFactory`<[`Contact`](Contact.md), `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/saas-tenant.repository.ts:36](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/saas-tenant.repository.ts#L36)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultTransactionalUserModifyRepository.getCurrentUser

#### Defined in

[services/tenant-management-service/src/repositories/saas-tenant.repository.ts:57](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/saas-tenant.repository.ts#L57)

___

### lead

• `Readonly` **lead**: `BelongsToAccessor`<[`Lead`](Lead.md), `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/saas-tenant.repository.ts:46](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/saas-tenant.repository.ts#L46)

___

### leadRepositoryGetter

• `Protected` **leadRepositoryGetter**: `Getter`<[`LeadRepository`](LeadRepository.md)<[`Lead`](Lead.md)\>\>

#### Defined in

[services/tenant-management-service/src/repositories/saas-tenant.repository.ts:61](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/saas-tenant.repository.ts#L61)

___

### resourceRepositoryGetter

• `Protected` **resourceRepositoryGetter**: `Getter`<[`ResourceRepository`](ResourceRepository.md)<{ `bucket`: `string` ; `path`: `string`  }\>\>

#### Defined in

[services/tenant-management-service/src/repositories/saas-tenant.repository.ts:63](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/saas-tenant.repository.ts#L63)

___

### resources

• `Readonly` **resources**: `HasManyRepositoryFactory`<[`Resource`](Resource.md)<{ `bucket`: `string` ; `path`: `string`  }\>, `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/saas-tenant.repository.ts:41](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/saas-tenant.repository.ts#L41)

___

### tenant

• `Private` `Readonly` **tenant**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/tenant-management-service/src/repositories/saas-tenant.repository.ts:67](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/saas-tenant.repository.ts#L67)
