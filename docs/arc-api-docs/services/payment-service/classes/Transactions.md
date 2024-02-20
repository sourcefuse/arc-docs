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

[services/payment-service/src/models/transactions.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/transactions.model.ts#L23)

___

### currency

• **currency**: `string`

#### Defined in

[services/payment-service/src/models/transactions.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/transactions.model.ts#L29)

___

### id

• **id**: `string`

#### Defined in

[services/payment-service/src/models/transactions.model.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/transactions.model.ts#L16)

___

### orderId

• `Optional` **orderId**: `string`

#### Defined in

[services/payment-service/src/models/transactions.model.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/transactions.model.ts#L53)

___

### paidDate

• `Optional` **paidDate**: `Date`

#### Defined in

[services/payment-service/src/models/transactions.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/transactions.model.ts#L41)

___

### paymentGatewayId

• `Optional` **paymentGatewayId**: `string`

#### Defined in

[services/payment-service/src/models/transactions.model.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/transactions.model.ts#L47)

___

### res

• **res**: `any`

#### Defined in

[services/payment-service/src/models/transactions.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/transactions.model.ts#L59)

___

### status

• **status**: `string`

#### Defined in

[services/payment-service/src/models/transactions.model.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/transactions.model.ts#L35)
