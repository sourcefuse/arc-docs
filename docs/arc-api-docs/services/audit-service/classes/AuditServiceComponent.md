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
- [config](AuditServiceComponent.md#config)
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

• **new AuditServiceComponent**(`application`, `notifConfig?`, `config?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `notifConfig?` | [`IAuditServiceConfig`](../interfaces/IAuditServiceConfig.md) |
| `config?` | `ITenantUtilitiesConfig` |

#### Defined in

[services/audit-service/src/component.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/component.ts#L69)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/audit-service/src/component.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/component.ts#L71)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/audit-service/src/component.ts:139](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/component.ts#L139)

___

### config

• `Private` `Optional` `Readonly` **config**: `ITenantUtilitiesConfig`

#### Defined in

[services/audit-service/src/component.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/component.ts#L75)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/audit-service/src/component.ts:158](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/component.ts#L158)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/audit-service/src/component.ts:153](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/component.ts#L153)

___

### notifConfig

• `Private` `Optional` `Readonly` **notifConfig**: [`IAuditServiceConfig`](../interfaces/IAuditServiceConfig.md)

#### Defined in

[services/audit-service/src/component.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/component.ts#L73)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/audit-service/src/component.ts:137](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/component.ts#L137)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/audit-service/src/component.ts:147](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/component.ts#L147)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/audit-service/src/component.ts:141](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/component.ts#L141)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/audit-service/src/component.ts:164](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/component.ts#L164)
