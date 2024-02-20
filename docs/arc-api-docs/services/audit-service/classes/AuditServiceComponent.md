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

[services/audit-service/src/component.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/component.ts#L63)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/audit-service/src/component.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/component.ts#L65)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/audit-service/src/component.ts:132](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/component.ts#L132)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/audit-service/src/component.ts:151](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/component.ts#L151)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/audit-service/src/component.ts:146](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/component.ts#L146)

___

### notifConfig

• `Private` `Optional` `Readonly` **notifConfig**: [`IAuditServiceConfig`](../interfaces/IAuditServiceConfig.md)

#### Defined in

[services/audit-service/src/component.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/component.ts#L67)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/audit-service/src/component.ts:130](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/component.ts#L130)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/audit-service/src/component.ts:140](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/component.ts#L140)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/audit-service/src/component.ts:134](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/component.ts#L134)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/audit-service/src/component.ts:157](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/component.ts#L157)
