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

[services/payment-service/src/models/subscriptions.model.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/subscriptions.model.ts#L28)

___

### endDate

• `Optional` **endDate**: `Date`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/subscriptions.model.ts#L63)

___

### gatewaySubscriptionId

• `Optional` **gatewaySubscriptionId**: `string`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/subscriptions.model.ts#L69)

___

### id

• **id**: `string`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/subscriptions.model.ts#L16)

___

### metaData

• `Optional` **metaData**: `Object`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/subscriptions.model.ts#L51)

___

### paymentGatewayId

• `Optional` **paymentGatewayId**: `string`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/subscriptions.model.ts#L40)

___

### paymentMethod

• `Optional` **paymentMethod**: `string`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/subscriptions.model.ts#L46)

___

### planId

• `Optional` **planId**: `string`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/subscriptions.model.ts#L75)

___

### startDate

• `Optional` **startDate**: `Date`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/subscriptions.model.ts#L57)

___

### status

• **status**: `string`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/subscriptions.model.ts#L34)

___

### totalAmount

• **totalAmount**: `number`

#### Defined in

[services/payment-service/src/models/subscriptions.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/payment-service/src/models/subscriptions.model.ts#L23)
