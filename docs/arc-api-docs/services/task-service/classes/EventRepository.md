[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / EventRepository

# Class: EventRepository

## Hierarchy

- `DefaultCrudRepository`<[`Event`](Event.md), typeof [`id`](Event.md#id)\>

  ↳ **`EventRepository`**

## Table of contents

### Constructors

- [constructor](EventRepository.md#constructor)

### Properties

- [event](EventRepository.md#event)

## Constructors

### constructor

• **new EventRepository**(`dataSource`, `event`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `event` | typeof `Entity` & { `prototype`: [`Event`](Event.md)  } |

#### Overrides

DefaultCrudRepository&lt;
  Event,
  typeof Event.prototype.id
\&gt;.constructor

#### Defined in

[services/task-service/src/repositories/event.repository.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/repositories/event.repository.ts#L9)

## Properties

### event

• `Private` `Readonly` **event**: typeof `Entity` & { `prototype`: [`Event`](Event.md)  }

#### Defined in

[services/task-service/src/repositories/event.repository.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/repositories/event.repository.ts#L13)
