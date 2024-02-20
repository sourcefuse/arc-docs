[@sourceloop/core](../README.md) / [Exports](../modules.md) / BelongsToRestResolver

# Class: BelongsToRestResolver<T, S\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity` |
| `S` | extends `Entity` |

## Implements

- [`IRestResolver`](../interfaces/IRestResolver.md)<`T`, `S`\>

## Table of contents

### Constructors

- [constructor](BelongsToRestResolver.md#constructor)

### Properties

- [context](BelongsToRestResolver.md#context)
- [type](BelongsToRestResolver.md#type)

### Methods

- [addConditionToScope](BelongsToRestResolver.md#addconditiontoscope)
- [getService](BelongsToRestResolver.md#getservice)
- [link](BelongsToRestResolver.md#link)
- [resolve](BelongsToRestResolver.md#resolve)
- [toPascalCase](BelongsToRestResolver.md#topascalcase)

## Constructors

### constructor

• **new BelongsToRestResolver**<`T`, `S`\>(`context`)

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

[packages/core/src/components/proxy-builder/services/rest-resolvers/belongs-to-resolver.service.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/belongs-to-resolver.service.ts#L29)

## Properties

### context

• `Private` **context**: `Context`

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/belongs-to-resolver.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/belongs-to-resolver.service.ts#L31)

___

### type

• **type**: `RelationType` = `RelationType.belongsTo`

#### Implementation of

[IRestResolver](../interfaces/IRestResolver.md).[type](../interfaces/IRestResolver.md#type)

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/belongs-to-resolver.service.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/belongs-to-resolver.service.ts#L28)

## Methods

### addConditionToScope

▸ `Private` **addConditionToScope**(`ids`, `scope?`): `Promise`<{ `where`: `Where`<`AnyObject`\>  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `ids` | `T`[keyof `T`][] |
| `scope?` | `Filter`<`S`\> |

#### Returns

`Promise`<{ `where`: `Where`<`AnyObject`\>  }\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/belongs-to-resolver.service.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/belongs-to-resolver.service.ts#L93)

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

[packages/core/src/components/proxy-builder/services/rest-resolvers/belongs-to-resolver.service.ts:115](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/belongs-to-resolver.service.ts#L115)

___

### link

▸ **link**(`-`): `Promise`<`T`\>

It takes a parent object, looks up the foreign key on the parent, and then uses that foreign key to
look up and link the related object in the resolvedDataMap

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `-` | [`RestLinkerParams`](../modules.md#restlinkerparams)<`T`, `S`\> & { `relationMetadata`: `BelongsToDefinition`  } | `relationMetadata` is the metadata for the relation being linked. |

#### Returns

`Promise`<`T`\>

The parent object with the relationName property set to the
resolvedDataMap.get(parent[keyFrom])

#### Implementation of

[IRestResolver](../interfaces/IRestResolver.md).[link](../interfaces/IRestResolver.md#link)

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/belongs-to-resolver.service.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/belongs-to-resolver.service.ts#L78)

___

### resolve

▸ **resolve**(`-`): `Promise`<`Map`<`S`[keyof `S`] \| `T`[keyof `T`], `S`\>\>

It takes the results of the query, finds the foreign key in each result, and then uses that key to
find the related record in the related service

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `-` | [`RestResolverParams`](../modules.md#restresolverparams)<`T`, `S`\> & { `relationMetadata`: `BelongsToDefinition`  } | `relationConfig` is the configuration object for the relation. |

#### Returns

`Promise`<`Map`<`S`[keyof `S`] \| `T`[keyof `T`], `S`\>\>

A map of related records.

#### Implementation of

[IRestResolver](../interfaces/IRestResolver.md).[resolve](../interfaces/IRestResolver.md#resolve)

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/belongs-to-resolver.service.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/belongs-to-resolver.service.ts#L39)

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

[packages/core/src/components/proxy-builder/services/rest-resolvers/belongs-to-resolver.service.ts:107](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/belongs-to-resolver.service.ts#L107)
