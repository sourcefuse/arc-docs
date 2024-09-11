[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / ContactRepository

# Class: ContactRepository

## Hierarchy

- `DefaultTransactionalUserModifyRepository`<[`Contact`](Contact.md), typeof [`id`](Contact.md#id), {}\>

  ↳ **`ContactRepository`**

## Table of contents

### Constructors

- [constructor](ContactRepository.md#constructor)

### Properties

- [getCurrentUser](ContactRepository.md#getcurrentuser)
- [tenant](ContactRepository.md#tenant)
- [tenantRepositoryGetter](ContactRepository.md#tenantrepositorygetter)

## Constructors

### constructor

• **new ContactRepository**(`dataSource`, `getCurrentUser`, `tenantRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)\> |

#### Overrides

DefaultTransactionalUserModifyRepository&lt;
  Contact,
  typeof Contact.prototype.id,
  {}
\&gt;.constructor

#### Defined in

[services/tenant-management-service/src/repositories/contact.repository.ts:23](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/contact.repository.ts#L23)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultTransactionalUserModifyRepository.getCurrentUser

#### Defined in

[services/tenant-management-service/src/repositories/contact.repository.ts:27](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/contact.repository.ts#L27)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `undefined` \| `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/contact.repository.ts:18](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/contact.repository.ts#L18)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/tenant-management-service/src/repositories/contact.repository.ts:29](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/contact.repository.ts#L29)
