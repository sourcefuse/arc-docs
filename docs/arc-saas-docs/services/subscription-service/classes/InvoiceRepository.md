[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / InvoiceRepository

# Class: InvoiceRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Invoice`](Invoice.md) = [`Invoice`](Invoice.md) |

## Hierarchy

- `DefaultUserModifyCrudRepository`<`T`, typeof [`id`](Invoice.md#id), {}\>

  ↳ **`InvoiceRepository`**

## Table of contents

### Constructors

- [constructor](InvoiceRepository.md#constructor)

### Properties

- [getCurrentUser](InvoiceRepository.md#getcurrentuser)
- [invoice](InvoiceRepository.md#invoice)

## Constructors

### constructor

• **new InvoiceRepository**<`T`\>(`dataSource`, `getCurrentUser`, `invoice`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Invoice`](Invoice.md)<`T`\> = [`Invoice`](Invoice.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `invoice` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultUserModifyCrudRepository&lt;T, typeof Invoice.prototype.id, {}\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/invoice.repository.ts:14](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/invoice.repository.ts#L14)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/invoice.repository.ts:18](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/invoice.repository.ts#L18)

___

### invoice

• `Private` `Readonly` **invoice**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/subscription-service/src/repositories/invoice.repository.ts:20](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/invoice.repository.ts#L20)
