[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / SchedulerServiceComponent

# Class: SchedulerServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](SchedulerServiceComponent.md#constructor)

### Properties

- [application](SchedulerServiceComponent.md#application)
- [bindings](SchedulerServiceComponent.md#bindings)
- [controllers](SchedulerServiceComponent.md#controllers)
- [models](SchedulerServiceComponent.md#models)
- [providers](SchedulerServiceComponent.md#providers)
- [repositories](SchedulerServiceComponent.md#repositories)
- [schedulerConfig](SchedulerServiceComponent.md#schedulerconfig)

### Methods

- [setupSequence](SchedulerServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new SchedulerServiceComponent**(`application`, `schedulerConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `schedulerConfig?` | `IServiceConfig` |

#### Defined in

[services/scheduler-service/src/component.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/component.ts#L75)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/scheduler-service/src/component.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/component.ts#L77)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/scheduler-service/src/component.ts:156](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/component.ts#L156)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/scheduler-service/src/component.ts:173](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/component.ts#L173)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/scheduler-service/src/component.ts:168](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/component.ts#L168)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/scheduler-service/src/component.ts:154](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/component.ts#L154)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/scheduler-service/src/component.ts:162](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/component.ts#L162)

___

### schedulerConfig

• `Private` `Optional` `Readonly` **schedulerConfig**: `IServiceConfig`

#### Defined in

[services/scheduler-service/src/component.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/component.ts#L79)

## Methods

### setupSequence

▸ **setupSequence**(`bindings`): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `bindings` | `Binding`<`any`\>[] | Binding array |

#### Returns

`void`

#### Defined in

[services/scheduler-service/src/component.ts:180](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/component.ts#L180)
