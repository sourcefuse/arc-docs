[@sourceloop/cache](../README.md) / [Exports](../modules.md) / CacheService

# Class: CacheService

## Implements

- [`ICacheService`](../interfaces/ICacheService.md)

## Table of contents

### Constructors

- [constructor](CacheService.md#constructor)

### Properties

- [configuration](CacheService.md#configuration)
- [context](CacheService.md#context)
- [deletionMarkerPrefix](CacheService.md#deletionmarkerprefix)
- [insertionMarkerPrefix](CacheService.md#insertionmarkerprefix)
- [logger](CacheService.md#logger)
- [store](CacheService.md#store)
- [user](CacheService.md#user)

### Methods

- [buildKey](CacheService.md#buildkey)
- [executeAndSave](CacheService.md#executeandsave)
- [getFromCache](CacheService.md#getfromcache)
- [invalidate](CacheService.md#invalidate)
- [invalidatePrefix](CacheService.md#invalidateprefix)
- [invalidateTags](CacheService.md#invalidatetags)
- [replacer](CacheService.md#replacer)
- [saveInCache](CacheService.md#saveincache)
- [saveInsertionTimes](CacheService.md#saveinsertiontimes)
- [verifyInsertionTime](CacheService.md#verifyinsertiontime)

## Constructors

### constructor

• **new CacheService**(`logger`, `context`, `configuration`, `user?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `logger` | `ILogger` |
| `context` | `Context` |
| `configuration` | [`ICacheComponentOptions`](../interfaces/ICacheComponentOptions.md) & { `ttl`: `number`  } |
| `user?` | `IAuthUserWithPermissions`<`string`, `string`, `string`\> |

#### Defined in

[services/cache.service.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L43)

## Properties

### configuration

• `Private` `Readonly` **configuration**: [`ICacheComponentOptions`](../interfaces/ICacheComponentOptions.md) & { `ttl`: `number`  }

#### Defined in

[services/cache.service.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L49)

___

### context

• `Private` `Readonly` **context**: `Context`

#### Defined in

[services/cache.service.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L47)

___

### deletionMarkerPrefix

• `Private` `Readonly` **deletionMarkerPrefix**: ``"deletion-marker-"``

#### Defined in

[services/cache.service.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L20)

___

### insertionMarkerPrefix

• `Private` `Readonly` **insertionMarkerPrefix**: ``"insertion-marker-"``

#### Defined in

[services/cache.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L21)

___

### logger

• **logger**: `ILogger`

#### Implementation of

[ICacheService](../interfaces/ICacheService.md).[logger](../interfaces/ICacheService.md#logger)

#### Defined in

[services/cache.service.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L45)

___

### store

• `Private` `Readonly` **store**: [`ICacheStore`](../interfaces/ICacheStore.md)

#### Defined in

[services/cache.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L22)

___

### user

• `Private` `Optional` `Readonly` **user**: `IAuthUserWithPermissions`<`string`, `string`, `string`\>

#### Defined in

[services/cache.service.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L52)

## Methods

### buildKey

▸ **buildKey**(`...args`): `string`

The function takes in any number of arguments, converts them to JSON strings, concatenates them with
underscores, hashes the resulting string using SHA256 algorithm, and returns the hash value as a
string.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `...args` | `any`[] | args is a rest parameter that allows the function to accept an indefinite number of arguments. These arguments can be of any data type. |

#### Returns

`string`

The `buildKey` function is returning a string that is the SHA-256 hash of the concatenated
stringified values of all the arguments passed to the function, separated by underscores.

#### Implementation of

[ICacheService](../interfaces/ICacheService.md).[buildKey](../interfaces/ICacheService.md#buildkey)

#### Defined in

[services/cache.service.ts:185](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L185)

___

### executeAndSave

▸ **executeAndSave**<`T`\>(`fn`, `args`, `methodName`, `prefix`, `options?`, `cacheOptions?`): `Promise`<`T`\>

This is an async function that executes a given function, saves the result in cache, and returns the
result.

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `fn` | [`CacheMethod`](../modules.md#cachemethod)<`T`\> | `fn` is a function that will be executed and its result will be cached. It is of type `CacheMethod<T>`, which means it is a function that returns a Promise of type `T`. |
| `args` | `any`[] | args is an array of arguments that will be passed to the function being executed and cached. |
| `methodName` | `string` | The name of the method being executed and saved in cache. |
| `prefix` | `string` | The prefix parameter is a string that is used as a prefix for the cache key. It helps to differentiate between different types of cached data and avoid key collisions. |
| `options?` | [`ICachedMethodOptions`](../interfaces/ICachedMethodOptions.md) | `options` is an optional parameter of type `ICachedMethodOptions` which contains additional options for the cached method. It can include a `forceUpdate` boolean flag to indicate whether the cached value should be ignored and the method should be executed again, and a `tags` array to specify tags |
| `cacheOptions?` | [`ICacheOptions`](../interfaces/ICacheOptions.md) | `cacheOptions` is an optional parameter of type `ICacheOptions` that can be passed to the `executeAndSave` method. It is used to specify additional options for caching the result of the method call. These options can include things like the expiration time for the cached value, |

#### Returns

`Promise`<`T`\>

The function `executeAndSave` returns a Promise of type `T`.

#### Implementation of

[ICacheService](../interfaces/ICacheService.md).[executeAndSave](../interfaces/ICacheService.md#executeandsave)

#### Defined in

[services/cache.service.ts:138](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L138)

___

### getFromCache

▸ **getFromCache**<`T`\>(`prefix`, `key`, `tags`): `Promise`<`undefined` \| `T`\>

This is an asynchronous function that retrieves data from a cache based on a prefix, key, and tags.

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `prefix` | `string` | A string that serves as a prefix for the cache key. This helps to organize and differentiate cached data for different purposes or components. |
| `key` | `string` | The key is a string that is used to identify the cached data. It is used along with the prefix and tags to build a unique key for the cached data. When retrieving data from the cache, the key is used to look up the cached data. |
| `tags` | `string`[] | The `tags` parameter is an array of strings that are used to group related cache entries together. This allows for efficient invalidation of multiple cache entries at once by simply invalidating all entries with a certain tag. |

#### Returns

`Promise`<`undefined` \| `T`\>

a Promise that resolves to a value of type `T` or `undefined`. The type `T` is a generic
type that can be any type specified by the caller of the function.

#### Implementation of

[ICacheService](../interfaces/ICacheService.md).[getFromCache](../interfaces/ICacheService.md#getfromcache)

#### Defined in

[services/cache.service.ts:105](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L105)

___

### invalidate

▸ **invalidate**(`prefix`, `tags`): `Promise`<`void`\>

This function invalidates cache entries based on a given prefix and tags.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `prefix` | `string` | The prefix parameter is a string that represents the prefix of the cache keys that need to be invalidated. |
| `tags` | `string`[] | The `tags` parameter is an array of strings representing the tags that need to be invalidated. These tags are used to identify cached data that needs to be removed. |

#### Returns

`Promise`<`void`\>

#### Implementation of

[ICacheService](../interfaces/ICacheService.md).[invalidate](../interfaces/ICacheService.md#invalidate)

#### Defined in

[services/cache.service.ts:201](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L201)

___

### invalidatePrefix

▸ `Private` **invalidatePrefix**(`prefix`): [`string`, `number`, `number`]

#### Parameters

| Name | Type |
| :------ | :------ |
| `prefix` | `string` |

#### Returns

[`string`, `number`, `number`]

#### Defined in

[services/cache.service.ts:207](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L207)

___

### invalidateTags

▸ `Private` **invalidateTags**(`tags`): [`string`, `number`, `number`][]

#### Parameters

| Name | Type |
| :------ | :------ |
| `tags` | `string`[] |

#### Returns

[`string`, `number`, `number`][]

#### Defined in

[services/cache.service.ts:212](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L212)

___

### replacer

▸ `Private` `Readonly` **replacer**(`val`, `cache?`): `AnyObject` \| ``"[Circular]"``

#### Parameters

| Name | Type |
| :------ | :------ |
| `val` | `AnyObject` |
| `cache?` | `WeakSet`<`AnyObject`\> |

#### Returns

`AnyObject` \| ``"[Circular]"``

#### Defined in

[services/cache.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L24)

___

### saveInCache

▸ **saveInCache**<`T`\>(`prefix`, `key`, `tags`, `value`, `options?`): `Promise`<`void`\>

This is an async function that saves a value in cache with a given prefix, key, tags, and options.

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `prefix` | `string` | A string that will be used as a prefix for the cache key. This can be used to group related cache entries together. |
| `key` | `string` | The key is a string that represents the unique identifier for the cached data. It is used to retrieve the data from the cache later. |
| `tags` | `string`[] | An array of strings that represent tags associated with the cached value. These tags can be used to group and retrieve cached values later. |
| `value` | `T` | The value to be saved in the cache. It can be of any type, as the function is generic and can handle any type of value. |
| `options?` | [`ICacheOptions`](../interfaces/ICacheOptions.md) | ICacheOptions is an optional parameter that can be passed to the function. It is an interface that defines the following properties: |

#### Returns

`Promise`<`void`\>

#### Implementation of

[ICacheService](../interfaces/ICacheService.md).[saveInCache](../interfaces/ICacheService.md#saveincache)

#### Defined in

[services/cache.service.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L76)

___

### saveInsertionTimes

▸ `Private` **saveInsertionTimes**(`key`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/cache.service.ts:221](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L221)

___

### verifyInsertionTime

▸ `Private` **verifyInsertionTime**(`prefix`, `key`, `tags`): `Promise`<`boolean`\>

The function `verifyInsertionTime` checks if an insertion is valid based on insertion and deletion
markers and tag deletion times.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `prefix` | `string` | The `prefix` parameter in the `verifyInsertionTime` function is a string that represents a prefix used in building keys for data storage. |
| `key` | `string` | The `key` parameter in the `verifyInsertionTime` function is a string that represents a unique identifier for the data being inserted. It is used to build keys for insertion and deletion markers in the data store. |
| `tags` | `string`[] | The `tags` parameter in the `verifyInsertionTime` function is an array of strings representing tags associated with a key. |

#### Returns

`Promise`<`boolean`\>

The function `verifyInsertionTime` returns a boolean value. It returns `false` under the
following conditions:
1. If `insertionValue` is falsy (null, undefined, 0, false).
2. If any of the `tagDeletionTimes` is not falsy and greater than or equal to `insertionValue`.
3. If `deletionValue` is

#### Defined in

[services/cache.service.ts:243](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/cache.service.ts#L243)
