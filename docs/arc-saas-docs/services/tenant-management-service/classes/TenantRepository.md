[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / TenantRepository

# Class: TenantRepository

## Hierarchy

- `DefaultTransactionalUserModifyRepository`<[`Tenant`](Tenant.md), typeof [`id`](Tenant.md#id), [`TenantRelations`](../interfaces/TenantRelations.md)\>

  ↳ **`TenantRepository`**

## Table of contents

### Constructors

- [constructor](TenantRepository.md#constructor)

### Properties

- [address](TenantRepository.md#address)
- [addressRepositoryGetter](TenantRepository.md#addressrepositorygetter)
- [contactRepositoryGetter](TenantRepository.md#contactrepositorygetter)
- [contacts](TenantRepository.md#contacts)
- [getCurrentUser](TenantRepository.md#getcurrentuser)
- [lead](TenantRepository.md#lead)
- [leadRepositoryGetter](TenantRepository.md#leadrepositorygetter)
- [resourceRepositoryGetter](TenantRepository.md#resourcerepositorygetter)
- [resources](TenantRepository.md#resources)

## Constructors

### constructor

• **new TenantRepository**(`dataSource`, `getCurrentUser`, `contactRepositoryGetter`, `leadRepositoryGetter`, `resourceRepositoryGetter`, `addressRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `contactRepositoryGetter` | `Getter`<[`ContactRepository`](ContactRepository.md)\> |
| `leadRepositoryGetter` | `Getter`<[`LeadRepository`](LeadRepository.md)\> |
| `resourceRepositoryGetter` | `Getter`<[`ResourceRepository`](ResourceRepository.md)<{ `bucket`: `string` ; `path`: `string`  }\>\> |
| `addressRepositoryGetter` | `Getter`<[`AddressRepository`](AddressRepository.md)\> |

#### Overrides

DefaultTransactionalUserModifyRepository&lt;
  Tenant,
  typeof Tenant.prototype.id,
  TenantRelations
\&gt;.constructor

#### Defined in

[services/tenant-management-service/src/repositories/tenant.repository.ts:50](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/tenant.repository.ts#L50)

## Properties

### address

• `Readonly` **address**: `BelongsToAccessor`<[`Address`](Address.md), `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/tenant.repository.ts:45](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/tenant.repository.ts#L45)

___

### addressRepositoryGetter

• `Protected` **addressRepositoryGetter**: `Getter`<[`AddressRepository`](AddressRepository.md)\>

#### Defined in

[services/tenant-management-service/src/repositories/tenant.repository.ts:62](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/tenant.repository.ts#L62)

___

### contactRepositoryGetter

• `Protected` **contactRepositoryGetter**: `Getter`<[`ContactRepository`](ContactRepository.md)\>

#### Defined in

[services/tenant-management-service/src/repositories/tenant.repository.ts:56](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/tenant.repository.ts#L56)

___

### contacts

• `Readonly` **contacts**: `HasManyRepositoryFactory`<[`Contact`](Contact.md), `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/tenant.repository.ts:33](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/tenant.repository.ts#L33)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultTransactionalUserModifyRepository.getCurrentUser

#### Defined in

[services/tenant-management-service/src/repositories/tenant.repository.ts:54](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/tenant.repository.ts#L54)

___

### lead

• `Readonly` **lead**: `BelongsToAccessor`<[`Lead`](Lead.md), `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/tenant.repository.ts:43](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/tenant.repository.ts#L43)

___

### leadRepositoryGetter

• `Protected` **leadRepositoryGetter**: `Getter`<[`LeadRepository`](LeadRepository.md)\>

#### Defined in

[services/tenant-management-service/src/repositories/tenant.repository.ts:58](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/tenant.repository.ts#L58)

___

### resourceRepositoryGetter

• `Protected` **resourceRepositoryGetter**: `Getter`<[`ResourceRepository`](ResourceRepository.md)<{ `bucket`: `string` ; `path`: `string`  }\>\>

#### Defined in

[services/tenant-management-service/src/repositories/tenant.repository.ts:60](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/tenant.repository.ts#L60)

___

### resources

• `Readonly` **resources**: `HasManyRepositoryFactory`<[`Resource`](Resource.md)<{ `bucket`: `string` ; `path`: `string`  }\>, `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/tenant.repository.ts:38](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/tenant.repository.ts#L38)
