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

[services/tenant-management-service/src/component.ts:85](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/component.ts#L85)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/tenant-management-service/src/component.ts:87](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/component.ts#L87)

___

### bindings

• **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/tenant-management-service/src/component.ts:167](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/component.ts#L167)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/tenant-management-service/src/component.ts:186](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/component.ts#L186)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/tenant-management-service/src/component.ts:181](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/component.ts#L181)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/tenant-management-service/src/component.ts:165](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/component.ts#L165)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/tenant-management-service/src/component.ts:175](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/component.ts#L175)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/tenant-management-service/src/component.ts:169](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/component.ts#L169)

___

### tenantMgmtConfig

• `Private` `Optional` `Readonly` **tenantMgmtConfig**: [`ITenantManagementServiceConfig`](../interfaces/ITenantManagementServiceConfig.md)

#### Defined in

[services/tenant-management-service/src/component.ts:89](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/component.ts#L89)

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

[services/tenant-management-service/src/component.ts:211](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/component.ts#L211)

___

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/tenant-management-service/src/component.ts:192](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/component.ts#L192)
