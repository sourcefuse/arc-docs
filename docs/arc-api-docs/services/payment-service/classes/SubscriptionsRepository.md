[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / SubscriptionsRepository

# Class: SubscriptionsRepository

## Hierarchy

- `DefaultCrudRepository`<`Subscriptions`, typeof [`id`](Subscriptions.md#id)\>

  ↳ **`SubscriptionsRepository`**

## Table of contents

### Constructors

- [constructor](SubscriptionsRepository.md#constructor)

### Properties

- [subscriptions](SubscriptionsRepository.md#subscriptions)

## Constructors

### constructor

• **new SubscriptionsRepository**(`dataSource`, `subscriptions`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `subscriptions` | typeof `Entity` & { `prototype`: `Subscriptions`  } |

#### Overrides

DefaultCrudRepository&lt;
  Subscriptions,
  typeof Subscriptions.prototype.id
\&gt;.constructor

#### Defined in

[services/payment-service/src/repositories/subscriptions.repository.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/repositories/subscriptions.repository.ts#L14)

## Properties

### subscriptions

• `Private` `Readonly` **subscriptions**: typeof `Entity` & { `prototype`: `Subscriptions`  }

#### Defined in

[services/payment-service/src/repositories/subscriptions.repository.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/repositories/subscriptions.repository.ts#L18)
