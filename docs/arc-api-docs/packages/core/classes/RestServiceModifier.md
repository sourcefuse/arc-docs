[@sourceloop/core](../README.md) / [Exports](../modules.md) / RestServiceModifier

# Class: RestServiceModifier<T, S\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity` |
| `S` | extends `Entity` |

## Implements

- `Provider`<[`CrudRestServiceModifier`](../modules.md#crudrestservicemodifier)<`T`\>\>

## Table of contents

### Constructors

- [constructor](RestServiceModifier.md#constructor)

### Properties

- [\_validateToken](RestServiceModifier.md#_validatetoken)
- [req](RestServiceModifier.md#req)
- [resolverGetter](RestServiceModifier.md#resolvergetter)
- [resolvers](RestServiceModifier.md#resolvers)
- [token](RestServiceModifier.md#token)

### Methods

- [\_configsHaveRelations](RestServiceModifier.md#_configshaverelations)
- [\_extraFilters](RestServiceModifier.md#_extrafilters)
- [\_relationsFromFilter](RestServiceModifier.md#_relationsfromfilter)
- [\_resolveRelations](RestServiceModifier.md#_resolverelations)
- [\_updateFilter](RestServiceModifier.md#_updatefilter)
- [count](RestServiceModifier.md#count)
- [create](RestServiceModifier.md#create)
- [delete](RestServiceModifier.md#delete)
- [deleteById](RestServiceModifier.md#deletebyid)
- [find](RestServiceModifier.md#find)
- [findById](RestServiceModifier.md#findbyid)
- [replaceById](RestServiceModifier.md#replacebyid)
- [update](RestServiceModifier.md#update)
- [updateById](RestServiceModifier.md#updatebyid)
- [value](RestServiceModifier.md#value)

## Constructors

### constructor

• **new RestServiceModifier**<`T`, `S`\>(`resolverGetter`, `_validateToken`, `req?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity`<`T`\> |
| `S` | extends `Entity`<`S`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `resolverGetter` | `Getter`<[`IRestResolver`](../interfaces/IRestResolver.md)<`T`, `S`\>[]\> |
| `_validateToken` | (`context`: [`RestServiceModifier`](RestServiceModifier.md)<`T`, `S`\>, `token?`: `string`) => `string` |
| `req?` | `Request`<`ParamsDictionary`, `any`, `any`, `ParsedQs`, `Record`<`string`, `any`\>\> |

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L42)

## Properties

### \_validateToken

• `Private` `Readonly` **\_validateToken**: (`context`: [`RestServiceModifier`](RestServiceModifier.md)<`T`, `S`\>, `token?`: `string`) => `string`

#### Type declaration

▸ (`context`, `token?`): `string`

##### Parameters

| Name | Type |
| :------ | :------ |
| `context` | [`RestServiceModifier`](RestServiceModifier.md)<`T`, `S`\> |
| `token?` | `string` |

##### Returns

`string`

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L46)

___

### req

• `Private` `Optional` `Readonly` **req**: `Request`<`ParamsDictionary`, `any`, `any`, `ParsedQs`, `Record`<`string`, `any`\>\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L51)

___

### resolverGetter

• `Private` `Readonly` **resolverGetter**: `Getter`<[`IRestResolver`](../interfaces/IRestResolver.md)<`T`, `S`\>[]\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L44)

___

### resolvers

• `Private` **resolvers**: [`IRestResolver`](../interfaces/IRestResolver.md)<`T`, `S`\>[]

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L41)

___

### token

• `Private` `Readonly` **token**: `string`

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L40)

## Methods

### \_configsHaveRelations

▸ `Private` **_configsHaveRelations**(`configs`, `name`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `configs` | [`RestRelationConfig`](../modules.md#restrelationconfig)[] |
| `name` | `string` |

#### Returns

`boolean`

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:304](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L304)

___

### \_extraFilters

▸ `Private` **_extraFilters**(`configs`): `InclusionFilter`[]

#### Parameters

| Name | Type |
| :------ | :------ |
| `configs` | [`RestRelationConfig`](../modules.md#restrelationconfig)[] |

#### Returns

`InclusionFilter`[]

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:224](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L224)

___

### \_relationsFromFilter

▸ `Private` **_relationsFromFilter**(`configs`, `filter?`): { `restRelations`: [`RestRelationConfig`](../modules.md#restrelationconfig)[] ; `scopeMap`: `Map`<`string`, `Filter`<`S`\>\>  } \| { `restRelations`: `never`[] = []; `scopeMap`: `Map`<`any`, `any`\>  }

It takes a filter and a list of relations, and returns a list of relations that are REST relations,
and a map of scopes for those relations

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `configs` | [`RestRelationConfig`](../modules.md#restrelationconfig)[] | RestRelationConfig[] |
| `filter?` | `Filter`<`T`\> | The filter object that was passed to the find method. |

#### Returns

{ `restRelations`: [`RestRelationConfig`](../modules.md#restrelationconfig)[] ; `scopeMap`: `Map`<`string`, `Filter`<`S`\>\>  } \| { `restRelations`: `never`[] = []; `scopeMap`: `Map`<`any`, `any`\>  }

An object with two properties: restRelations and scopeMap.

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:178](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L178)

___

### \_resolveRelations

▸ `Private` **_resolveRelations**(`relations`, `scopeMap`, `model`, `results`, `token?`): `Promise`<`T`[]\>

It takes a list of relations, a list of results, and a token, and returns a list of results with the
relations resolved

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `relations` | [`RestRelationConfig`](../modules.md#restrelationconfig)[] | RestRelationConfig[] |
| `scopeMap` | `Map`<`string`, `Filter`<`S`\>\> | Map<string, Filter<S>> |
| `model` | [`ModelConstructor`](../modules.md#modelconstructor)<`T`\> | The model class that we are querying |
| `results` | `T`[] | The results of the query. |
| `token?` | `string` | The access token of the current user. |

#### Returns

`Promise`<`T`[]\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:245](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L245)

___

### \_updateFilter

▸ `Private` **_updateFilter**(`extraIncludes`, `filter`, `normalRelations`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `extraIncludes` | `InclusionFilter`[] |
| `filter` | `Filter`<`T`\> |
| `normalRelations` | `InclusionFilter`[] |

#### Returns

`void`

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:210](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L210)

___

### count

▸ **count**(`service`, `where?`, `token?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `service` | [`CrudRestService`](../modules.md#crudrestservice)<`T`, `T`\> |
| `where?` | `Where`<`T`\> |
| `token?` | `string` |

#### Returns

`Promise`<`Count`\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:131](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L131)

___

### create

▸ **create**(`service`, `data`, `token?`): `Promise`<`T`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `service` | [`CrudRestService`](../modules.md#crudrestservice)<`T`, `T`\> |
| `data` | `DataObject`<`T`\> |
| `token?` | `string` |

#### Returns

`Promise`<`T`\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L79)

___

### delete

▸ **delete**(`service`, `where?`, `token?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `service` | [`CrudRestService`](../modules.md#crudrestservice)<`T`, `T`\> |
| `where?` | `Where`<`T`\> |
| `token?` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:148](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L148)

___

### deleteById

▸ **deleteById**(`service`, `id`, `token?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `service` | [`CrudRestService`](../modules.md#crudrestservice)<`T`, `T`\> |
| `id` | `string` |
| `token?` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:145](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L145)

___

### find

▸ **find**(`service`, `model`, `config`, `filter?`, `token?`, `inclusionConfig?`): `Promise`<`T`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `service` | [`CrudRestService`](../modules.md#crudrestservice)<`T`, `T`\> |
| `model` | [`ModelConstructor`](../modules.md#modelconstructor)<`T`\> |
| `config` | [`RestRelationConfig`](../modules.md#restrelationconfig)[] |
| `filter?` | `Filter`<`T`\> |
| `token?` | `string` |
| `inclusionConfig?` | [`RestRelationConfig`](../modules.md#restrelationconfig) |

#### Returns

`Promise`<`T`[]\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:106](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L106)

___

### findById

▸ **findById**(`service`, `model`, `config`, `id`, `filter?`, `token?`): `Promise`<`T`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `service` | [`CrudRestService`](../modules.md#crudrestservice)<`T`, `T`\> |
| `model` | [`ModelConstructor`](../modules.md#modelconstructor)<`T`\> |
| `config` | [`RestRelationConfig`](../modules.md#restrelationconfig)[] |
| `id` | `string` |
| `filter?` | `FilterExcludingWhere`<`T`\> |
| `token?` | `string` |

#### Returns

`Promise`<`T`\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L82)

___

### replaceById

▸ **replaceById**(`service`, `id`, `data`, `token?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `service` | [`CrudRestService`](../modules.md#crudrestservice)<`T`, `T`\> |
| `id` | `string` |
| `data` | `DataObject`<`T`\> |
| `token?` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:163](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L163)

___

### update

▸ **update**(`service`, `data`, `where?`, `token?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `service` | [`CrudRestService`](../modules.md#crudrestservice)<`T`, `T`\> |
| `data` | `DataObject`<`T`\> |
| `where?` | `Where`<`T`\> |
| `token?` | `string` |

#### Returns

`Promise`<`Count`\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:151](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L151)

___

### updateById

▸ **updateById**(`service`, `id`, `data`, `token?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `service` | [`CrudRestService`](../modules.md#crudrestservice)<`T`, `T`\> |
| `id` | `string` |
| `data` | `DataObject`<`T`\> |
| `token?` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:137](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L137)

___

### value

▸ **value**(): `Promise`<(`service`: [`CrudRestService`](../modules.md#crudrestservice)<`T`, `T`\>, `model`: [`ModelConstructor`](../modules.md#modelconstructor)<`T`\>, `config`: [`RestRelationConfig`](../modules.md#restrelationconfig)[]) => { `count`: (...`args`: [where?: Where<T\>, token?: string]) => `Promise`<`Count`\> ; `create`: (...`args`: [data: DataObject<T\>, token?: string]) => `Promise`<`T`\> ; `delete`: (...`args`: [where?: Where<T\>, token?: string]) => `Promise`<`void`\> ; `deleteById`: (...`args`: [id: string, token?: string]) => `Promise`<`void`\> ; `find`: (...`args`: [filter?: Filter<T\>, token?: string, inclusionConfig?: RestRelationConfig]) => `Promise`<`T`[]\> ; `findById`: (...`args`: [id: string, filter?: FilterExcludingWhere<T\>, token?: string]) => `Promise`<`T`\> ; `replaceById`: (...`args`: [id: string, data: DataObject<T\>, token?: string]) => `Promise`<`void`\> ; `update`: (...`args`: [data: DataObject<T\>, where?: Where<T\>, token?: string]) => `Promise`<`Count`\> ; `updateById`: (...`args`: [id: string, data: DataObject<T\>, token?: string]) => `Promise`<`void`\>  }\>

#### Returns

`Promise`<(`service`: [`CrudRestService`](../modules.md#crudrestservice)<`T`, `T`\>, `model`: [`ModelConstructor`](../modules.md#modelconstructor)<`T`\>, `config`: [`RestRelationConfig`](../modules.md#restrelationconfig)[]) => { `count`: (...`args`: [where?: Where<T\>, token?: string]) => `Promise`<`Count`\> ; `create`: (...`args`: [data: DataObject<T\>, token?: string]) => `Promise`<`T`\> ; `delete`: (...`args`: [where?: Where<T\>, token?: string]) => `Promise`<`void`\> ; `deleteById`: (...`args`: [id: string, token?: string]) => `Promise`<`void`\> ; `find`: (...`args`: [filter?: Filter<T\>, token?: string, inclusionConfig?: RestRelationConfig]) => `Promise`<`T`[]\> ; `findById`: (...`args`: [id: string, filter?: FilterExcludingWhere<T\>, token?: string]) => `Promise`<`T`\> ; `replaceById`: (...`args`: [id: string, data: DataObject<T\>, token?: string]) => `Promise`<`void`\> ; `update`: (...`args`: [data: DataObject<T\>, where?: Where<T\>, token?: string]) => `Promise`<`Count`\> ; `updateById`: (...`args`: [id: string, data: DataObject<T\>, token?: string]) => `Promise`<`void`\>  }\>

#### Implementation of

Provider.value

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L57)
