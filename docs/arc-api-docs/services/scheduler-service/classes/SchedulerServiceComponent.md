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

[services/scheduler-service/src/component.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/component.ts#L73)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/scheduler-service/src/component.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/component.ts#L75)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/scheduler-service/src/component.ts:152](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/component.ts#L152)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/scheduler-service/src/component.ts:169](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/component.ts#L169)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/scheduler-service/src/component.ts:164](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/component.ts#L164)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/scheduler-service/src/component.ts:150](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/component.ts#L150)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/scheduler-service/src/component.ts:158](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/component.ts#L158)

___

### schedulerConfig

• `Private` `Optional` `Readonly` **schedulerConfig**: `IServiceConfig`

#### Defined in

[services/scheduler-service/src/component.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/component.ts#L77)

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

[services/scheduler-service/src/component.ts:176](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/component.ts#L176)
