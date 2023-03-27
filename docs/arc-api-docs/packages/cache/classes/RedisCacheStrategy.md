[@sourceloop/cache](../README.md) / [Exports](../modules.md) / RedisCacheStrategy

# Class: RedisCacheStrategy<M\>

Interface defining the component's options object

## Type parameters

| Name |
| :------ |
| `M` |

## Implements

- [`ICacheStrategy`](../interfaces/ICacheStrategy.md)<`M`\>

## Table of contents

### Constructors

- [constructor](RedisCacheStrategy.md#constructor)

### Properties

- [cacheProvider](RedisCacheStrategy.md#cacheprovider)
- [getCacheDataSource](RedisCacheStrategy.md#getcachedatasource)
- [prefix](RedisCacheStrategy.md#prefix)

### Methods

- [checkDataSource](RedisCacheStrategy.md#checkdatasource)
- [clearCache](RedisCacheStrategy.md#clearcache)
- [executeRedisCommand](RedisCacheStrategy.md#executerediscommand)
- [saveInCache](RedisCacheStrategy.md#saveincache)
- [searchInCache](RedisCacheStrategy.md#searchincache)

## Constructors

### constructor

• **new RedisCacheStrategy**<`M`\>(`opts`)

#### Type parameters

| Name |
| :------ |
| `M` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `opts` | `Partial`<[`CachePluginComponentOptions`](../interfaces/CachePluginComponentOptions.md)\> |

#### Defined in

[strategies/redis/redis-cache-strategy.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L25)

## Properties

### cacheProvider

• **cacheProvider**: [`Redis`](../enums/CacheStrategyTypes.md#redis) = `CacheStrategyTypes.Redis`

#### Implementation of

[ICacheStrategy](../interfaces/ICacheStrategy.md).[cacheProvider](../interfaces/ICacheStrategy.md#cacheprovider)

#### Defined in

[strategies/redis/redis-cache-strategy.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L22)

___

### getCacheDataSource

• **getCacheDataSource**: () => `Promise`<`DataSource`\>

#### Type declaration

▸ (): `Promise`<`DataSource`\>

##### Returns

`Promise`<`DataSource`\>

#### Implementation of

[ICacheStrategy](../interfaces/ICacheStrategy.md).[getCacheDataSource](../interfaces/ICacheStrategy.md#getcachedatasource)

#### Defined in

[strategies/redis/redis-cache-strategy.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L21)

___

### prefix

• **prefix**: `string`

#### Implementation of

[ICacheStrategy](../interfaces/ICacheStrategy.md).[prefix](../interfaces/ICacheStrategy.md#prefix)

#### Defined in

[strategies/redis/redis-cache-strategy.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L23)

## Methods

### checkDataSource

▸ `Private` **checkDataSource**(): `void`

#### Returns

`void`

#### Defined in

[strategies/redis/redis-cache-strategy.ts:91](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L91)

___

### clearCache

▸ **clearCache**(`cacheOptions`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `cacheOptions` | [`IRedisCacheMixinOptions`](../interfaces/IRedisCacheMixinOptions.md) |

#### Returns

`Promise`<`void`\>

#### Implementation of

[ICacheStrategy](../interfaces/ICacheStrategy.md).[clearCache](../interfaces/ICacheStrategy.md#clearcache)

#### Defined in

[strategies/redis/redis-cache-strategy.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L66)

___

### executeRedisCommand

▸ **executeRedisCommand**(`command`, `args`): `Promise`<`undefined` \| `number` \| `Buffer`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `command` | `string` |
| `args` | (`string` \| `number`)[] |

#### Returns

`Promise`<`undefined` \| `number` \| `Buffer`\>

#### Defined in

[strategies/redis/redis-cache-strategy.ts:97](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L97)

___

### saveInCache

▸ **saveInCache**(`key`, `value`, `cacheOptions`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |
| `value` | ``null`` \| `M` \| `M`[] |
| `cacheOptions` | [`IRedisCacheMixinOptions`](../interfaces/IRedisCacheMixinOptions.md) |

#### Returns

`Promise`<`void`\>

#### Implementation of

[ICacheStrategy](../interfaces/ICacheStrategy.md).[saveInCache](../interfaces/ICacheStrategy.md#saveincache)

#### Defined in

[strategies/redis/redis-cache-strategy.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L47)

___

### searchInCache

▸ **searchInCache**(`key`, `cacheOptions`): `Promise`<`undefined` \| ``null`` \| `M` \| `M`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |
| `cacheOptions` | [`IRedisCacheMixinOptions`](../interfaces/IRedisCacheMixinOptions.md) |

#### Returns

`Promise`<`undefined` \| ``null`` \| `M` \| `M`[]\>

#### Implementation of

[ICacheStrategy](../interfaces/ICacheStrategy.md).[searchInCache](../interfaces/ICacheStrategy.md#searchincache)

#### Defined in

[strategies/redis/redis-cache-strategy.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L29)
