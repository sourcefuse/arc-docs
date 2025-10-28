[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / PaymentGatewaysRepository

# Class: PaymentGatewaysRepository

## Hierarchy

- `DefaultCrudRepository`<`PaymentGateways`, typeof [`id`](PaymentGateways.md#id)\>

  ↳ **`PaymentGatewaysRepository`**

## Table of contents

### Constructors

- [constructor](PaymentGatewaysRepository.md#constructor)

### Properties

- [paymentGateways](PaymentGatewaysRepository.md#paymentgateways)

## Constructors

### constructor

• **new PaymentGatewaysRepository**(`dataSource`, `paymentGateways`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `paymentGateways` | typeof `Entity` & { `prototype`: `PaymentGateways`  } |

#### Overrides

DefaultCrudRepository&lt;
  PaymentGateways,
  typeof PaymentGateways.prototype.id
\&gt;.constructor

#### Defined in

[services/payment-service/src/repositories/payment-gateways.repository.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/repositories/payment-gateways.repository.ts#L16)

## Properties

### paymentGateways

• `Private` `Readonly` **paymentGateways**: typeof `Entity` & { `prototype`: `PaymentGateways`  }

#### Defined in

[services/payment-service/src/repositories/payment-gateways.repository.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/repositories/payment-gateways.repository.ts#L20)
