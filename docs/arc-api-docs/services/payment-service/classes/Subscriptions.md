[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / Subscriptions

# Class: Subscriptions

## Hierarchy

- `CoreEntity`<[`Subscriptions`](Subscriptions.md)\>

  ↳ **`Subscriptions`**

## Indexable

▪ [prop: `string`]: `any`

## Table of contents

### Constructors

- [constructor](Subscriptions.md#constructor)

### Properties

- [currency](Subscriptions.md#currency)
- [endDate](Subscriptions.md#enddate)
- [gatewaySubscriptionId](Subscriptions.md#gatewaysubscriptionid)
- [id](Subscriptions.md#id)
- [metaData](Subscriptions.md#metadata)
- [paymentGatewayId](Subscriptions.md#paymentgatewayid)
- [paymentMethod](Subscriptions.md#paymentmethod)
- [planId](Subscriptions.md#planid)
- [startDate](Subscriptions.md#startdate)
- [status](Subscriptions.md#status)
- [totalAmount](Subscriptions.md#totalamount)

## Constructors

### constructor

• **new Subscriptions**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Subscriptions`](Subscriptions.md)\> |

#### Inherited from

CoreEntity<Subscriptions\>.constructor

#### Defined in

packages/core/dist/models/core-entity.d.ts:3

## Properties

### currency

• `Optional` **currency**: `string`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/subscriptions.model.ts#L31)

___

### endDate

• `Optional` **endDate**: `Date`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/subscriptions.model.ts#L66)

___

### gatewaySubscriptionId

• `Optional` **gatewaySubscriptionId**: `string`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/subscriptions.model.ts#L72)

___

### id

• **id**: `string`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/subscriptions.model.ts#L19)

___

### metaData

• `Optional` **metaData**: `Object`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/subscriptions.model.ts#L54)

___

### paymentGatewayId

• `Optional` **paymentGatewayId**: `string`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/subscriptions.model.ts#L43)

___

### paymentMethod

• `Optional` **paymentMethod**: `string`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/subscriptions.model.ts#L49)

___

### planId

• `Optional` **planId**: `string`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/subscriptions.model.ts#L78)

___

### startDate

• `Optional` **startDate**: `Date`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/subscriptions.model.ts#L60)

___

### status

• **status**: `string`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/subscriptions.model.ts#L37)

___

### totalAmount

• **totalAmount**: `number`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/models/subscriptions.model.ts#L26)
