[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / AuditServiceComponent

# Class: AuditServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](AuditServiceComponent.md#constructor)

### Properties

- [application](AuditServiceComponent.md#application)
- [bindings](AuditServiceComponent.md#bindings)
- [controllers](AuditServiceComponent.md#controllers)
- [models](AuditServiceComponent.md#models)
- [notifConfig](AuditServiceComponent.md#notifconfig)
- [providers](AuditServiceComponent.md#providers)
- [repositories](AuditServiceComponent.md#repositories)

### Methods

- [setupSequence](AuditServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new AuditServiceComponent**(`application`, `notifConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `notifConfig?` | [`IAuditServiceConfig`](../interfaces/IAuditServiceConfig.md) |

#### Defined in

[services/audit-service/src/component.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/audit-service/src/component.ts#L37)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/audit-service/src/component.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/audit-service/src/component.ts#L39)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/audit-service/src/component.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/audit-service/src/component.ts#L76)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/audit-service/src/component.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/audit-service/src/component.ts#L93)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/audit-service/src/component.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/audit-service/src/component.ts#L88)

___

### notifConfig

• `Private` `Optional` `Readonly` **notifConfig**: [`IAuditServiceConfig`](../interfaces/IAuditServiceConfig.md)

#### Defined in

[services/audit-service/src/component.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/audit-service/src/component.ts#L41)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/audit-service/src/component.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/audit-service/src/component.ts#L74)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/audit-service/src/component.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/audit-service/src/component.ts#L82)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/audit-service/src/component.ts:99](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/audit-service/src/component.ts#L99)
