[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / AddressRepository

# Class: AddressRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Address`](Address.md) = [`Address`](Address.md) |

## Hierarchy

- `DefaultTransactionalUserModifyRepository`<`T`, typeof [`id`](Address.md#id), {}\>

  ↳ **`AddressRepository`**

## Table of contents

### Constructors

- [constructor](AddressRepository.md#constructor)

### Properties

- [address](AddressRepository.md#address)
- [getCurrentUser](AddressRepository.md#getcurrentuser)
- [tenant](AddressRepository.md#tenant)

## Constructors

### constructor

• **new AddressRepository**<`T`\>(`getCurrentUser`, `dataSource`, `address`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Address`](Address.md)<`T`\> = [`Address`](Address.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `dataSource` | `DataSource` |
| `address` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultTransactionalUserModifyRepository&lt;
  T,
  typeof Address.prototype.id,
  {}
\&gt;.constructor

#### Defined in

[services/tenant-management-service/src/repositories/address.repository.ts:24](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/address.repository.ts#L24)

## Properties

### address

• `Private` `Readonly` **address**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/tenant-management-service/src/repositories/address.repository.ts:30](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/address.repository.ts#L30)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultTransactionalUserModifyRepository.getCurrentUser

#### Defined in

[services/tenant-management-service/src/repositories/address.repository.ts:26](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/address.repository.ts#L26)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `undefined` \| `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/address.repository.ts:19](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/address.repository.ts#L19)
