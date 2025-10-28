[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / TenantManagementSequelizeServiceComponent

# Class: TenantManagementSequelizeServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](TenantManagementSequelizeServiceComponent.md#constructor)

### Properties

- [application](TenantManagementSequelizeServiceComponent.md#application)
- [bindings](TenantManagementSequelizeServiceComponent.md#bindings)
- [booters](TenantManagementSequelizeServiceComponent.md#booters)
- [controllers](TenantManagementSequelizeServiceComponent.md#controllers)
- [models](TenantManagementSequelizeServiceComponent.md#models)
- [providers](TenantManagementSequelizeServiceComponent.md#providers)
- [repositories](TenantManagementSequelizeServiceComponent.md#repositories)
- [services](TenantManagementSequelizeServiceComponent.md#services)
- [tenantMgmtConfig](TenantManagementSequelizeServiceComponent.md#tenantmgmtconfig)

### Methods

- [addClassBindingIfNotPresent](TenantManagementSequelizeServiceComponent.md#addclassbindingifnotpresent)
- [setupSequence](TenantManagementSequelizeServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new TenantManagementSequelizeServiceComponent**(`application`, `tenantMgmtConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `tenantMgmtConfig?` | [`ITenantManagementServiceConfig`](../interfaces/ITenantManagementServiceConfig.md) |

#### Defined in

[services/tenant-management-service/src/sequelize-component.ts:87](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/sequelize-component.ts#L87)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/tenant-management-service/src/sequelize-component.ts:89](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/sequelize-component.ts#L89)

___

### bindings

• **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/tenant-management-service/src/sequelize-component.ts:174](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/sequelize-component.ts#L174)

___

### booters

• `Optional` **booters**: `Class`<`Booter`\>[]

#### Defined in

[services/tenant-management-service/src/sequelize-component.ts:86](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/sequelize-component.ts#L86)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/tenant-management-service/src/sequelize-component.ts:193](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/sequelize-component.ts#L193)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/tenant-management-service/src/sequelize-component.ts:188](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/sequelize-component.ts#L188)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/tenant-management-service/src/sequelize-component.ts:172](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/sequelize-component.ts#L172)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/tenant-management-service/src/sequelize-component.ts:182](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/sequelize-component.ts#L182)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/tenant-management-service/src/sequelize-component.ts:176](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/sequelize-component.ts#L176)

___

### tenantMgmtConfig

• `Private` `Optional` `Readonly` **tenantMgmtConfig**: [`ITenantManagementServiceConfig`](../interfaces/ITenantManagementServiceConfig.md)

#### Defined in

[services/tenant-management-service/src/sequelize-component.ts:91](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/sequelize-component.ts#L91)

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

[services/tenant-management-service/src/sequelize-component.ts:218](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/sequelize-component.ts#L218)

___

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/tenant-management-service/src/sequelize-component.ts:199](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/sequelize-component.ts#L199)
