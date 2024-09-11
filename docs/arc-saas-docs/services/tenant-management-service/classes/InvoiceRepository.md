[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / InvoiceRepository

# Class: InvoiceRepository

## Hierarchy

- `DefaultTransactionalUserModifyRepository`<[`Invoice`](Invoice.md), typeof [`id`](Invoice.md#id), [`InvoiceRelations`](../interfaces/InvoiceRelations.md)\>

  ↳ **`InvoiceRepository`**

## Table of contents

### Constructors

- [constructor](InvoiceRepository.md#constructor)

### Properties

- [getCurrentUser](InvoiceRepository.md#getcurrentuser)
- [tenant](InvoiceRepository.md#tenant)
- [tenantRepositoryGetter](InvoiceRepository.md#tenantrepositorygetter)

## Constructors

### constructor

• **new InvoiceRepository**(`dataSource`, `getCurrentUser`, `tenantRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)\> |

#### Overrides

DefaultTransactionalUserModifyRepository&lt;
  Invoice,
  typeof Invoice.prototype.id,
  InvoiceRelations
\&gt;.constructor

#### Defined in

[services/tenant-management-service/src/repositories/invoice.repository.ts:23](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/invoice.repository.ts#L23)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultTransactionalUserModifyRepository.getCurrentUser

#### Defined in

[services/tenant-management-service/src/repositories/invoice.repository.ts:27](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/invoice.repository.ts#L27)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/invoice.repository.ts:18](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/invoice.repository.ts#L18)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/tenant-management-service/src/repositories/invoice.repository.ts:29](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/invoice.repository.ts#L29)
