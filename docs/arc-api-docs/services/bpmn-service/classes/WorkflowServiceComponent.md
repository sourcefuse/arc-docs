[@sourceloop/bpmn-service](../README.md) / [Exports](../modules.md) / WorkflowServiceComponent

# Class: WorkflowServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](WorkflowServiceComponent.md#constructor)

### Properties

- [application](WorkflowServiceComponent.md#application)
- [bindings](WorkflowServiceComponent.md#bindings)
- [controllers](WorkflowServiceComponent.md#controllers)
- [models](WorkflowServiceComponent.md#models)
- [providers](WorkflowServiceComponent.md#providers)
- [repositories](WorkflowServiceComponent.md#repositories)
- [workflowSvcConfig](WorkflowServiceComponent.md#workflowsvcconfig)

### Methods

- [setupSequence](WorkflowServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new WorkflowServiceComponent**(`application`, `workflowSvcConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `workflowSvcConfig?` | [`IWorkflowServiceConfig`](../interfaces/IWorkflowServiceConfig.md) |

#### Defined in

[services/bpmn-service/src/component.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/bpmn-service/src/component.ts#L46)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/bpmn-service/src/component.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/bpmn-service/src/component.ts#L48)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/bpmn-service/src/component.ts:111](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/bpmn-service/src/component.ts#L111)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/bpmn-service/src/component.ts:128](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/bpmn-service/src/component.ts#L128)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/bpmn-service/src/component.ts:123](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/bpmn-service/src/component.ts#L123)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/bpmn-service/src/component.ts:109](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/bpmn-service/src/component.ts#L109)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/bpmn-service/src/component.ts:117](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/bpmn-service/src/component.ts#L117)

___

### workflowSvcConfig

• `Private` `Optional` `Readonly` **workflowSvcConfig**: [`IWorkflowServiceConfig`](../interfaces/IWorkflowServiceConfig.md)

#### Defined in

[services/bpmn-service/src/component.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/bpmn-service/src/component.ts#L50)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/bpmn-service/src/component.ts:134](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/bpmn-service/src/component.ts#L134)
