[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / CurrencyRepository

# Class: CurrencyRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Currency`](Currency.md), typeof [`id`](Currency.md#id), {}\>

  ↳ **`CurrencyRepository`**

## Table of contents

### Constructors

- [constructor](CurrencyRepository.md#constructor)

### Properties

- [getCurrentUser](CurrencyRepository.md#getcurrentuser)

## Constructors

### constructor

• **new CurrencyRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Currency,
  typeof Currency.prototype.id,
  {}
\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/currency.repository.ts:14](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/currency.repository.ts#L14)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/currency.repository.ts:18](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/currency.repository.ts#L18)
