[@sourceloop/bpmn-service](../README.md) / [Exports](../modules.md) / WorkflowController

# Class: WorkflowController

## Table of contents

### Constructors

- [constructor](WorkflowController.md#constructor)

### Properties

- [execInputValidator](WorkflowController.md#execinputvalidator)
- [workerFn](WorkflowController.md#workerfn)
- [workerMapGetter](WorkflowController.md#workermapgetter)
- [workflowManagerService](WorkflowController.md#workflowmanagerservice)
- [workflowRepository](WorkflowController.md#workflowrepository)
- [workflowVersionRepository](WorkflowController.md#workflowversionrepository)

### Methods

- [count](WorkflowController.md#count)
- [create](WorkflowController.md#create)
- [deleteById](WorkflowController.md#deletebyid)
- [deleteVersionById](WorkflowController.md#deleteversionbyid)
- [find](WorkflowController.md#find)
- [initWorkers](WorkflowController.md#initworkers)
- [startWorkflow](WorkflowController.md#startworkflow)
- [updateById](WorkflowController.md#updatebyid)

## Constructors

### constructor

• **new WorkflowController**(`workflowRepository`, `workflowVersionRepository`, `workflowManagerService`, `execInputValidator`, `workerMapGetter`, `workerFn`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `workflowRepository` | [`WorkflowRepository`](WorkflowRepository.md) |
| `workflowVersionRepository` | [`WorkflowVersionRepository`](WorkflowVersionRepository.md) |
| `workflowManagerService` | [`WorflowManager`](../interfaces/WorflowManager.md)<`AnyObject`, `AnyObject`\> |
| `execInputValidator` | [`ExecutionInputValidator`](../modules.md#executioninputvalidator)<`AnyObject`\> |
| `workerMapGetter` | `Getter`<[`WorkerMap`](../modules.md#workermap)<`AnyObject`, `AnyObject`\>\> |
| `workerFn` | [`WorkerImplementationFn`](../modules.md#workerimplementationfn)<`AnyObject`, `AnyObject`\> |

#### Defined in

[services/bpmn-service/src/controllers/workflow.controller.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/controllers/workflow.controller.ts#L42)

## Properties

### execInputValidator

• `Private` `Readonly` **execInputValidator**: [`ExecutionInputValidator`](../modules.md#executioninputvalidator)<`AnyObject`\>

#### Defined in

[services/bpmn-service/src/controllers/workflow.controller.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/controllers/workflow.controller.ts#L50)

___

### workerFn

• `Private` `Readonly` **workerFn**: [`WorkerImplementationFn`](../modules.md#workerimplementationfn)<`AnyObject`, `AnyObject`\>

#### Defined in

[services/bpmn-service/src/controllers/workflow.controller.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/controllers/workflow.controller.ts#L54)

___

### workerMapGetter

• `Private` `Readonly` **workerMapGetter**: `Getter`<[`WorkerMap`](../modules.md#workermap)<`AnyObject`, `AnyObject`\>\>

#### Defined in

[services/bpmn-service/src/controllers/workflow.controller.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/controllers/workflow.controller.ts#L52)

___

### workflowManagerService

• `Private` `Readonly` **workflowManagerService**: [`WorflowManager`](../interfaces/WorflowManager.md)<`AnyObject`, `AnyObject`\>

#### Defined in

[services/bpmn-service/src/controllers/workflow.controller.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/controllers/workflow.controller.ts#L48)

___

### workflowRepository

• **workflowRepository**: [`WorkflowRepository`](WorkflowRepository.md)

#### Defined in

[services/bpmn-service/src/controllers/workflow.controller.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/controllers/workflow.controller.ts#L44)

___

### workflowVersionRepository

• **workflowVersionRepository**: [`WorkflowVersionRepository`](WorkflowVersionRepository.md)

#### Defined in

[services/bpmn-service/src/controllers/workflow.controller.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/controllers/workflow.controller.ts#L46)

## Methods

### count

▸ **count**(`id`): `Promise`<[`Workflow`](Workflow.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |

#### Returns

`Promise`<[`Workflow`](Workflow.md)\>

#### Defined in

[services/bpmn-service/src/controllers/workflow.controller.ts:253](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/controllers/workflow.controller.ts#L253)

___

### create

▸ **create**(`workflowDto`): `Promise`<[`Workflow`](Workflow.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `workflowDto` | [`WorkflowDto`](WorkflowDto.md) |

#### Returns

`Promise`<[`Workflow`](Workflow.md)\>

#### Defined in

[services/bpmn-service/src/controllers/workflow.controller.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/controllers/workflow.controller.ts#L57)

___

### deleteById

▸ **deleteById**(`id`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/bpmn-service/src/controllers/workflow.controller.ts:270](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/controllers/workflow.controller.ts#L270)

___

### deleteVersionById

▸ **deleteVersionById**(`id`, `versionNumber`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `versionNumber` | `number` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/bpmn-service/src/controllers/workflow.controller.ts:296](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/controllers/workflow.controller.ts#L296)

___

### find

▸ **find**(`filter?`): `Promise`<[`Workflow`](Workflow.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `filter?` | `Filter`<[`Workflow`](Workflow.md)\> |

#### Returns

`Promise`<[`Workflow`](Workflow.md)[]\>

#### Defined in

[services/bpmn-service/src/controllers/workflow.controller.ts:227](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/controllers/workflow.controller.ts#L227)

___

### initWorkers

▸ `Private` **initWorkers**(`workflowName`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `workflowName` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/bpmn-service/src/controllers/workflow.controller.ts:341](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/controllers/workflow.controller.ts#L341)

___

### startWorkflow

▸ **startWorkflow**(`id`, `instance`): `Promise`<`AnyObject`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `instance` | [`ExecuteWorkflowDto`](ExecuteWorkflowDto.md)<`AnyObject`\> |

#### Returns

`Promise`<`AnyObject`\>

#### Defined in

[services/bpmn-service/src/controllers/workflow.controller.ts:168](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/controllers/workflow.controller.ts#L168)

___

### updateById

▸ **updateById**(`workflowDto`, `id`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `workflowDto` | [`WorkflowDto`](WorkflowDto.md) |
| `id` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/bpmn-service/src/controllers/workflow.controller.ts:117](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/controllers/workflow.controller.ts#L117)
