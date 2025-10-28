[@sourceloop/search-service](../README.md) / [Exports](../modules.md) / SearchServiceComponent

# Class: SearchServiceComponent<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Model` |

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](SearchServiceComponent.md#constructor)

### Properties

- [application](SearchServiceComponent.md#application)
- [bindings](SearchServiceComponent.md#bindings)
- [config](SearchServiceComponent.md#config)
- [controllers](SearchServiceComponent.md#controllers)
- [models](SearchServiceComponent.md#models)
- [providers](SearchServiceComponent.md#providers)
- [repositories](SearchServiceComponent.md#repositories)

### Methods

- [\_configureProvidersAndRepositories](SearchServiceComponent.md#_configureprovidersandrepositories)
- [\_setupSearchController](SearchServiceComponent.md#_setupsearchcontroller)
- [createResultModel](SearchServiceComponent.md#createresultmodel)
- [getSearchableModelIdentifiers](SearchServiceComponent.md#getsearchablemodelidentifiers)
- [setupSequence](SearchServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new SearchServiceComponent**<`T`\>(`application`, `config`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Model`<`T`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `config` | [`SearchServiceConfig`](../interfaces/SearchServiceConfig.md)<`T`\> |

#### Defined in

[services/search-service/src/component.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/component.ts#L55)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/search-service/src/component.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/component.ts#L57)

___

### bindings

• **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/search-service/src/component.ts:171](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/component.ts#L171)

___

### config

• `Private` `Readonly` **config**: [`SearchServiceConfig`](../interfaces/SearchServiceConfig.md)<`T`\>

#### Defined in

[services/search-service/src/component.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/component.ts#L59)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/search-service/src/component.ts:188](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/component.ts#L188)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/search-service/src/component.ts:183](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/component.ts#L183)

___

### providers

• **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/search-service/src/component.ts:169](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/component.ts#L169)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/search-service/src/component.ts:177](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/component.ts#L177)

## Methods

### \_configureProvidersAndRepositories

▸ `Private` **_configureProvidersAndRepositories**(): `void`

The function `_configureProvidersAndRepositories` sets up providers and repositories based on the
configuration for using Sequelize in a TypeScript application.

#### Returns

`void`

#### Defined in

[services/search-service/src/component.ts:92](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/component.ts#L92)

___

### \_setupSearchController

▸ `Private` **_setupSearchController**(): `void`

The function `_setupSearchController` sets up a search controller based on configuration settings.

#### Returns

`void`

If the condition `if (!this.config)` is true, then the function will return early and
nothing will be executed beyond that point.

#### Defined in

[services/search-service/src/component.ts:117](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/component.ts#L117)

___

### createResultModel

▸ **createResultModel**(`base`, `models`): typeof `Model`

#### Parameters

| Name | Type |
| :------ | :------ |
| `base` | typeof `Model` |
| `models` | `string`[] |

#### Returns

typeof `Model`

#### Defined in

[services/search-service/src/component.ts:221](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/component.ts#L221)

___

### getSearchableModelIdentifiers

▸ **getSearchableModelIdentifiers**(`config`): `string`[]

#### Parameters

| Name | Type |
| :------ | :------ |
| `config` | [`SearchServiceConfig`](../interfaces/SearchServiceConfig.md)<`T`\> |

#### Returns

`string`[]

#### Defined in

[services/search-service/src/component.ts:159](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/component.ts#L159)

___

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/search-service/src/component.ts:196](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/component.ts#L196)
