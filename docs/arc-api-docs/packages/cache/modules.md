[@sourceloop/cache](README.md) / Exports

# @sourceloop/cache

## Table of contents

### Namespaces

- [CachePluginComponentBindings](modules/CachePluginComponentBindings.md)

### Enumerations

- [CacheStrategyTypes](enums/CacheStrategyTypes.md)

### Classes

- [CacheManager](classes/CacheManager.md)
- [CachePluginComponent](classes/CachePluginComponent.md)
- [RedisCacheStrategy](classes/RedisCacheStrategy.md)

### Interfaces

- [CacheEntity](interfaces/CacheEntity.md)
- [CachePluginComponentOptions](interfaces/CachePluginComponentOptions.md)
- [ICacheMixin](interfaces/ICacheMixin.md)
- [ICacheStrategy](interfaces/ICacheStrategy.md)

### Type Aliases

- [OptionsWithForceUpdate](modules.md#optionswithforceupdate)
- [RedisConnectorExecuteReturnType](modules.md#redisconnectorexecutereturntype)
- [SaveInCacheValue](modules.md#saveincachevalue)
- [SearchInCacheResponse](modules.md#searchincacheresponse)

### Variables

- [DEFAULT\_CACHE\_PLUGIN\_OPTIONS](modules.md#default_cache_plugin_options)

## Type Aliases

### OptionsWithForceUpdate

Ƭ **OptionsWithForceUpdate**: `Options` & { `forceUpdate?`: `boolean`  }

#### Defined in

[types.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/packages/cache/src/types.ts#L42)

___

### RedisConnectorExecuteReturnType

Ƭ **RedisConnectorExecuteReturnType**: `ArrayBuffer` \| `Buffer` \| `number`

#### Defined in

[types.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/packages/cache/src/types.ts#L39)

___

### SaveInCacheValue

Ƭ **SaveInCacheValue**<`M`\>: `M` \| `M`[] \| ``null``

#### Type parameters

| Name |
| :------ |
| `M` |

#### Defined in

[types.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/packages/cache/src/types.ts#L41)

___

### SearchInCacheResponse

Ƭ **SearchInCacheResponse**<`M`\>: `M` \| `M`[] \| `undefined` \| ``null``

#### Type parameters

| Name |
| :------ |
| `M` |

#### Defined in

[types.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/packages/cache/src/types.ts#L40)

## Variables

### DEFAULT\_CACHE\_PLUGIN\_OPTIONS

• `Const` **DEFAULT\_CACHE\_PLUGIN\_OPTIONS**: [`CachePluginComponentOptions`](interfaces/CachePluginComponentOptions.md)

Default options for the component

#### Defined in

[types.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/packages/cache/src/types.ts#L22)
