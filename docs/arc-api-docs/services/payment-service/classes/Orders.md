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

[services/payment-service/src/models/orders.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/orders.model.ts#L26)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/payment-service/src/models/orders.model.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/orders.model.ts#L14)

___

### metaData

• `Optional` **metaData**: `AnyObject`

#### Defined in

[services/payment-service/src/models/orders.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/orders.model.ts#L48)

___

### paymentGatewayId

• **paymentGatewayId**: `string`

#### Defined in

[services/payment-service/src/models/orders.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/orders.model.ts#L38)

___

### paymentmethod

• **paymentmethod**: `string`

#### Defined in

[services/payment-service/src/models/orders.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/orders.model.ts#L43)

___

### status

• **status**: `string`

#### Defined in

[services/payment-service/src/models/orders.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/orders.model.ts#L32)

___

### totalAmount

• **totalAmount**: `number`

#### Defined in

[services/payment-service/src/models/orders.model.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/orders.model.ts#L20)
