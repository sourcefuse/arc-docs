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

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L42)

## Properties

### \_validateToken

• `Private` **\_validateToken**: (`context`: [`RestServiceModifier`](RestServiceModifier.md)<`T`, `S`\>, `token?`: `string`) => `string`

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

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L46)

___

### req

• `Private` `Optional` **req**: `Request`<`ParamsDictionary`, `any`, `any`, `ParsedQs`, `Record`<`string`, `any`\>\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L50)

___

### resolverGetter

• `Private` **resolverGetter**: `Getter`<[`IRestResolver`](../interfaces/IRestResolver.md)<`T`, `S`\>[]\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L44)

___

### resolvers

• `Private` **resolvers**: [`IRestResolver`](../interfaces/IRestResolver.md)<`T`, `S`\>[]

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L41)

___

### token

• `Private` **token**: `string`

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L40)

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

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:303](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L303)

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

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:223](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L223)

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

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:177](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L177)

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

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:244](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L244)

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

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:209](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L209)

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

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:130](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L130)

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

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L78)

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

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:147](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L147)

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

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:144](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L144)

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

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:105](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L105)

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

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L81)

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

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:162](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L162)

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

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:150](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L150)

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

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:136](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L136)

___

### value

▸ **value**(): `Promise`<(`service`: [`CrudRestService`](../modules.md#crudrestservice)<`T`, `T`\>, `model`: [`ModelConstructor`](../modules.md#modelconstructor)<`T`\>, `config`: [`RestRelationConfig`](../modules.md#restrelationconfig)[]) => { `count`: (...`args`: [where?: Where<T\>, token?: string]) => `Promise`<`Count`\> ; `create`: (...`args`: [data: DataObject<T\>, token?: string]) => `Promise`<`T`\> ; `delete`: (...`args`: [where?: Where<T\>, token?: string]) => `Promise`<`void`\> ; `deleteById`: (...`args`: [id: string, token?: string]) => `Promise`<`void`\> ; `find`: (...`args`: [filter?: Filter<T\>, token?: string, inclusionConfig?: RestRelationConfig]) => `Promise`<`T`[]\> ; `findById`: (...`args`: [id: string, filter?: FilterExcludingWhere<T\>, token?: string]) => `Promise`<`T`\> ; `replaceById`: (...`args`: [id: string, data: DataObject<T\>, token?: string]) => `Promise`<`void`\> ; `update`: (...`args`: [data: DataObject<T\>, where?: Where<T\>, token?: string]) => `Promise`<`Count`\> ; `updateById`: (...`args`: [id: string, data: DataObject<T\>, token?: string]) => `Promise`<`void`\>  }\>

#### Returns

`Promise`<(`service`: [`CrudRestService`](../modules.md#crudrestservice)<`T`, `T`\>, `model`: [`ModelConstructor`](../modules.md#modelconstructor)<`T`\>, `config`: [`RestRelationConfig`](../modules.md#restrelationconfig)[]) => { `count`: (...`args`: [where?: Where<T\>, token?: string]) => `Promise`<`Count`\> ; `create`: (...`args`: [data: DataObject<T\>, token?: string]) => `Promise`<`T`\> ; `delete`: (...`args`: [where?: Where<T\>, token?: string]) => `Promise`<`void`\> ; `deleteById`: (...`args`: [id: string, token?: string]) => `Promise`<`void`\> ; `find`: (...`args`: [filter?: Filter<T\>, token?: string, inclusionConfig?: RestRelationConfig]) => `Promise`<`T`[]\> ; `findById`: (...`args`: [id: string, filter?: FilterExcludingWhere<T\>, token?: string]) => `Promise`<`T`\> ; `replaceById`: (...`args`: [id: string, data: DataObject<T\>, token?: string]) => `Promise`<`void`\> ; `update`: (...`args`: [data: DataObject<T\>, where?: Where<T\>, token?: string]) => `Promise`<`Count`\> ; `updateById`: (...`args`: [id: string, data: DataObject<T\>, token?: string]) => `Promise`<`void`\>  }\>

#### Implementation of

Provider.value

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-service-modifier.provider.ts#L56)
