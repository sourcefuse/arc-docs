[@sourceloop/ctrl-plane-orchestrator-service](../README.md) / [Exports](../modules.md) / OrchestratorServiceComponent

# Class: OrchestratorServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](OrchestratorServiceComponent.md#constructor)

### Properties

- [application](OrchestratorServiceComponent.md#application)
- [bindings](OrchestratorServiceComponent.md#bindings)
- [controllers](OrchestratorServiceComponent.md#controllers)
- [providers](OrchestratorServiceComponent.md#providers)
- [services](OrchestratorServiceComponent.md#services)

### Methods

- [addClassBindingIfNotPresent](OrchestratorServiceComponent.md#addclassbindingifnotpresent)
- [addProviderIfNotPresent](OrchestratorServiceComponent.md#addproviderifnotpresent)
- [bindProviders](OrchestratorServiceComponent.md#bindproviders)
- [bindServiceClasses](OrchestratorServiceComponent.md#bindserviceclasses)

## Constructors

### constructor

• **new OrchestratorServiceComponent**(`application`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |

#### Defined in

[component.ts:34](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/component.ts#L34)

## Properties

### application

• `Private` **application**: `RestApplication`

#### Defined in

[component.ts:36](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/component.ts#L36)

___

### bindings

• **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[component.ts:31](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/component.ts#L31)

___

### controllers

• **controllers**: `ControllerClass`<`any`\>[] = `[]`

#### Implementation of

Component.controllers

#### Defined in

[component.ts:30](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/component.ts#L30)

___

### providers

• **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[component.ts:29](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/component.ts#L29)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[component.ts:32](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/component.ts#L32)

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

[component.ts:84](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/component.ts#L84)

___

### addProviderIfNotPresent

▸ `Private` **addProviderIfNotPresent**<`T`\>(`key`, `provider`): `void`

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |
| `provider` | `Constructor`<`Provider`<`T`\>\> |

#### Returns

`void`

#### Defined in

[component.ts:94](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/component.ts#L94)

___

### bindProviders

▸ `Private` **bindProviders**(`providersObject`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `providersObject` | `ProviderMap` |

#### Returns

`void`

#### Defined in

[component.ts:70](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/component.ts#L70)

___

### bindServiceClasses

▸ `Private` **bindServiceClasses**(`serviceObject`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `serviceObject` | `Object` |

#### Returns

`void`

#### Defined in

[component.ts:76](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/component.ts#L76)
