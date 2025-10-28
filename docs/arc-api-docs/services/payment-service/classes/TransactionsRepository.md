[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / TransactionsRepository

# Class: TransactionsRepository

## Hierarchy

- `DefaultCrudRepository`<`Transactions`, typeof [`id`](Transactions.md#id)\>

  ↳ **`TransactionsRepository`**

## Table of contents

### Constructors

- [constructor](TransactionsRepository.md#constructor)

### Properties

- [transactions](TransactionsRepository.md#transactions)

## Constructors

### constructor

• **new TransactionsRepository**(`dataSource`, `transactions`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `transactions` | typeof `Entity` & { `prototype`: `Transactions`  } |

#### Overrides

DefaultCrudRepository&lt;
  Transactions,
  typeof Transactions.prototype.id
\&gt;.constructor

#### Defined in

[services/payment-service/src/repositories/transactions.repository.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/repositories/transactions.repository.ts#L14)

## Properties

### transactions

• `Private` `Readonly` **transactions**: typeof `Entity` & { `prototype`: `Transactions`  }

#### Defined in

[services/payment-service/src/repositories/transactions.repository.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/repositories/transactions.repository.ts#L18)
