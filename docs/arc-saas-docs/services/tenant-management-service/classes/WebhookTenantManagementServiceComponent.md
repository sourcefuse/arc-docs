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

[services/tenant-management-service/src/webhook.component.ts:75](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/webhook.component.ts#L75)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:77](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/webhook.component.ts#L77)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:150](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/webhook.component.ts#L150)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:169](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/webhook.component.ts#L169)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:164](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/webhook.component.ts#L164)

___

### notifConfig

• `Private` `Optional` `Readonly` **notifConfig**: [`ITenantManagementServiceConfig`](../interfaces/ITenantManagementServiceConfig.md)

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:79](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/webhook.component.ts#L79)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:148](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/webhook.component.ts#L148)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:158](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/webhook.component.ts#L158)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:152](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/webhook.component.ts#L152)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/tenant-management-service/src/webhook.component.ts:175](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/webhook.component.ts#L175)
