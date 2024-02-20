[@sourceloop/bpmn-service](../README.md) / [Exports](../modules.md) / Workflow

# Class: Workflow

## Hierarchy

- `UserModifiableEntity`<[`Workflow`](Workflow.md)\>

  ↳ **`Workflow`**

## Table of contents

### Constructors

- [constructor](Workflow.md#constructor)

### Properties

- [createdBy](Workflow.md#createdby)
- [createdOn](Workflow.md#createdon)
- [description](Workflow.md#description)
- [externalIdentifier](Workflow.md#externalidentifier)
- [id](Workflow.md#id)
- [inputSchema](Workflow.md#inputschema)
- [modifiedBy](Workflow.md#modifiedby)
- [modifiedOn](Workflow.md#modifiedon)
- [name](Workflow.md#name)
- [provider](Workflow.md#provider)
- [workflowVersion](Workflow.md#workflowversion)
- [workflowVersions](Workflow.md#workflowversions)

## Constructors

### constructor

• **new Workflow**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Workflow`](Workflow.md)\> |

#### Inherited from

UserModifiableEntity<Workflow\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### description

• `Optional` **description**: `string`

#### Defined in

[services/bpmn-service/src/models/workflow.model.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/models/workflow.model.ts#L63)

___

### externalIdentifier

• **externalIdentifier**: `string`

#### Defined in

[services/bpmn-service/src/models/workflow.model.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/models/workflow.model.ts#L35)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/bpmn-service/src/models/workflow.model.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/models/workflow.model.ts#L18)

___

### inputSchema

• **inputSchema**: `AnyObject`

#### Defined in

[services/bpmn-service/src/models/workflow.model.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/models/workflow.model.ts#L57)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### name

• **name**: `string`

#### Defined in

[services/bpmn-service/src/models/workflow.model.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/models/workflow.model.ts#L42)

___

### provider

• **provider**: `string`

#### Defined in

[services/bpmn-service/src/models/workflow.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/models/workflow.model.ts#L50)

___

### workflowVersion

• **workflowVersion**: `number`

#### Defined in

[services/bpmn-service/src/models/workflow.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/models/workflow.model.ts#L26)

___

### workflowVersions

• **workflowVersions**: [`WorkflowVersion`](WorkflowVersion.md)[]

#### Defined in

[services/bpmn-service/src/models/workflow.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/models/workflow.model.ts#L69)
