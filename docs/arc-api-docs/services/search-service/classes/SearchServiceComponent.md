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

- [createResultModel](SearchServiceComponent.md#createresultmodel)
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

[services/search-service/src/component.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/component.ts#L48)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/search-service/src/component.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/component.ts#L50)

___

### bindings

• **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/search-service/src/component.ts:134](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/component.ts#L134)

___

### config

• `Private` `Readonly` **config**: [`SearchServiceConfig`](../interfaces/SearchServiceConfig.md)<`T`\>

#### Defined in

[services/search-service/src/component.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/component.ts#L52)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/search-service/src/component.ts:151](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/component.ts#L151)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/search-service/src/component.ts:146](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/component.ts#L146)

___

### providers

• **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/search-service/src/component.ts:132](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/component.ts#L132)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/search-service/src/component.ts:140](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/component.ts#L140)

## Methods

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

[services/search-service/src/component.ts:184](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/component.ts#L184)

___

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/search-service/src/component.ts:159](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/component.ts#L159)
