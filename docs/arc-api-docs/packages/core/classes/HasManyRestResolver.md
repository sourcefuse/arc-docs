[@sourceloop/core](../README.md) / [Exports](../modules.md) / HasManyRestResolver

# Class: HasManyRestResolver<T, S\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity` |
| `S` | extends `Entity` |

## Implements

- [`IRestResolver`](../interfaces/IRestResolver.md)<`T`, `S`\>

## Table of contents

### Constructors

- [constructor](HasManyRestResolver.md#constructor)

### Properties

- [context](HasManyRestResolver.md#context)
- [type](HasManyRestResolver.md#type)

### Methods

- [\_extractThroughData](HasManyRestResolver.md#_extractthroughdata)
- [\_getThroughKeys](HasManyRestResolver.md#_getthroughkeys)
- [\_mapRelatedResults](HasManyRestResolver.md#_maprelatedresults)
- [\_resolveHasManyOnly](HasManyRestResolver.md#_resolvehasmanyonly)
- [\_resolveHasManyThrough](HasManyRestResolver.md#_resolvehasmanythrough)
- [addConditionToScope](HasManyRestResolver.md#addconditiontoscope)
- [findRelatedData](HasManyRestResolver.md#findrelateddata)
- [getService](HasManyRestResolver.md#getservice)
- [link](HasManyRestResolver.md#link)
- [resolve](HasManyRestResolver.md#resolve)
- [toPascalCase](HasManyRestResolver.md#topascalcase)

## Constructors

### constructor

• **new HasManyRestResolver**<`T`, `S`\>(`context`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity`<`T`\> |
| `S` | extends `Entity`<`S`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `context` | `Context` |

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L30)

## Properties

### context

• `Private` `Readonly` **context**: `Context`

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L32)

___

### type

• **type**: `RelationType` = `RelationType.hasMany`

#### Implementation of

[IRestResolver](../interfaces/IRestResolver.md).[type](../interfaces/IRestResolver.md#type)

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L34)

## Methods

### \_extractThroughData

▸ `Private` **_extractThroughData**(`results`, `throughModelProperty`, `keyToThrough`, `keyFromThrough`): `Promise`<{ `idsSet`: `Set`<`T`[keyof `T`]\> ; `throughMap`: `Map`<`S`[keyof `S`], `S`[keyof `S`]\>  }\>

The function `_extractThroughData` extracts data from an array of objects based on specified
properties and returns a set of IDs and a map of key-value pairs.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `results` | `T`[] | The `results` parameter is an array of objects of type `T`. |
| `throughModelProperty` | keyof `T` | The `throughModelProperty` parameter is the property of the object `T` that contains the through data. |
| `keyToThrough` | `string` | The `keyToThrough` parameter in the `_extractThroughData` function represents the key in the through data object that is used as the identifier for mapping purposes. It is the key that is used to uniquely identify each item in the through data. |
| `keyFromThrough` | `string` | The `keyFromThrough` parameter in the `_extractThroughData` function represents the key in the through data object that you want to extract values from and store in the `throughMap`. This key is used as the value in the map where the key is the `keyToThrough` value. |

#### Returns

`Promise`<{ `idsSet`: `Set`<`T`[keyof `T`]\> ; `throughMap`: `Map`<`S`[keyof `S`], `S`[keyof `S`]\>  }\>

The function `_extractThroughData` returns an object with two properties: `idsSet`, which
is a Set containing unique values extracted from the `keyToThrough` property of the through data,
and `throughMap`, which is a Map where the key is extracted from the `keyToThrough` property and
the value is extracted from the `keyFromThrough` property of the through data.

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:160](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L160)

___

### \_getThroughKeys

▸ `Private` **_getThroughKeys**(`relationMetadata`): `Object`

The function `_getThroughKeys` retrieves key information for a HasMany relation, including keys
from a through model if specified.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `relationMetadata` | `HasManyDefinition` | The `relationMetadata` parameter is of type `HasManyDefinition`, which likely contains metadata information about a has-many relationship in a data model. It may include details such as the source and target models, keys used for the relationship, and possibly a through model for a many-to-many relationship. |

#### Returns

`Object`

The function `_getThroughKeys` returns an object with three properties: `keyFromThrough`,
`keyToThrough`, and `keyTo`.

| Name | Type |
| :------ | :------ |
| `keyFromThrough` | `string` |
| `keyTo` | keyof `S` |
| `keyToThrough` | `string` |

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:128](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L128)

___

### \_mapRelatedResults

▸ `Private` **_mapRelatedResults**(`relatedResults`, `throughMap`, `keyTo`, `relationMetadata`): `Map`<`S`[keyof `S`] \| `T`[keyof `T`], `S`[]\>

The function `_mapRelatedResults` creates a map of related results based on a specified key and
relation metadata.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `relatedResults` | `S`[] | The `relatedResults` parameter is an array of elements of type `S`, which represents the related results that need to be mapped. |
| `throughMap` | `Map`<`S`[keyof `S`], `S`[keyof `S`]\> | The `throughMap` parameter is a Map that maps a key from one type `S` to another key of type `S`. It is used to retrieve a key from the `relatedResults` based on the `keyTo` property of type `S`. |
| `keyTo` | keyof `S` | The `keyTo` parameter in the `_mapRelatedResults` function is a property key of the type `S`. It is used to access a specific property of the items in the `relatedResults` array. |
| `relationMetadata` | `HasManyDefinition` | The `relationMetadata` parameter in the `_mapRelatedResults` function is of type `HasManyDefinition`. It likely contains metadata information related to a has-many relationship in the context of the function's operation. This metadata could include details such as the through model, model names, and other relevant information |

#### Returns

`Map`<`S`[keyof `S`] \| `T`[keyof `T`], `S`[]\>

The function `_mapRelatedResults` is returning a `Map` object that maps keys of type
`S[keyof S] | T[keyof T]` to arrays of type `S[]`.

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:202](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L202)

___

### \_resolveHasManyOnly

▸ `Private` **_resolveHasManyOnly**(`«destructured»`): `Promise`<`Map`<`S`[keyof `S`] \| `T`[keyof `T`], `S`[]\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `«destructured»` | [`RestResolverParams`](../modules.md#restresolverparams)<`T`, `S`\> & { `relationMetadata`: `HasManyDefinition`  } |

#### Returns

`Promise`<`Map`<`S`[keyof `S`] \| `T`[keyof `T`], `S`[]\>\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:227](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L227)

___

### \_resolveHasManyThrough

▸ `Private` **_resolveHasManyThrough**(`-`): `Promise`<`Map`<`S`[keyof `S`] \| `T`[keyof `T`], `S`[]\>\>

The function `_resolveHasManyThrough` handles resolving a has-many-through relation in TypeScript,
extracting necessary data and mapping related results.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `-` | [`RestResolverParams`](../modules.md#restresolverparams)<`T`, `S`\> & { `relationMetadata`: `HasManyDefinition`  } | The `_resolveHasManyThrough` function is responsible for resolving a has-many-through relationship in a REST API resolver. Here is an explanation of the parameters used in the function: |

#### Returns

`Promise`<`Map`<`S`[keyof `S`] \| `T`[keyof `T`], `S`[]\>\>

The `_resolveHasManyThrough` method returns the mapped related results based on the
provided parameters and configurations.

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L72)

___

### addConditionToScope

▸ `Private` **addConditionToScope**(`ids`, `field`, `scope?`): `Promise`<{ `where`: `Where`<`AnyObject`\>  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `ids` | `T`[keyof `T`][] |
| `field` | `string` |
| `scope?` | `Filter`<`S`\> |

#### Returns

`Promise`<{ `where`: `Where`<`AnyObject`\>  }\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:278](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L278)

___

### findRelatedData

▸ `Private` **findRelatedData**(`service`, `filter`, `token?`, `config?`): `Promise`<`S`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `service` | [`ModifiedRestService`](../modules.md#modifiedrestservice)<`S`\> |
| `filter` | `Filter`<`S`\> |
| `token?` | `string` |
| `config?` | [`RestRelationConfig`](../modules.md#restrelationconfig) |

#### Returns

`Promise`<`S`[]\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:296](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L296)

___

### getService

▸ `Private` **getService**(`config`): `Promise`<[`ModifiedRestService`](../modules.md#modifiedrestservice)<`S`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `config` | [`RestRelationConfig`](../modules.md#restrelationconfig) |

#### Returns

`Promise`<[`ModifiedRestService`](../modules.md#modifiedrestservice)<`S`\>\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:313](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L313)

___

### link

▸ **link**(`params`): `Promise`<`T`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `params` | [`RestLinkerParams`](../modules.md#restlinkerparams)<`T`, `S`\> & { `relationMetadata`: `HasManyDefinition`  } |

#### Returns

`Promise`<`T`\>

#### Implementation of

[IRestResolver](../interfaces/IRestResolver.md).[link](../interfaces/IRestResolver.md#link)

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:264](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L264)

___

### resolve

▸ **resolve**(`«destructured»`): `Promise`<[`ResolvedMap`](../modules.md#resolvedmap)<`T`, `S`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `«destructured»` | [`RestResolverParams`](../modules.md#restresolverparams)<`T`, `S`\> & { `relationMetadata`: `HasManyDefinition`  } |

#### Returns

`Promise`<[`ResolvedMap`](../modules.md#resolvedmap)<`T`, `S`\>\>

#### Implementation of

[IRestResolver](../interfaces/IRestResolver.md).[resolve](../interfaces/IRestResolver.md#resolve)

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L35)

___

### toPascalCase

▸ `Private` **toPascalCase**(`str`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `str` | `string` |

#### Returns

`string`

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:305](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L305)
