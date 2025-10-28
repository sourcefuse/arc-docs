[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / ContactRepository

# Class: ContactRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Contact`](Contact.md) = [`Contact`](Contact.md) |

## Hierarchy

- `DefaultTransactionalUserModifyRepository`<`T`, typeof [`id`](Contact.md#id), {}\>

  ↳ **`ContactRepository`**

## Table of contents

### Constructors

- [constructor](ContactRepository.md#constructor)

### Properties

- [contact](ContactRepository.md#contact)
- [getCurrentUser](ContactRepository.md#getcurrentuser)
- [tenant](ContactRepository.md#tenant)
- [tenantRepositoryGetter](ContactRepository.md#tenantrepositorygetter)

## Constructors

### constructor

• **new ContactRepository**<`T`\>(`dataSource`, `getCurrentUser`, `tenantRepositoryGetter`, `contact`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Contact`](Contact.md)<`T`\> = [`Contact`](Contact.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)<[`Tenant`](Tenant.md)\>\> |
| `contact` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultTransactionalUserModifyRepository&lt;
  T,
  typeof Contact.prototype.id,
  {}
\&gt;.constructor

#### Defined in

[services/tenant-management-service/src/repositories/contact.repository.ts:30](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/contact.repository.ts#L30)

## Properties

### contact

• `Private` `Readonly` **contact**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/tenant-management-service/src/repositories/contact.repository.ts:38](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/contact.repository.ts#L38)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultTransactionalUserModifyRepository.getCurrentUser

#### Defined in

[services/tenant-management-service/src/repositories/contact.repository.ts:34](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/contact.repository.ts#L34)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `undefined` \| `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/contact.repository.ts:25](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/contact.repository.ts#L25)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)<[`Tenant`](Tenant.md)\>\>

#### Defined in

[services/tenant-management-service/src/repositories/contact.repository.ts:36](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/contact.repository.ts#L36)
