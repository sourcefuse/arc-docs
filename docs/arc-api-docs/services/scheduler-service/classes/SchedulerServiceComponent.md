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
- [config](SchedulerServiceComponent.md#config)
- [controllers](SchedulerServiceComponent.md#controllers)
- [models](SchedulerServiceComponent.md#models)
- [providers](SchedulerServiceComponent.md#providers)
- [repositories](SchedulerServiceComponent.md#repositories)
- [schedulerConfig](SchedulerServiceComponent.md#schedulerconfig)

### Methods

- [setupSequence](SchedulerServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new SchedulerServiceComponent**(`application`, `schedulerConfig?`, `config?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `schedulerConfig?` | `IServiceConfig` |
| `config?` | `IServiceConfig` |

#### Defined in

[services/scheduler-service/src/component.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/component.ts#L87)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/scheduler-service/src/component.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/component.ts#L89)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/scheduler-service/src/component.ts:184](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/component.ts#L184)

___

### config

• `Private` `Optional` `Readonly` **config**: `IServiceConfig`

#### Defined in

[services/scheduler-service/src/component.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/component.ts#L93)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/scheduler-service/src/component.ts:201](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/component.ts#L201)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/scheduler-service/src/component.ts:196](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/component.ts#L196)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/scheduler-service/src/component.ts:182](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/component.ts#L182)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/scheduler-service/src/component.ts:190](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/component.ts#L190)

___

### schedulerConfig

• `Private` `Optional` `Readonly` **schedulerConfig**: `IServiceConfig`

#### Defined in

[services/scheduler-service/src/component.ts:91](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/component.ts#L91)

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

[services/scheduler-service/src/component.ts:208](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/component.ts#L208)
