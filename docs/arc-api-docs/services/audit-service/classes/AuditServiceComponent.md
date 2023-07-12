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

[services/audit-service/src/component.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/component.ts#L57)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/audit-service/src/component.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/component.ts#L59)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/audit-service/src/component.ts:116](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/component.ts#L116)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/audit-service/src/component.ts:135](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/component.ts#L135)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/audit-service/src/component.ts:130](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/component.ts#L130)

___

### notifConfig

• `Private` `Optional` `Readonly` **notifConfig**: [`IAuditServiceConfig`](../interfaces/IAuditServiceConfig.md)

#### Defined in

[services/audit-service/src/component.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/component.ts#L61)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/audit-service/src/component.ts:114](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/component.ts#L114)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/audit-service/src/component.ts:124](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/component.ts#L124)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/audit-service/src/component.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/component.ts#L118)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/audit-service/src/component.ts:141](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/component.ts#L141)
