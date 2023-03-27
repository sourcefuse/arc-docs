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

[services/bpmn-service/src/component.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/bpmn-service/src/component.ts#L40)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/bpmn-service/src/component.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/bpmn-service/src/component.ts#L42)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/bpmn-service/src/component.ts:95](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/bpmn-service/src/component.ts#L95)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/bpmn-service/src/component.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/bpmn-service/src/component.ts#L112)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/bpmn-service/src/component.ts:107](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/bpmn-service/src/component.ts#L107)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/bpmn-service/src/component.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/bpmn-service/src/component.ts#L93)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/bpmn-service/src/component.ts:101](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/bpmn-service/src/component.ts#L101)

___

### workflowSvcConfig

• `Private` `Optional` `Readonly` **workflowSvcConfig**: [`IWorkflowServiceConfig`](../interfaces/IWorkflowServiceConfig.md)

#### Defined in

[services/bpmn-service/src/component.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/bpmn-service/src/component.ts#L44)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/bpmn-service/src/component.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/bpmn-service/src/component.ts#L118)
