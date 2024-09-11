[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / AddressRepository

# Class: AddressRepository

## Hierarchy

- `DefaultTransactionalUserModifyRepository`<[`Address`](Address.md), typeof [`id`](Address.md#id), {}\>

  ↳ **`AddressRepository`**

## Table of contents

### Constructors

- [constructor](AddressRepository.md#constructor)

### Properties

- [getCurrentUser](AddressRepository.md#getcurrentuser)
- [tenant](AddressRepository.md#tenant)

## Constructors

### constructor

• **new AddressRepository**(`getCurrentUser`, `dataSource`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `dataSource` | `DataSource` |

#### Overrides

DefaultTransactionalUserModifyRepository&lt;
  Address,
  typeof Address.prototype.id,
  {}
\&gt;.constructor

#### Defined in

[services/tenant-management-service/src/repositories/address.repository.ts:22](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/address.repository.ts#L22)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultTransactionalUserModifyRepository.getCurrentUser

#### Defined in

[services/tenant-management-service/src/repositories/address.repository.ts:24](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/address.repository.ts#L24)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `undefined` \| `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/address.repository.ts:17](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/address.repository.ts#L17)
