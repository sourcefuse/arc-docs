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

[services/task-service/src/services/camunda.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/camunda.service.ts#L19)

## Properties

### baseUrl

• **baseUrl**: `undefined` \| `string` = `''`

#### Defined in

[services/task-service/src/services/camunda.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/camunda.service.ts#L18)

___

### config

• `Private` `Readonly` **config**: `IWorkflowServiceConfig`

#### Defined in

[services/task-service/src/services/camunda.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/camunda.service.ts#L23)

___

### http

• `Private` `Readonly` **http**: [`HttpClientService`](HttpClientService.md)

#### Defined in

[services/task-service/src/services/camunda.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/camunda.service.ts#L21)

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

[services/task-service/src/services/camunda.service.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/camunda.service.ts#L28)

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

[services/task-service/src/services/camunda.service.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/camunda.service.ts#L40)

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

[services/task-service/src/services/camunda.service.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/camunda.service.ts#L50)

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

[services/task-service/src/services/camunda.service.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/camunda.service.ts#L62)

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

[services/task-service/src/services/camunda.service.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/camunda.service.ts#L70)

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

[services/task-service/src/services/camunda.service.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/camunda.service.ts#L76)

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

[services/task-service/src/services/camunda.service.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/camunda.service.ts#L66)

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

[services/task-service/src/services/camunda.service.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/camunda.service.ts#L34)
