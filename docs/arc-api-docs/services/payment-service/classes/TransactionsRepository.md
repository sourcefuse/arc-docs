[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / TransactionsRepository

# Class: TransactionsRepository

## Hierarchy

- `DefaultCrudRepository`<[`Transactions`](Transactions.md), typeof [`id`](Transactions.md#id)\>

  ↳ **`TransactionsRepository`**

## Table of contents

### Constructors

- [constructor](TransactionsRepository.md#constructor)

## Constructors

### constructor

• **new TransactionsRepository**(`dataSource`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |

#### Overrides

DefaultCrudRepository&lt;
  Transactions,
  typeof Transactions.prototype.id
\&gt;.constructor

#### Defined in

[repositories/transactions.repository.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/payment-service/src/repositories/transactions.repository.ts#L14)
