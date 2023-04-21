[@sourceloop/bpmn-service](README.md) / Exports

# @sourceloop/bpmn-service

## Table of contents

### Namespaces

- [WorkflowServiceBindings](modules/WorkflowServiceBindings.md)

### Classes

- [BPMTask](classes/BPMTask.md)
- [ExecuteWorkflowDto](classes/ExecuteWorkflowDto.md)
- [Workflow](classes/Workflow.md)
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
- [ExecutionInputValidator](interfaces/ExecutionInputValidator.md)
- [IBPMTask](interfaces/IBPMTask.md)
- [ICommand](interfaces/ICommand.md)
- [IWorkflowServiceConfig](interfaces/IWorkflowServiceConfig.md)
- [ProcessDefinition](interfaces/ProcessDefinition.md)
- [ProcessInstance](interfaces/ProcessInstance.md)
- [Variable](interfaces/Variable.md)
- [WorflowManager](interfaces/WorflowManager.md)
- [WorkerImplementationFn](interfaces/WorkerImplementationFn.md)
- [WorkerRegisterFn](interfaces/WorkerRegisterFn.md)
- [WorkflowRelations](interfaces/WorkflowRelations.md)
- [WorkflowVersionRelations](interfaces/WorkflowVersionRelations.md)

### Type Aliases

- [DeployedCaseDefinitions](modules.md#deployedcasedefinitions)
- [DeployedDecisionDefinitions](modules.md#deployeddecisiondefinitions)
- [DeployedDecisionRequirementDefinitions](modules.md#deployeddecisionrequirementdefinitions)
- [DeployedProcessDefinitions](modules.md#deployedprocessdefinitions)
- [Link](modules.md#link)
- [SuccessResponse](modules.md#successresponse)
- [WorkerMap](modules.md#workermap)
- [WorkerNameCmdPair](modules.md#workernamecmdpair)
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

[services/bpmn-service/src/types/camunda/deployement-with-definitions.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/bpmn-service/src/types/camunda/deployement-with-definitions.ts#L28)

___

### DeployedDecisionDefinitions

Ƭ **DeployedDecisionDefinitions**: `Object`

#### Index signature

▪ [definitionId: `string`]: [`DecisionDefinition`](interfaces/DecisionDefinition.md)

#### Defined in

[services/bpmn-service/src/types/camunda/deployement-with-definitions.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/bpmn-service/src/types/camunda/deployement-with-definitions.ts#L32)

___

### DeployedDecisionRequirementDefinitions

Ƭ **DeployedDecisionRequirementDefinitions**: `Object`

#### Index signature

▪ [definitionId: `string`]: [`DecisionRequirementDefinition`](interfaces/DecisionRequirementDefinition.md)

#### Defined in

[services/bpmn-service/src/types/camunda/deployement-with-definitions.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/bpmn-service/src/types/camunda/deployement-with-definitions.ts#L36)

___

### DeployedProcessDefinitions

Ƭ **DeployedProcessDefinitions**: `Object`

#### Index signature

▪ [definitionId: `string`]: [`ProcessDefinition`](interfaces/ProcessDefinition.md)

#### Defined in

[services/bpmn-service/src/types/camunda/deployement-with-definitions.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/bpmn-service/src/types/camunda/deployement-with-definitions.ts#L24)

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

[services/bpmn-service/src/types/camunda/types.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/bpmn-service/src/types/camunda/types.ts#L5)

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

[services/bpmn-service/src/types/types.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/bpmn-service/src/types/types.ts#L67)

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

[services/bpmn-service/src/types/types.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/bpmn-service/src/types/types.ts#L53)

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

[services/bpmn-service/src/types/types.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/bpmn-service/src/types/types.ts#L57)

___

### WorkflowVersionWithRelations

Ƭ **WorkflowVersionWithRelations**: [`WorkflowVersion`](classes/WorkflowVersion.md) & [`WorkflowVersionRelations`](interfaces/WorkflowVersionRelations.md)

#### Defined in

[services/bpmn-service/src/models/workflow-version.model.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/bpmn-service/src/models/workflow-version.model.ts#L77)

___

### WorkflowWithRelations

Ƭ **WorkflowWithRelations**: [`Workflow`](classes/Workflow.md) & [`WorkflowRelations`](interfaces/WorkflowRelations.md)

#### Defined in

[services/bpmn-service/src/models/workflow.model.ts:80](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/bpmn-service/src/models/workflow.model.ts#L80)

## Variables

### WorkflowCacheSourceName

• `Const` **WorkflowCacheSourceName**: ``"WorkflowCache"``

#### Defined in

[services/bpmn-service/src/types/types.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/bpmn-service/src/types/types.ts#L75)
