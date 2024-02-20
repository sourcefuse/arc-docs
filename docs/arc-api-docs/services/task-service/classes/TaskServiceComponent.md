[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / TaskServiceComponent

# Class: TaskServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](TaskServiceComponent.md#constructor)

### Properties

- [application](TaskServiceComponent.md#application)
- [bindings](TaskServiceComponent.md#bindings)
- [config](TaskServiceComponent.md#config)
- [controllers](TaskServiceComponent.md#controllers)
- [models](TaskServiceComponent.md#models)
- [providers](TaskServiceComponent.md#providers)
- [repositories](TaskServiceComponent.md#repositories)
- [services](TaskServiceComponent.md#services)

### Methods

- [setupSequence](TaskServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new TaskServiceComponent**(`application`, `config?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `config?` | [`TaskServiceConfig`](../modules.md#taskserviceconfig) |

#### Defined in

[services/task-service/src/component.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/component.ts#L82)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/task-service/src/component.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/component.ts#L84)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/task-service/src/component.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/component.ts#L81)

___

### config

• `Private` `Optional` `Readonly` **config**: [`TaskServiceConfig`](../modules.md#taskserviceconfig)

#### Defined in

[services/task-service/src/component.ts:86](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/component.ts#L86)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/task-service/src/component.ts:80](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/component.ts#L80)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/task-service/src/component.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/component.ts#L71)

___

### providers

• **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/task-service/src/component.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/component.ts#L73)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

#### Defined in

[services/task-service/src/component.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/component.ts#L65)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/task-service/src/component.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/component.ts#L75)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/task-service/src/component.ts:155](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/component.ts#L155)
