[@sourceloop/bpmn-service](../README.md) / [Exports](../modules.md) / WorflowManager

# Interface: WorflowManager<T, S\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `AnyObject` |
| `S` | `AnyObject` |

## Table of contents

### Methods

- [createWorkflow](WorflowManager.md#createworkflow)
- [deleteWorkflowById](WorflowManager.md#deleteworkflowbyid)
- [deleteWorkflowVersionById](WorflowManager.md#deleteworkflowversionbyid)
- [getWorkflowById](WorflowManager.md#getworkflowbyid)
- [startWorkflow](WorflowManager.md#startworkflow)
- [updateWorkflow](WorflowManager.md#updateworkflow)

## Methods

### createWorkflow

▸ **createWorkflow**(`workflowDto`): `Promise`<[`SuccessResponse`](../modules.md#successresponse)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `workflowDto` | [`WorkflowDto`](../classes/WorkflowDto.md) |

#### Returns

`Promise`<[`SuccessResponse`](../modules.md#successresponse)\>

#### Defined in

[services/bpmn-service/src/types/types.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/types.ts#L33)

___

### deleteWorkflowById

▸ **deleteWorkflowById**(`workflow`): `Promise`<[`Workflow`](../classes/Workflow.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `workflow` | [`Workflow`](../classes/Workflow.md) |

#### Returns

`Promise`<[`Workflow`](../classes/Workflow.md)\>

#### Defined in

[services/bpmn-service/src/types/types.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/types.ts#L35)

___

### deleteWorkflowVersionById

▸ `Optional` **deleteWorkflowVersionById**(`version`): `Promise`<[`WorkflowVersion`](../classes/WorkflowVersion.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `version` | [`WorkflowVersion`](../classes/WorkflowVersion.md) |

#### Returns

`Promise`<[`WorkflowVersion`](../classes/WorkflowVersion.md)\>

#### Defined in

[services/bpmn-service/src/types/types.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/types.ts#L36)

___

### getWorkflowById

▸ **getWorkflowById**(`workflow`): `Promise`<[`Workflow`](../classes/Workflow.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `workflow` | [`Workflow`](../classes/Workflow.md) |

#### Returns

`Promise`<[`Workflow`](../classes/Workflow.md)\>

#### Defined in

[services/bpmn-service/src/types/types.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/types.ts#L27)

___

### startWorkflow

▸ **startWorkflow**(`input`, `workflow`, `version?`): `Promise`<`S`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `input` | `T` |
| `workflow` | [`Workflow`](../classes/Workflow.md) |
| `version?` | [`WorkflowVersion`](../classes/WorkflowVersion.md) |

#### Returns

`Promise`<`S`\>

#### Defined in

[services/bpmn-service/src/types/types.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/types.ts#L28)

___

### updateWorkflow

▸ **updateWorkflow**(`workflowDto`): `Promise`<[`SuccessResponse`](../modules.md#successresponse)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `workflowDto` | [`WorkflowDto`](../classes/WorkflowDto.md) |

#### Returns

`Promise`<[`SuccessResponse`](../modules.md#successresponse)\>

#### Defined in

[services/bpmn-service/src/types/types.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/types/types.ts#L34)
