[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / Orders

# Class: Orders

## Hierarchy

- `CoreEntity`<[`Orders`](Orders.md)\>

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

#### Inherited from

CoreEntity<Orders\>.constructor

#### Defined in

packages/core/dist/models/core-entity.d.ts:3

## Properties

### currency

• **currency**: `string`

#### Defined in

[services/payment-service/src/models/orders.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/orders.model.ts#L29)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/payment-service/src/models/orders.model.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/orders.model.ts#L17)

___

### metaData

• `Optional` **metaData**: `AnyObject`

#### Defined in

[services/payment-service/src/models/orders.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/orders.model.ts#L51)

___

### paymentGatewayId

• **paymentGatewayId**: `string`

#### Defined in

[services/payment-service/src/models/orders.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/orders.model.ts#L41)

___

### paymentmethod

• **paymentmethod**: `string`

#### Defined in

[services/payment-service/src/models/orders.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/orders.model.ts#L46)

___

### status

• **status**: `string`

#### Defined in

[services/payment-service/src/models/orders.model.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/orders.model.ts#L35)

___

### totalAmount

• **totalAmount**: `number`

#### Defined in

[services/payment-service/src/models/orders.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/orders.model.ts#L23)
