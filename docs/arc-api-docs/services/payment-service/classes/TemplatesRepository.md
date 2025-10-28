[@sourceloop/payment-service](../README.md) / [Exports](../modules.md) / TemplatesRepository

# Class: TemplatesRepository

## Hierarchy

- `DefaultCrudRepository`<`Templates`, typeof [`id`](Templates.md#id)\>

  ↳ **`TemplatesRepository`**

## Table of contents

### Constructors

- [constructor](TemplatesRepository.md#constructor)

### Properties

- [templates](TemplatesRepository.md#templates)

## Constructors

### constructor

• **new TemplatesRepository**(`dataSource`, `templates`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `templates` | typeof `Entity` & { `prototype`: `Templates`  } |

#### Overrides

DefaultCrudRepository&lt;
  Templates,
  typeof Templates.prototype.id
\&gt;.constructor

#### Defined in

[services/payment-service/src/repositories/templates.repository.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/repositories/templates.repository.ts#L14)

## Properties

### templates

• `Private` `Readonly` **templates**: typeof `Entity` & { `prototype`: `Templates`  }

#### Defined in

[services/payment-service/src/repositories/templates.repository.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/payment-service/src/repositories/templates.repository.ts#L18)
