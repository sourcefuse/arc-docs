[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / EventController

# Class: EventController

## Table of contents

### Constructors

- [constructor](EventController.md#constructor)

### Properties

- [eventRepository](EventController.md#eventrepository)
- [eventWorkflowMapping](EventController.md#eventworkflowmapping)
- [workflowRepository](EventController.md#workflowrepository)

### Methods

- [count](EventController.md#count)
- [find](EventController.md#find)
- [findById](EventController.md#findbyid)
- [mapEventToWorkflow](EventController.md#mapeventtoworkflow)

## Constructors

### constructor

• **new EventController**(`eventWorkflowMapping`, `eventRepository`, `workflowRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `eventWorkflowMapping` | [`EventWorkflowRepository`](EventWorkflowRepository.md) |
| `eventRepository` | [`EventRepository`](EventRepository.md) |
| `workflowRepository` | `WorkflowRepository` |

#### Defined in

[services/task-service/src/controllers/event.controller.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/event.controller.ts#L25)

## Properties

### eventRepository

• `Private` `Readonly` **eventRepository**: [`EventRepository`](EventRepository.md)

#### Defined in

[services/task-service/src/controllers/event.controller.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/event.controller.ts#L29)

___

### eventWorkflowMapping

• `Private` `Readonly` **eventWorkflowMapping**: [`EventWorkflowRepository`](EventWorkflowRepository.md)

#### Defined in

[services/task-service/src/controllers/event.controller.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/event.controller.ts#L27)

___

### workflowRepository

• `Private` `Readonly` **workflowRepository**: `WorkflowRepository`

#### Defined in

[services/task-service/src/controllers/event.controller.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/event.controller.ts#L31)

## Methods

### count

▸ **count**(`where?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `where?` | `Where`<[`Event`](Event.md)\> |

#### Returns

`Promise`<`Count`\>

#### Defined in

[services/task-service/src/controllers/event.controller.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/event.controller.ts#L83)

___

### find

▸ **find**(`filter?`): `Promise`<[`Event`](Event.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `filter?` | `Filter`<[`Event`](Event.md)\> |

#### Returns

`Promise`<[`Event`](Event.md)[]\>

#### Defined in

[services/task-service/src/controllers/event.controller.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/event.controller.ts#L34)

___

### findById

▸ **findById**(`id`, `filter?`): `Promise`<[`Event`](Event.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `filter?` | `FilterExcludingWhere`<[`Event`](Event.md)\> |

#### Returns

`Promise`<[`Event`](Event.md)\>

#### Defined in

[services/task-service/src/controllers/event.controller.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/event.controller.ts#L58)

___

### mapEventToWorkflow

▸ **mapEventToWorkflow**(`eventWorkflowMapping`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `eventWorkflowMapping` | `Omit`<[`EventWorkflow`](EventWorkflow.md), ``"id"``\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/task-service/src/controllers/event.controller.ts:100](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/controllers/event.controller.ts#L100)
