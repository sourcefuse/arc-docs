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

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L30)

## Properties

### context

• `Private` **context**: `Context`

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L32)

___

### type

• **type**: `RelationType` = `RelationType.hasMany`

#### Implementation of

[IRestResolver](../interfaces/IRestResolver.md).[type](../interfaces/IRestResolver.md#type)

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L34)

## Methods

### \_resolveHasManyOnly

▸ `Private` **_resolveHasManyOnly**(`«destructured»`): `Promise`<`Map`<`S`[keyof `S`] \| `T`[keyof `T`], `S`[]\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `«destructured»` | [`RestResolverParams`](../modules.md#restresolverparams)<`T`, `S`\> & { `relationMetadata`: `HasManyDefinition`  } |

#### Returns

`Promise`<`Map`<`S`[keyof `S`] \| `T`[keyof `T`], `S`[]\>\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:128](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L128)

___

### \_resolveHasManyThrough

▸ `Private` **_resolveHasManyThrough**(`«destructured»`): `Promise`<`Map`<`S`[keyof `S`] \| `T`[keyof `T`], `S`[]\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `«destructured»` | [`RestResolverParams`](../modules.md#restresolverparams)<`T`, `S`\> & { `relationMetadata`: `HasManyDefinition`  } |

#### Returns

`Promise`<`Map`<`S`[keyof `S`] \| `T`[keyof `T`], `S`[]\>\>

#### Defined in

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L63)

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

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:179](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L179)

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

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:197](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L197)

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

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:214](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L214)

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

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:165](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L165)

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

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L35)

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

[packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts:206](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/rest-resolvers/has-many-resolver.service.ts#L206)
