[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / CamundaService

# Class: CamundaService

## Table of contents

### Constructors

- [constructor](CamundaService.md#constructor)

### Properties

- [baseUrl](CamundaService.md#baseurl)
- [config](CamundaService.md#config)
- [http](CamundaService.md#http)

### Methods

- [completeUserTask](CamundaService.md#completeusertask)
- [create](CamundaService.md#create)
- [delete](CamundaService.md#delete)
- [deleteProcessInstances](CamundaService.md#deleteprocessinstances)
- [deleteVersion](CamundaService.md#deleteversion)
- [execute](CamundaService.md#execute)
- [formatInput](CamundaService.md#formatinput)
- [get](CamundaService.md#get)
- [getPendingUserTasks](CamundaService.md#getpendingusertasks)

## Constructors

### constructor

• **new CamundaService**(`http`, `config`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `http` | [`HttpClientService`](HttpClientService.md) |
| `config` | `IWorkflowServiceConfig` |

#### Defined in

[services/task-service/src/services/camunda.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/services/camunda.service.ts#L18)

## Properties

### baseUrl

• **baseUrl**: `undefined` \| `string` = `''`

#### Defined in

[services/task-service/src/services/camunda.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/services/camunda.service.ts#L17)

___

### config

• `Private` `Readonly` **config**: `IWorkflowServiceConfig`

#### Defined in

[services/task-service/src/services/camunda.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/services/camunda.service.ts#L22)

___

### http

• `Private` `Readonly` **http**: [`HttpClientService`](HttpClientService.md)

#### Defined in

[services/task-service/src/services/camunda.service.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/services/camunda.service.ts#L20)

## Methods

### completeUserTask

▸ **completeUserTask**(`id`, `variables?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `variables?` | `AnyObject` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/task-service/src/services/camunda.service.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/services/camunda.service.ts#L27)

___

### create

▸ **create**<`T`\>(`name`, `file`): `Promise`<`T`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `name` | `string` |
| `file` | `Buffer` |

#### Returns

`Promise`<`T`\>

#### Defined in

[services/task-service/src/services/camunda.service.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/services/camunda.service.ts#L54)

___

### delete

▸ **delete**(`ids`): `Promise`<`unknown`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `ids` | `string`[] |

#### Returns

`Promise`<`unknown`[]\>

#### Defined in

[services/task-service/src/services/camunda.service.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/services/camunda.service.ts#L64)

___

### deleteProcessInstances

▸ **deleteProcessInstances**(`ids`): `Promise`<`undefined` \| `unknown`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `ids` | (`undefined` \| `string`)[] |

#### Returns

`Promise`<`undefined` \| `unknown`[]\>

#### Defined in

[services/task-service/src/services/camunda.service.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/services/camunda.service.ts#L39)

___

### deleteVersion

▸ **deleteVersion**(`id`): `Promise`<`unknown`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |

#### Returns

`Promise`<`unknown`\>

#### Defined in

[services/task-service/src/services/camunda.service.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/services/camunda.service.ts#L76)

___

### execute

▸ **execute**<`T`\>(`id`, `input`): `Promise`<`T`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `input` | `AnyObject` |

#### Returns

`Promise`<`T`\>

#### Defined in

[services/task-service/src/services/camunda.service.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/services/camunda.service.ts#L84)

___

### formatInput

▸ `Private` **formatInput**(`input`): `AnyObject`

#### Parameters

| Name | Type |
| :------ | :------ |
| `input` | `AnyObject` |

#### Returns

`AnyObject`

#### Defined in

[services/task-service/src/services/camunda.service.ts:90](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/services/camunda.service.ts#L90)

___

### get

▸ **get**<`T`\>(`id`): `Promise`<`T`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |

#### Returns

`Promise`<`T`\>

#### Defined in

[services/task-service/src/services/camunda.service.ts:80](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/services/camunda.service.ts#L80)

___

### getPendingUserTasks

▸ **getPendingUserTasks**(`processDefinitionId`): `Promise`<[`CamundaTask`](../interfaces/CamundaTask.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `processDefinitionId` | `string` |

#### Returns

`Promise`<[`CamundaTask`](../interfaces/CamundaTask.md)[]\>

#### Defined in

[services/task-service/src/services/camunda.service.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/services/camunda.service.ts#L33)
