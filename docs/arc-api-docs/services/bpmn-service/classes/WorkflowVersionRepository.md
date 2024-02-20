[@sourceloop/bpmn-service](../README.md) / [Exports](../modules.md) / WorkflowVersionRepository

# Class: WorkflowVersionRepository

## Hierarchy

- `DefaultCrudRepository`<[`WorkflowVersion`](WorkflowVersion.md), typeof [`id`](WorkflowVersion.md#id), [`WorkflowVersionRelations`](../interfaces/WorkflowVersionRelations.md)\>

  ↳ **`WorkflowVersionRepository`**

## Table of contents

### Constructors

- [constructor](WorkflowVersionRepository.md#constructor)

### Properties

- [workflow](WorkflowVersionRepository.md#workflow)
- [workflowRepositoryGetter](WorkflowVersionRepository.md#workflowrepositorygetter)

## Constructors

### constructor

• **new WorkflowVersionRepository**(`dataSource`, `workflowRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `workflowRepositoryGetter` | `Getter`<[`WorkflowRepository`](WorkflowRepository.md)\> |

#### Overrides

DefaultCrudRepository&lt;
  WorkflowVersion,
  typeof WorkflowVersion.prototype.id,
  WorkflowVersionRelations
\&gt;.constructor

#### Defined in

[services/bpmn-service/src/repositories/workflow-version.repository.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/repositories/workflow-version.repository.ts#L25)

## Properties

### workflow

• `Readonly` **workflow**: `BelongsToAccessor`<[`Workflow`](Workflow.md), `undefined` \| `string`\>

#### Defined in

[services/bpmn-service/src/repositories/workflow-version.repository.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/repositories/workflow-version.repository.ts#L21)

___

### workflowRepositoryGetter

• `Protected` **workflowRepositoryGetter**: `Getter`<[`WorkflowRepository`](WorkflowRepository.md)\>

#### Defined in

[services/bpmn-service/src/repositories/workflow-version.repository.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/repositories/workflow-version.repository.ts#L29)
