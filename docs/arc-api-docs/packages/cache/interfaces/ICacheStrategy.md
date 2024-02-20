[@sourceloop/cache](../README.md) / [Exports](../modules.md) / ICacheStrategy

# Interface: ICacheStrategy<M\>

Interface defining the component's options object

## Type parameters

| Name |
| :------ |
| `M` |

## Hierarchy

- [`CachePluginComponentOptions`](CachePluginComponentOptions.md)

  ↳ **`ICacheStrategy`**

## Implemented by

- [`RedisCacheStrategy`](../classes/RedisCacheStrategy.md)

## Table of contents

### Properties

- [cacheProvider](ICacheStrategy.md#cacheprovider)
- [getCacheDataSource](ICacheStrategy.md#getcachedatasource)
- [prefix](ICacheStrategy.md#prefix)
- [ttl](ICacheStrategy.md#ttl)

### Methods

- [clearCache](ICacheStrategy.md#clearcache)
- [saveInCache](ICacheStrategy.md#saveincache)
- [searchInCache](ICacheStrategy.md#searchincache)

## Properties

### cacheProvider

• **cacheProvider**: [`Redis`](../enums/CacheStrategyTypes.md#redis)

#### Inherited from

[CachePluginComponentOptions](CachePluginComponentOptions.md).[cacheProvider](CachePluginComponentOptions.md#cacheprovider)

#### Defined in

[types.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/types.ts#L21)

___

### getCacheDataSource

• **getCacheDataSource**: () => `Promise`<`DataSource` \| `SequelizeDataSource`\>

#### Type declaration

▸ (): `Promise`<`DataSource` \| `SequelizeDataSource`\>

##### Returns

`Promise`<`DataSource` \| `SequelizeDataSource`\>

#### Defined in

[strategies/cache-strategy.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/strategies/cache-strategy.ts#L10)

___

### prefix

• **prefix**: `string`

#### Inherited from

[CachePluginComponentOptions](CachePluginComponentOptions.md).[prefix](CachePluginComponentOptions.md#prefix)

#### Defined in

[types.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/types.ts#L22)

___

### ttl

• **ttl**: `number`

#### Inherited from

[CachePluginComponentOptions](CachePluginComponentOptions.md).[ttl](CachePluginComponentOptions.md#ttl)

#### Defined in

[types.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/types.ts#L23)

## Methods

### clearCache

▸ **clearCache**(): `Promise`<`void`\>

#### Returns

`Promise`<`void`\>

#### Defined in

[strategies/cache-strategy.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/strategies/cache-strategy.ts#L13)

___

### saveInCache

▸ **saveInCache**(`key`, `value`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |
| `value` | ``null`` \| `M` \| `M`[] |

#### Returns

`Promise`<`void`\>

#### Defined in

[strategies/cache-strategy.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/strategies/cache-strategy.ts#L12)

___

### searchInCache

▸ **searchInCache**(`key`): `Promise`<`undefined` \| ``null`` \| `M` \| `M`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |

#### Returns

`Promise`<`undefined` \| ``null`` \| `M` \| `M`[]\>

#### Defined in

[strategies/cache-strategy.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/strategies/cache-strategy.ts#L11)
