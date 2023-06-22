[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / Orders

# Class: Orders

## Hierarchy

- `Entity`

  ↳ **`Orders`**

## Indexable

▪ [prop: `string`]: `any`

## Table of contents

### Constructors

- [constructor](Orders.md#constructor)

### Properties

- [currency](Orders.md#currency)
- [id](Orders.md#id)
- [metaData](Orders.md#metadata)
- [paymentGatewayId](Orders.md#paymentgatewayid)
- [paymentmethod](Orders.md#paymentmethod)
- [status](Orders.md#status)
- [totalAmount](Orders.md#totalamount)

## Constructors

### constructor

• **new Orders**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Orders`](Orders.md)\> |

#### Overrides

Entity.constructor

#### Defined in

[models/orders.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/payment-service/src/models/orders.model.ts#L55)

## Properties

### currency

• **currency**: `string`

#### Defined in

[models/orders.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/payment-service/src/models/orders.model.ts#L25)

___

### id

• `Optional` **id**: `string`

#### Defined in

[models/orders.model.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/payment-service/src/models/orders.model.ts#L13)

___

### metaData

• `Optional` **metaData**: `AnyObject`

#### Defined in

[models/orders.model.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/payment-service/src/models/orders.model.ts#L47)

___

### paymentGatewayId

• **paymentGatewayId**: `string`

#### Defined in

[models/orders.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/payment-service/src/models/orders.model.ts#L37)

___

### paymentmethod

• **paymentmethod**: `string`

#### Defined in

[models/orders.model.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/payment-service/src/models/orders.model.ts#L42)

___

### status

• **status**: `string`

#### Defined in

[models/orders.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/payment-service/src/models/orders.model.ts#L31)

___

### totalAmount

• **totalAmount**: `number`

#### Defined in

[models/orders.model.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/payment-service/src/models/orders.model.ts#L19)
