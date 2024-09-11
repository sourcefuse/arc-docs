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

[services/tenant-management-service/src/webhook.component.ts:75](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/webhook.component.ts#L75)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:77](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/webhook.component.ts#L77)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:149](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/webhook.component.ts#L149)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:168](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/webhook.component.ts#L168)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:163](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/webhook.component.ts#L163)

___

### notifConfig

• `Private` `Optional` `Readonly` **notifConfig**: [`ITenantManagementServiceConfig`](../interfaces/ITenantManagementServiceConfig.md)

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:79](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/webhook.component.ts#L79)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:147](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/webhook.component.ts#L147)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:157](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/webhook.component.ts#L157)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:151](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/webhook.component.ts#L151)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:174](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/webhook.component.ts#L174)
