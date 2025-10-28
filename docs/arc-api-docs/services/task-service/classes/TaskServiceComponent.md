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

[services/task-service/src/component.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/component.ts#L83)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/task-service/src/component.ts:85](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/component.ts#L85)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/task-service/src/component.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/component.ts#L82)

___

### config

• `Private` `Optional` `Readonly` **config**: [`TaskServiceConfig`](../modules.md#taskserviceconfig)

#### Defined in

[services/task-service/src/component.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/component.ts#L87)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/task-service/src/component.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/component.ts#L81)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/task-service/src/component.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/component.ts#L72)

___

### providers

• **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/task-service/src/component.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/component.ts#L74)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

#### Defined in

[services/task-service/src/component.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/component.ts#L66)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/task-service/src/component.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/component.ts#L76)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/task-service/src/component.ts:158](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/task-service/src/component.ts#L158)
