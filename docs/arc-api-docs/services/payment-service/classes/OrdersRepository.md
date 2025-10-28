[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / OrdersRepository

# Class: OrdersRepository

## Hierarchy

- `DefaultCrudRepository`<`Orders`, typeof [`id`](Orders.md#id)\>

  ↳ **`OrdersRepository`**

## Table of contents

### Constructors

- [constructor](OrdersRepository.md#constructor)

### Properties

- [orders](OrdersRepository.md#orders)

## Constructors

### constructor

• **new OrdersRepository**(`dataSource`, `orders`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `orders` | typeof `Entity` & { `prototype`: `Orders`  } |

#### Overrides

DefaultCrudRepository&lt;
  Orders,
  typeof Orders.prototype.id
\&gt;.constructor

#### Defined in

[services/payment-service/src/repositories/orders.repository.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/repositories/orders.repository.ts#L16)

## Properties

### orders

• `Private` `Readonly` **orders**: typeof `Entity` & { `prototype`: `Orders`  }

#### Defined in

[services/payment-service/src/repositories/orders.repository.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/repositories/orders.repository.ts#L20)
