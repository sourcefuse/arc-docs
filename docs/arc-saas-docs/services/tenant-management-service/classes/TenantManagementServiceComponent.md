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
- [booters](TenantManagementServiceComponent.md#booters)
- [controllers](TenantManagementServiceComponent.md#controllers)
- [models](TenantManagementServiceComponent.md#models)
- [providers](TenantManagementServiceComponent.md#providers)
- [repositories](TenantManagementServiceComponent.md#repositories)
- [services](TenantManagementServiceComponent.md#services)
- [tenantMgmtConfig](TenantManagementServiceComponent.md#tenantmgmtconfig)

### Methods

- [addClassBindingIfNotPresent](TenantManagementServiceComponent.md#addclassbindingifnotpresent)
- [setupSequence](TenantManagementServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new TenantManagementServiceComponent**(`application`, `tenantMgmtConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `tenantMgmtConfig?` | [`ITenantManagementServiceConfig`](../interfaces/ITenantManagementServiceConfig.md) |

#### Defined in

[services/tenant-management-service/src/component.ts:86](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/component.ts#L86)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/tenant-management-service/src/component.ts:88](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/component.ts#L88)

___

### bindings

• **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/tenant-management-service/src/component.ts:174](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/component.ts#L174)

___

### booters

• `Optional` **booters**: `Class`<`Booter`\>[]

#### Defined in

[services/tenant-management-service/src/component.ts:177](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/component.ts#L177)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/tenant-management-service/src/component.ts:194](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/component.ts#L194)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/tenant-management-service/src/component.ts:189](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/component.ts#L189)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/tenant-management-service/src/component.ts:172](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/component.ts#L172)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/tenant-management-service/src/component.ts:183](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/component.ts#L183)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/tenant-management-service/src/component.ts:176](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/component.ts#L176)

___

### tenantMgmtConfig

• `Private` `Optional` `Readonly` **tenantMgmtConfig**: [`ITenantManagementServiceConfig`](../interfaces/ITenantManagementServiceConfig.md)

#### Defined in

[services/tenant-management-service/src/component.ts:90](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/component.ts#L90)

## Methods

### addClassBindingIfNotPresent

▸ `Private` **addClassBindingIfNotPresent**<`T`\>(`key`, `cls`): `void`

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |
| `cls` | `Constructor`<`T`\> |

#### Returns

`void`

#### Defined in

[services/tenant-management-service/src/component.ts:219](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/component.ts#L219)

___

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/tenant-management-service/src/component.ts:200](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/component.ts#L200)
