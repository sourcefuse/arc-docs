[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / WebhookTenantManagementServiceComponent

# Class: WebhookTenantManagementServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](WebhookTenantManagementServiceComponent.md#constructor)

### Properties

- [application](WebhookTenantManagementServiceComponent.md#application)
- [bindings](WebhookTenantManagementServiceComponent.md#bindings)
- [booters](WebhookTenantManagementServiceComponent.md#booters)
- [controllers](WebhookTenantManagementServiceComponent.md#controllers)
- [models](WebhookTenantManagementServiceComponent.md#models)
- [notifConfig](WebhookTenantManagementServiceComponent.md#notifconfig)
- [providers](WebhookTenantManagementServiceComponent.md#providers)
- [repositories](WebhookTenantManagementServiceComponent.md#repositories)
- [services](WebhookTenantManagementServiceComponent.md#services)

### Methods

- [setupSequence](WebhookTenantManagementServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new WebhookTenantManagementServiceComponent**(`application`, `notifConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `notifConfig?` | [`ITenantManagementServiceConfig`](../interfaces/ITenantManagementServiceConfig.md) |

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:86](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/webhook.component.ts#L86)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:88](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/webhook.component.ts#L88)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:171](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/webhook.component.ts#L171)

___

### booters

• `Optional` **booters**: `Class`<`Booter`\>[]

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:85](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/webhook.component.ts#L85)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:190](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/webhook.component.ts#L190)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:185](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/webhook.component.ts#L185)

___

### notifConfig

• `Private` `Optional` `Readonly` **notifConfig**: [`ITenantManagementServiceConfig`](../interfaces/ITenantManagementServiceConfig.md)

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:90](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/webhook.component.ts#L90)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:169](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/webhook.component.ts#L169)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:179](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/webhook.component.ts#L179)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:173](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/webhook.component.ts#L173)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:196](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/webhook.component.ts#L196)
