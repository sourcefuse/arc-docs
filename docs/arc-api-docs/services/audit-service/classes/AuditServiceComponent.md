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
- [services](AuditServiceComponent.md#services)

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

[services/audit-service/src/component.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/component.ts#L51)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/audit-service/src/component.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/component.ts#L53)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/audit-service/src/component.ts:100](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/component.ts#L100)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/audit-service/src/component.ts:119](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/component.ts#L119)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/audit-service/src/component.ts:114](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/component.ts#L114)

___

### notifConfig

• `Private` `Optional` `Readonly` **notifConfig**: [`IAuditServiceConfig`](../interfaces/IAuditServiceConfig.md)

#### Defined in

[services/audit-service/src/component.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/component.ts#L55)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/audit-service/src/component.ts:98](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/component.ts#L98)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/audit-service/src/component.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/component.ts#L108)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/audit-service/src/component.ts:102](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/component.ts#L102)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/audit-service/src/component.ts:125](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/component.ts#L125)
