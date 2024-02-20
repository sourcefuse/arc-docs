[@sourceloop/bpmn-service](README.md) / Exports

# @sourceloop/bpmn-service

## Table of contents

### Namespaces

- [WorkflowServiceBindings](modules/WorkflowServiceBindings.md)

### Enumerations

- [ErrorKeys](enums/ErrorKeys.md)
- [PermissionKey](enums/PermissionKey.md)

### Classes

- [BPMTask](classes/BPMTask.md)
- [ExecuteWorkflowDto](classes/ExecuteWorkflowDto.md)
- [Workflow](classes/Workflow.md)
- [WorkflowController](classes/WorkflowController.md)
- [WorkflowDto](classes/WorkflowDto.md)
- [WorkflowProvider](classes/WorkflowProvider.md)
- [WorkflowRepository](classes/WorkflowRepository.md)
- [WorkflowServiceComponent](classes/WorkflowServiceComponent.md)
- [WorkflowVersion](classes/WorkflowVersion.md)
- [WorkflowVersionRepository](classes/WorkflowVersionRepository.md)

### Interfaces

- [CaseDefinition](interfaces/CaseDefinition.md)
- [DecisionDefinition](interfaces/DecisionDefinition.md)
- [DecisionRequirementDefinition](interfaces/DecisionRequirementDefinition.md)
- [DeploymentWithDefinitions](interfaces/DeploymentWithDefinitions.md)
- [IBPMTask](interfaces/IBPMTask.md)
- [ICommand](interfaces/ICommand.md)
- [IWorkflowServiceConfig](interfaces/IWorkflowServiceConfig.md)
- [ProcessDefinition](interfaces/ProcessDefinition.md)
- [ProcessInstance](interfaces/ProcessInstance.md)
- [Variable](interfaces/Variable.md)
- [WorflowManager](interfaces/WorflowManager.md)
- [WorkflowRelations](interfaces/WorkflowRelations.md)
- [WorkflowVersionRelations](interfaces/WorkflowVersionRelations.md)

### Type Aliases

- [DeployedCaseDefinitions](modules.md#deployedcasedefinitions)
- [DeployedDecisionDefinitions](modules.md#deployeddecisiondefinitions)
- [DeployedDecisionRequirementDefinitions](modules.md#deployeddecisionrequirementdefinitions)
- [DeployedProcessDefinitions](modules.md#deployedprocessdefinitions)
- [ExecutionInputValidator](modules.md#executioninputvalidator)
- [Link](modules.md#link)
- [SuccessResponse](modules.md#successresponse)
- [WorkerImplementationFn](modules.md#workerimplementationfn)
- [WorkerMap](modules.md#workermap)
- [WorkerNameCmdPair](modules.md#workernamecmdpair)
- [WorkerRegisterFn](modules.md#workerregisterfn)
- [WorkflowVersionWithRelations](modules.md#workflowversionwithrelations)
- [WorkflowWithRelations](modules.md#workflowwithrelations)

### Variables

- [WorkflowCacheSourceName](modules.md#workflowcachesourcename)

## Type Aliases

### DeployedCaseDefinitions

Ƭ **DeployedCaseDefinitions**: `Object`

#### Index signature

▪ [definitionId: `string`]: [`CaseDefinition`](interfaces/CaseDefinition.md)

#### Defined in

[services/bpmn-service/src/types/camunda/deployement-with-definitions.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/camunda/deployement-with-definitions.ts#L28)

___

### DeployedDecisionDefinitions

Ƭ **DeployedDecisionDefinitions**: `Object`

#### Index signature

▪ [definitionId: `string`]: [`DecisionDefinition`](interfaces/DecisionDefinition.md)

#### Defined in

[services/bpmn-service/src/types/camunda/deployement-with-definitions.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/camunda/deployement-with-definitions.ts#L32)

___

### DeployedDecisionRequirementDefinitions

Ƭ **DeployedDecisionRequirementDefinitions**: `Object`

#### Index signature

▪ [definitionId: `string`]: [`DecisionRequirementDefinition`](interfaces/DecisionRequirementDefinition.md)

#### Defined in

[services/bpmn-service/src/types/camunda/deployement-with-definitions.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/camunda/deployement-with-definitions.ts#L36)

___

### DeployedProcessDefinitions

Ƭ **DeployedProcessDefinitions**: `Object`

#### Index signature

▪ [definitionId: `string`]: [`ProcessDefinition`](interfaces/ProcessDefinition.md)

#### Defined in

[services/bpmn-service/src/types/camunda/deployement-with-definitions.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/camunda/deployement-with-definitions.ts#L24)

___

### ExecutionInputValidator

Ƭ **ExecutionInputValidator**<`T`\>: (`schema`: `AnyObject`, `input`: `T`) => `Promise`<`boolean`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `AnyObject` |

#### Type declaration

▸ (`schema`, `input`): `Promise`<`boolean`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `schema` | `AnyObject` |
| `input` | `T` |

##### Returns

`Promise`<`boolean`\>

#### Defined in

[services/bpmn-service/src/types/types.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/types.ts#L41)

___

### Link

Ƭ **Link**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `href` | `string` |
| `method` | `string` |
| `rel` | `string` |

#### Defined in

[services/bpmn-service/src/types/camunda/types.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/camunda/types.ts#L5)

___

### SuccessResponse

Ƭ **SuccessResponse**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `externalId` | `string` |
| `fileRef?` | `string` |
| `processId` | `string` |
| `provider` | `string` |
| `version` | `number` |

#### Defined in

[services/bpmn-service/src/types/types.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/types.ts#L66)

___

### WorkerImplementationFn

Ƭ **WorkerImplementationFn**<`T`, `R`\>: (`worker`: [`WorkerNameCmdPair`](modules.md#workernamecmdpair)<`T`, `R`\>) => `Promise`<`void`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `AnyObject` |
| `R` | `AnyObject` |

#### Type declaration

▸ (`worker`): `Promise`<`void`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `worker` | [`WorkerNameCmdPair`](modules.md#workernamecmdpair)<`T`, `R`\> |

##### Returns

`Promise`<`void`\>

#### Defined in

[services/bpmn-service/src/types/types.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/types.ts#L62)

___

### WorkerMap

Ƭ **WorkerMap**<`T`, `R`\>: `Object`

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `AnyObject` |
| `R` | `AnyObject` |

#### Index signature

▪ [workflowName: `string`]: [`WorkerNameCmdPair`](modules.md#workernamecmdpair)<`T`, `R`\>[]

#### Defined in

[services/bpmn-service/src/types/types.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/types.ts#L52)

___

### WorkerNameCmdPair

Ƭ **WorkerNameCmdPair**<`T`, `R`\>: `Object`

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `AnyObject` |
| `R` | `AnyObject` |

#### Type declaration

| Name | Type |
| :------ | :------ |
| `command` | [`BPMTask`](classes/BPMTask.md)<`T`, `R`\> |
| `running` | `boolean` |
| `topic` | `string` |

#### Defined in

[services/bpmn-service/src/types/types.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/types.ts#L56)

___

### WorkerRegisterFn

Ƭ **WorkerRegisterFn**<`T`, `R`\>: (`bpmnName`: `string`, `topicName`: `string`, `commandCtor`: [`BPMTask`](classes/BPMTask.md)<`T`, `R`\>) => `Promise`<`void`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `AnyObject` |
| `R` | `AnyObject` |

#### Type declaration

▸ (`bpmnName`, `topicName`, `commandCtor`): `Promise`<`void`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `bpmnName` | `string` |
| `topicName` | `string` |
| `commandCtor` | [`BPMTask`](classes/BPMTask.md)<`T`, `R`\> |

##### Returns

`Promise`<`void`\>

#### Defined in

[services/bpmn-service/src/types/types.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/types.ts#L46)

___

### WorkflowVersionWithRelations

Ƭ **WorkflowVersionWithRelations**: [`WorkflowVersion`](classes/WorkflowVersion.md) & [`WorkflowVersionRelations`](interfaces/WorkflowVersionRelations.md)

#### Defined in

[services/bpmn-service/src/models/workflow-version.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/models/workflow-version.model.ts#L68)

___

### WorkflowWithRelations

Ƭ **WorkflowWithRelations**: [`Workflow`](classes/Workflow.md) & [`WorkflowRelations`](interfaces/WorkflowRelations.md)

#### Defined in

[services/bpmn-service/src/models/workflow.model.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/models/workflow.model.ts#L76)

## Variables

### WorkflowCacheSourceName

• `Const` **WorkflowCacheSourceName**: ``"WorkflowCache"``

#### Defined in

[services/bpmn-service/src/types/types.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/types.ts#L74)
