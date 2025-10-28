[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / Transactions

# Class: Transactions

## Hierarchy

- `CoreEntity`<[`Transactions`](Transactions.md)\>

  ↳ **`Transactions`**

## Indexable

▪ [prop: `string`]: `any`

## Table of contents

### Constructors

- [constructor](Transactions.md#constructor)

### Properties

- [amountPaid](Transactions.md#amountpaid)
- [currency](Transactions.md#currency)
- [id](Transactions.md#id)
- [orderId](Transactions.md#orderid)
- [paidDate](Transactions.md#paiddate)
- [paymentGatewayId](Transactions.md#paymentgatewayid)
- [res](Transactions.md#res)
- [status](Transactions.md#status)

## Constructors

### constructor

• **new Transactions**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Transactions`](Transactions.md)\> |

#### Inherited from

CoreEntity<Transactions\>.constructor

#### Defined in

packages/core/dist/models/core-entity.d.ts:3

## Properties

### amountPaid

• **amountPaid**: `number`

#### Defined in

[services/payment-service/src/models/transactions.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/transactions.model.ts#L26)

___

### currency

• **currency**: `string`

#### Defined in

[services/payment-service/src/models/transactions.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/transactions.model.ts#L32)

___

### id

• **id**: `string`

#### Defined in

[services/payment-service/src/models/transactions.model.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/transactions.model.ts#L19)

___

### orderId

• `Optional` **orderId**: `string`

#### Defined in

[services/payment-service/src/models/transactions.model.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/transactions.model.ts#L56)

___

### paidDate

• `Optional` **paidDate**: `Date`

#### Defined in

[services/payment-service/src/models/transactions.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/transactions.model.ts#L44)

___

### paymentGatewayId

• `Optional` **paymentGatewayId**: `string`

#### Defined in

[services/payment-service/src/models/transactions.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/transactions.model.ts#L50)

___

### res

• **res**: `any`

#### Defined in

[services/payment-service/src/models/transactions.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/transactions.model.ts#L62)

___

### status

• **status**: `string`

#### Defined in

[services/payment-service/src/models/transactions.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/transactions.model.ts#L38)
