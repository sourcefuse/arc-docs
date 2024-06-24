[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / TenantManagementServiceComponent

# Class: TenantManagementServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](TenantManagementServiceComponent.md#constructor)

### Properties

- [application](TenantManagementServiceComponent.md#application)
- [bindings](TenantManagementServiceComponent.md#bindings)
- [controllers](TenantManagementServiceComponent.md#controllers)
- [models](TenantManagementServiceComponent.md#models)
- [notifConfig](TenantManagementServiceComponent.md#notifconfig)
- [providers](TenantManagementServiceComponent.md#providers)
- [repositories](TenantManagementServiceComponent.md#repositories)
- [services](TenantManagementServiceComponent.md#services)

### Methods

- [setupSequence](TenantManagementServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new TenantManagementServiceComponent**(`application`, `notifConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `notifConfig?` | [`ITenantManagementServiceConfig`](../interfaces/ITenantManagementServiceConfig.md) |

#### Defined in

[services/tenant-management-service/src/component.ts:84](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/component.ts#L84)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/tenant-management-service/src/component.ts:86](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/component.ts#L86)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/tenant-management-service/src/component.ts:166](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/component.ts#L166)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/tenant-management-service/src/component.ts:185](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/component.ts#L185)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/tenant-management-service/src/component.ts:180](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/component.ts#L180)

___

### notifConfig

• `Private` `Optional` `Readonly` **notifConfig**: [`ITenantManagementServiceConfig`](../interfaces/ITenantManagementServiceConfig.md)

#### Defined in

[services/tenant-management-service/src/component.ts:88](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/component.ts#L88)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/tenant-management-service/src/component.ts:164](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/component.ts#L164)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/tenant-management-service/src/component.ts:174](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/component.ts#L174)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/tenant-management-service/src/component.ts:168](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/component.ts#L168)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/tenant-management-service/src/component.ts:191](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/component.ts#L191)
