[@sourceloop/core](../README.md) / [Exports](../modules.md) / ProxyBuilderComponent

# Class: ProxyBuilderComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](ProxyBuilderComponent.md#constructor)

### Properties

- [application](ProxyBuilderComponent.md#application)
- [bindings](ProxyBuilderComponent.md#bindings)
- [options](ProxyBuilderComponent.md#options)

### Methods

- [\_bindDataSource](ProxyBuilderComponent.md#_binddatasource)
- [\_bindService](ProxyBuilderComponent.md#_bindservice)
- [\_createBasePath](ProxyBuilderComponent.md#_createbasepath)
- [\_handleConfig](ProxyBuilderComponent.md#_handleconfig)

## Constructors

### constructor

• **new ProxyBuilderComponent**(`application`, `options`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `Application` |
| `options` | [`ProxyBuilderConfig`](../modules.md#proxybuilderconfig) |

#### Defined in

[packages/core/src/components/proxy-builder/component.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/component.ts#L44)

## Properties

### application

• `Private` `Readonly` **application**: `Application`

#### Defined in

[packages/core/src/components/proxy-builder/component.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/component.ts#L46)

___

### bindings

• `Optional` **bindings**: `Binding`<`AnyObject`\>[]

#### Implementation of

Component.bindings

#### Defined in

[packages/core/src/components/proxy-builder/component.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/component.ts#L42)

___

### options

• `Private` `Readonly` **options**: [`ProxyBuilderConfig`](../modules.md#proxybuilderconfig)

#### Defined in

[packages/core/src/components/proxy-builder/component.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/component.ts#L48)

## Methods

### \_bindDataSource

▸ `Private` **_bindDataSource**(`model`, `basePath`, `restOperations?`, `baseUrl?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | [`ModelConstructor`](../modules.md#modelconstructor)<`Entity`\> |
| `basePath` | `string` |
| `restOperations?` | [`RestOperationTemplate`](../modules.md#restoperationtemplate)[] |
| `baseUrl?` | `string` |

#### Returns

`void`

#### Defined in

[packages/core/src/components/proxy-builder/component.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/component.ts#L93)

___

### \_bindService

▸ `Private` **_bindService**(`model`, `restRelations?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | [`ModelConstructor`](../modules.md#modelconstructor)<`Entity`\> |
| `restRelations?` | [`RestRelationConfig`](../modules.md#restrelationconfig)[] |

#### Returns

`void`

#### Defined in

[packages/core/src/components/proxy-builder/component.ts:123](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/component.ts#L123)

___

### \_createBasePath

▸ `Private` **_createBasePath**(`model`): `any`

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | [`ModelConstructor`](../modules.md#modelconstructor)<`Entity`\> |

#### Returns

`any`

#### Defined in

[packages/core/src/components/proxy-builder/component.ts:152](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/component.ts#L152)

___

### \_handleConfig

▸ `Private` **_handleConfig**(`config`): [`EntityRestConfig`](../modules.md#entityrestconfig)

#### Parameters

| Name | Type |
| :------ | :------ |
| `config` | [`ModelConstructor`](../modules.md#modelconstructor)<`Entity`\> \| [`EntityRestConfig`](../modules.md#entityrestconfig) |

#### Returns

[`EntityRestConfig`](../modules.md#entityrestconfig)

#### Defined in

[packages/core/src/components/proxy-builder/component.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/component.ts#L83)
