[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / Event

# Class: Event

## Hierarchy

- `CoreEntity`<[`Event`](Event.md)\>

  ↳ **`Event`**

## Implements

- [`IEvent`](../interfaces/IEvent.md)

## Table of contents

### Constructors

- [constructor](Event.md#constructor)

### Properties

- [description](Event.md#description)
- [id](Event.md#id)
- [key](Event.md#key)
- [payload](Event.md#payload)
- [source](Event.md#source)
- [timestamp](Event.md#timestamp)

## Constructors

### constructor

• **new Event**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Event`](Event.md)\> |

#### Inherited from

CoreEntity<Event\>.constructor

#### Defined in

packages/core/dist/models/core-entity.d.ts:3

## Properties

### description

• **description**: `string`

#### Defined in

[services/task-service/src/models/event.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/event.model.ts#L29)

___

### id

• **id**: `string`

#### Defined in

[services/task-service/src/models/event.model.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/event.model.ts#L14)

___

### key

• **key**: `string`

#### Implementation of

[IEvent](../interfaces/IEvent.md).[key](../interfaces/IEvent.md#key)

#### Defined in

[services/task-service/src/models/event.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/event.model.ts#L22)

___

### payload

• **payload**: `AnyObject`

#### Implementation of

[IEvent](../interfaces/IEvent.md).[payload](../interfaces/IEvent.md#payload)

#### Defined in

[services/task-service/src/models/event.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/event.model.ts#L44)

___

### source

• **source**: `string`

#### Implementation of

[IEvent](../interfaces/IEvent.md).[source](../interfaces/IEvent.md#source)

#### Defined in

[services/task-service/src/models/event.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/event.model.ts#L36)

___

### timestamp

• **timestamp**: `number`

#### Implementation of

[IEvent](../interfaces/IEvent.md).[timestamp](../interfaces/IEvent.md#timestamp)

#### Defined in

[services/task-service/src/models/event.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/models/event.model.ts#L51)
