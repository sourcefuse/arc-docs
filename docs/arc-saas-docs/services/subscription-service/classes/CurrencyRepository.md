[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / CurrencyRepository

# Class: CurrencyRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Currency`](Currency.md) = [`Currency`](Currency.md) |

## Hierarchy

- `DefaultUserModifyCrudRepository`<`T`, typeof [`id`](Currency.md#id), {}\>

  ↳ **`CurrencyRepository`**

## Table of contents

### Constructors

- [constructor](CurrencyRepository.md#constructor)

### Properties

- [currency](CurrencyRepository.md#currency)
- [getCurrentUser](CurrencyRepository.md#getcurrentuser)

## Constructors

### constructor

• **new CurrencyRepository**<`T`\>(`dataSource`, `getCurrentUser`, `currency`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Currency`](Currency.md)<`T`\> = [`Currency`](Currency.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`\>\> |
| `currency` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultUserModifyCrudRepository&lt;T, typeof Currency.prototype.id, {}\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/currency.repository.ts:12](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/currency.repository.ts#L12)

## Properties

### currency

• `Private` `Readonly` **currency**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/subscription-service/src/repositories/currency.repository.ts:18](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/currency.repository.ts#L18)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/currency.repository.ts:16](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/currency.repository.ts#L16)
