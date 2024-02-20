[@sourceloop/core](../README.md) / [Exports](../modules.md) / HasOneRestResolver

# Class: HasOneRestResolver<Source, Target\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `Source` | extends `Entity` |
| `Target` | extends `Entity` |

## Implements

- [`IRestResolver`](../interfaces/IRestResolver.md)<`Source`, `Target`\>

## Table of contents

### Constructors

- [constructor](HasOneRestResolver.md#constructor)

### Properties

- [context](HasOneRestResolver.md#context)
- [type](HasOneRestResolver.md#type)

### Methods

- [addConditionToScope](HasOneRestResolver.md#addconditiontoscope)
- [findRelatedData](HasOneRestResolver.md#findrelateddata)
- [getKeyFrom](HasOneRestResolver.md#getkeyfrom)
- [getService](HasOneRestResolver.md#getservice)
- [link](HasOneRestResolver.md#link)
- [resolve](HasOneRestResolver.md#resolve)
- [toPascalCase](HasOneRestResolver.md#topascalcase)

## Constructors

### constructor

• **new HasOneRestResolver**<`Source`, `Target`\>(`context`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `Source` | extends `Entity`<`Source`\> |
| `Target` | extends `Entity`<`Target`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `context` | `Context` |

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts#L29)

## Properties

### context

• `Private` **context**: `Context`

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts#L31)

___

### type

• **type**: `RelationType` = `RelationType.hasOne`

#### Implementation of

[IRestResolver](../interfaces/IRestResolver.md).[type](../interfaces/IRestResolver.md#type)

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts#L28)

## Methods

### addConditionToScope

▸ `Private` **addConditionToScope**(`keyTo`, `ids`, `scope?`): `Promise`<{ `where`: `Where`<`AnyObject`\>  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `keyTo` | keyof `Target` |
| `ids` | `Source`[keyof `Source`][] |
| `scope?` | `Filter`<`Target`\> |

#### Returns

`Promise`<{ `where`: `Where`<`AnyObject`\>  }\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts:98](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts#L98)

___

### findRelatedData

▸ `Private` **findRelatedData**(`service`, `filter`, `token?`, `config?`): `Promise`<`Target`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `service` | [`ModifiedRestService`](../modules.md#modifiedrestservice)<`Target`\> |
| `filter` | `Filter`<`Target`\> |
| `token?` | `string` |
| `config?` | [`RestRelationConfig`](../modules.md#restrelationconfig) |

#### Returns

`Promise`<`Target`[]\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts:116](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts#L116)

___

### getKeyFrom

▸ `Private` **getKeyFrom**(`relationMetadata`): keyof `Source`

#### Parameters

| Name | Type |
| :------ | :------ |
| `relationMetadata` | `HasOneDefinition` |

#### Returns

keyof `Source`

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts:125](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts#L125)

___

### getService

▸ `Private` **getService**(`config`): `Promise`<[`ModifiedRestService`](../modules.md#modifiedrestservice)<`Target`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `config` | [`RestRelationConfig`](../modules.md#restrelationconfig) |

#### Returns

`Promise`<[`ModifiedRestService`](../modules.md#modifiedrestservice)<`Target`\>\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts:142](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts#L142)

___

### link

▸ **link**(`-`): `Promise`<`Source`\>

It takes a parent object, looks up the foreign key on the parent, and then uses that foreign key to
look up and link the related object in the resolvedDataMap

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `-` | [`RestLinkerParams`](../modules.md#restlinkerparams)<`Source`, `Target`\> & { `relationMetadata`: `HasOneDefinition`  } | `relationMetadata` is the metadata for the relation being linked. |

#### Returns

`Promise`<`Source`\>

The parent object with the relationName property set to the
resolvedDataMap.get(parent[keyFrom])

#### Implementation of

[IRestResolver](../interfaces/IRestResolver.md).[link](../interfaces/IRestResolver.md#link)

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts#L83)

___

### resolve

▸ **resolve**(`-`): `Promise`<`Map`<`Target`[keyof `Target`] \| `Source`[keyof `Source`], `Target`\>\>

It takes the results of the query, finds the foreign key in each result, and then uses that key to
find the related record in the related service

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `-` | [`RestResolverParams`](../modules.md#restresolverparams)<`Source`, `Target`\> & { `relationMetadata`: `HasOneDefinition`  } | `relationConfig` is the configuration object for the relation. |

#### Returns

`Promise`<`Map`<`Target`[keyof `Target`] \| `Source`[keyof `Source`], `Target`\>\>

A map of related records.

#### Implementation of

[IRestResolver](../interfaces/IRestResolver.md).[resolve](../interfaces/IRestResolver.md#resolve)

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts#L39)

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

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts:134](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-one-resolver.service.ts#L134)
