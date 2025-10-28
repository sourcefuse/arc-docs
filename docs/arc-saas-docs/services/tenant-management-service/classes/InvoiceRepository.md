[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / InvoiceRepository

# Class: InvoiceRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Invoice`](Invoice.md) = [`Invoice`](Invoice.md) |

## Hierarchy

- `DefaultTransactionalUserModifyRepository`<`T`, typeof [`id`](Invoice.md#id), [`InvoiceRelations`](../interfaces/InvoiceRelations.md)\>

  ↳ **`InvoiceRepository`**

## Table of contents

### Constructors

- [constructor](InvoiceRepository.md#constructor)

### Properties

- [getCurrentUser](InvoiceRepository.md#getcurrentuser)
- [invoice](InvoiceRepository.md#invoice)
- [tenant](InvoiceRepository.md#tenant)
- [tenantRepositoryGetter](InvoiceRepository.md#tenantrepositorygetter)

## Constructors

### constructor

• **new InvoiceRepository**<`T`\>(`dataSource`, `getCurrentUser`, `tenantRepositoryGetter`, `invoice`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Invoice`](Invoice.md)<`T`\> = [`Invoice`](Invoice.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)<[`Tenant`](Tenant.md)\>\> |
| `invoice` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultTransactionalUserModifyRepository&lt;
  T,
  typeof Invoice.prototype.id,
  InvoiceRelations
\&gt;.constructor

#### Defined in

[services/tenant-management-service/src/repositories/invoice.repository.ts:30](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/invoice.repository.ts#L30)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultTransactionalUserModifyRepository.getCurrentUser

#### Defined in

[services/tenant-management-service/src/repositories/invoice.repository.ts:34](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/invoice.repository.ts#L34)

___

### invoice

• `Private` `Readonly` **invoice**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/tenant-management-service/src/repositories/invoice.repository.ts:38](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/invoice.repository.ts#L38)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/invoice.repository.ts:25](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/invoice.repository.ts#L25)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)<[`Tenant`](Tenant.md)\>\>

#### Defined in

[services/tenant-management-service/src/repositories/invoice.repository.ts:36](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/invoice.repository.ts#L36)
