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

- [AbstractConstructor](modules.md#abstractconstructor)
- [CacheMixinBase](modules.md#cachemixinbase)
- [MixinBaseClass](modules.md#mixinbaseclass)
- [OptionsWithForceUpdate](modules.md#optionswithforceupdate)
- [RedisConnectorExecuteReturnType](modules.md#redisconnectorexecutereturntype)
- [SaveInCacheValue](modules.md#saveincachevalue)
- [SearchInCacheResponse](modules.md#searchincacheresponse)

### Variables

- [DEFAULT\_CACHE\_PLUGIN\_OPTIONS](modules.md#default_cache_plugin_options)

## Type Aliases

### AbstractConstructor

Ƭ **AbstractConstructor**<`T`\>: (...`args`: `any`[]) => `T`

#### Type parameters

| Name |
| :------ |
| `T` |

#### Type declaration

• (`...args`)

##### Parameters

| Name | Type |
| :------ | :------ |
| `...args` | `any`[] |

#### Defined in

[types.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/types.ts#L51)

___

### CacheMixinBase

Ƭ **CacheMixinBase**<`T`, `ID`, `Relations`\>: [`MixinBaseClass`](modules.md#mixinbaseclass)<{ `entityClass`: typeof `Entity` & { `prototype`: `T`  } ; `find`: (`filter?`: `Filter`<`T`\>, `options?`: `AnyObject`) => `Promise`<`T` & `Relations`[]\> ; `findById`: (`id`: `ID`, `filter?`: `FilterExcludingWhere`<`T`\>, `options?`: `AnyObject`) => `Promise`<`T` & `Relations`\> ; `findOne`: (`filter?`: `Filter`<`T`\>, `options?`: `AnyObject`) => `Promise`<``null`` \| `T` & `Relations`\>  }\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity` |
| `ID` | `ID` |
| `Relations` | `Relations` |

#### Defined in

[types.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/types.ts#L58)

___

### MixinBaseClass

Ƭ **MixinBaseClass**<`T`\>: [`AbstractConstructor`](modules.md#abstractconstructor)<`T`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Defined in

[types.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/types.ts#L56)

___

### OptionsWithForceUpdate

Ƭ **OptionsWithForceUpdate**: `Options` & { `forceUpdate?`: `boolean`  }

#### Defined in

[types.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/types.ts#L49)

___

### RedisConnectorExecuteReturnType

Ƭ **RedisConnectorExecuteReturnType**: `ArrayBuffer` \| `Buffer` \| `number`

#### Defined in

[types.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/types.ts#L46)

___

### SaveInCacheValue

Ƭ **SaveInCacheValue**<`M`\>: `M` \| `M`[] \| ``null``

#### Type parameters

| Name |
| :------ |
| `M` |

#### Defined in

[types.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/types.ts#L48)

___

### SearchInCacheResponse

Ƭ **SearchInCacheResponse**<`M`\>: `M` \| `M`[] \| `undefined` \| ``null``

#### Type parameters

| Name |
| :------ |
| `M` |

#### Defined in

[types.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/types.ts#L47)

## Variables

### DEFAULT\_CACHE\_PLUGIN\_OPTIONS

• `Const` **DEFAULT\_CACHE\_PLUGIN\_OPTIONS**: [`CachePluginComponentOptions`](interfaces/CachePluginComponentOptions.md)

Default options for the component

#### Defined in

[types.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/types.ts#L29)
