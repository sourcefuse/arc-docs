[@sourceloop/feature-toggle-service](../README.md) / [Exports](../modules.md) / FeatureToggleServiceComponent

# Class: FeatureToggleServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](FeatureToggleServiceComponent.md#constructor)

### Properties

- [application](FeatureToggleServiceComponent.md#application)
- [bindings](FeatureToggleServiceComponent.md#bindings)
- [config](FeatureToggleServiceComponent.md#config)
- [controllers](FeatureToggleServiceComponent.md#controllers)
- [models](FeatureToggleServiceComponent.md#models)
- [providers](FeatureToggleServiceComponent.md#providers)
- [repositories](FeatureToggleServiceComponent.md#repositories)

### Methods

- [setupSequence](FeatureToggleServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new FeatureToggleServiceComponent**(`application`, `config?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `config?` | [`IToggleServiceConfig`](../interfaces/IToggleServiceConfig.md) |

#### Defined in

[services/feature-toggle-service/src/component.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/feature-toggle-service/src/component.ts#L44)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/feature-toggle-service/src/component.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/feature-toggle-service/src/component.ts#L46)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/feature-toggle-service/src/component.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/feature-toggle-service/src/component.ts#L88)

___

### config

• `Private` `Optional` `Readonly` **config**: [`IToggleServiceConfig`](../interfaces/IToggleServiceConfig.md)

#### Defined in

[services/feature-toggle-service/src/component.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/feature-toggle-service/src/component.ts#L48)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/feature-toggle-service/src/component.ts:104](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/feature-toggle-service/src/component.ts#L104)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/feature-toggle-service/src/component.ts:99](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/feature-toggle-service/src/component.ts#L99)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/feature-toggle-service/src/component.ts:86](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/feature-toggle-service/src/component.ts#L86)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/feature-toggle-service/src/component.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/feature-toggle-service/src/component.ts#L93)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

#### Returns

`void`

#### Defined in

[services/feature-toggle-service/src/component.ts:105](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/feature-toggle-service/src/component.ts#L105)
