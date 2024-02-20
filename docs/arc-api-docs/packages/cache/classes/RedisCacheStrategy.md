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
- [deletionKey](RedisCacheStrategy.md#deletionkey)
- [getCacheDataSource](RedisCacheStrategy.md#getcachedatasource)
- [prefix](RedisCacheStrategy.md#prefix)
- [ttl](RedisCacheStrategy.md#ttl)

### Methods

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
| `opts` | [`CachePluginComponentOptions`](../interfaces/CachePluginComponentOptions.md) |

#### Defined in

[strategies/redis/redis-cache-strategy.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L27)

## Properties

### cacheProvider

• **cacheProvider**: [`Redis`](../enums/CacheStrategyTypes.md#redis) = `CacheStrategyTypes.Redis`

#### Implementation of

[ICacheStrategy](../interfaces/ICacheStrategy.md).[cacheProvider](../interfaces/ICacheStrategy.md#cacheprovider)

#### Defined in

[strategies/redis/redis-cache-strategy.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L22)

___

### deletionKey

• **deletionKey**: `string`

#### Defined in

[strategies/redis/redis-cache-strategy.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L25)

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

[strategies/redis/redis-cache-strategy.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L21)

___

### prefix

• **prefix**: `string`

#### Implementation of

[ICacheStrategy](../interfaces/ICacheStrategy.md).[prefix](../interfaces/ICacheStrategy.md#prefix)

#### Defined in

[strategies/redis/redis-cache-strategy.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L23)

___

### ttl

• **ttl**: `number`

#### Implementation of

[ICacheStrategy](../interfaces/ICacheStrategy.md).[ttl](../interfaces/ICacheStrategy.md#ttl)

#### Defined in

[strategies/redis/redis-cache-strategy.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L24)

## Methods

### clearCache

▸ **clearCache**(): `Promise`<`void`\>

#### Returns

`Promise`<`void`\>

#### Implementation of

[ICacheStrategy](../interfaces/ICacheStrategy.md).[clearCache](../interfaces/ICacheStrategy.md#clearcache)

#### Defined in

[strategies/redis/redis-cache-strategy.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L78)

___

### executeRedisCommand

▸ **executeRedisCommand**<`T`\>(`command`, `args`): `Promise`<`undefined` \| `T`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`RedisConnectorExecuteReturnType`](../modules.md#redisconnectorexecutereturntype) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `command` | `string` |
| `args` | (`string` \| `number`)[] |

#### Returns

`Promise`<`undefined` \| `T`\>

#### Defined in

[strategies/redis/redis-cache-strategy.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L88)

___

### saveInCache

▸ **saveInCache**(`key`, `value`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |
| `value` | [`SaveInCacheValue`](../modules.md#saveincachevalue)<`M`\> |

#### Returns

`Promise`<`void`\>

#### Implementation of

[ICacheStrategy](../interfaces/ICacheStrategy.md).[saveInCache](../interfaces/ICacheStrategy.md#saveincache)

#### Defined in

[strategies/redis/redis-cache-strategy.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L59)

___

### searchInCache

▸ **searchInCache**(`key`): `Promise`<[`SearchInCacheResponse`](../modules.md#searchincacheresponse)<`M`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |

#### Returns

`Promise`<[`SearchInCacheResponse`](../modules.md#searchincacheresponse)<`M`\>\>

#### Implementation of

[ICacheStrategy](../interfaces/ICacheStrategy.md).[searchInCache](../interfaces/ICacheStrategy.md#searchincache)

#### Defined in

[strategies/redis/redis-cache-strategy.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/strategies/redis/redis-cache-strategy.ts#L33)
