[@sourceloop/cache](README.md) / Exports

# @sourceloop/cache

## Table of contents

### Namespaces

- [CacheComponentBindings](modules/CacheComponentBindings.md)

### Enumerations

- [TenantGuardErrorKeys](enums/TenantGuardErrorKeys.md)

### Classes

- [CacheService](classes/CacheService.md)
- [CachingComponent](classes/CachingComponent.md)
- [InMemoryStoreStrategy](classes/InMemoryStoreStrategy.md)
- [RedisStoreStrategy](classes/RedisStoreStrategy.md)

### Interfaces

- [ICacheComponentOptions](interfaces/ICacheComponentOptions.md)
- [ICacheMixinOptions](interfaces/ICacheMixinOptions.md)
- [ICacheOptions](interfaces/ICacheOptions.md)
- [ICacheService](interfaces/ICacheService.md)
- [ICacheStore](interfaces/ICacheStore.md)
- [ICachedMethodOptions](interfaces/ICachedMethodOptions.md)
- [ICachedRepository](interfaces/ICachedRepository.md)
- [ICachedService](interfaces/ICachedService.md)

### Type Aliases

- [AbstractConstructor](modules.md#abstractconstructor)
- [CacheMethod](modules.md#cachemethod)

### Variables

- [AUTH\_USER\_KEY](modules.md#auth_user_key)
- [CachingComponentNamespace](modules.md#cachingcomponentnamespace)

### Functions

- [CacheMixin](modules.md#cachemixin)
- [cacheInvalidator](modules.md#cacheinvalidator)
- [cachedItem](modules.md#cacheditem)

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

[types.ts:113](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L113)

___

### CacheMethod

Ƭ **CacheMethod**<`T`\>: (...`args`: `any`[]) => `Promise`<`T`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Type declaration

▸ (`...args`): `Promise`<`T`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `...args` | `any`[] |

##### Returns

`Promise`<`T`\>

#### Defined in

[types.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L108)

## Variables

### AUTH\_USER\_KEY

• `Const` **AUTH\_USER\_KEY**: `BindingKey`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Defined in

[keys.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/keys.ts#L24)

___

### CachingComponentNamespace

• `Const` **CachingComponentNamespace**: ``"sourceloop.caching.extension"``

#### Defined in

[keys.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/keys.ts#L5)

## Functions

### CacheMixin

▸ **CacheMixin**<`M`, `ID`, `Relations`, `S`\>(`superClass`, `cacheOptions?`): typeof `superClass` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`ICachedRepository`](interfaces/ICachedRepository.md)<`M`, `ID`, `Relations`\>\> & { `prototype`: [`ICachedRepository`](interfaces/ICachedRepository.md)<`M`, `ID`, `Relations`\>  }

This is a mixin function that adds caching functionality to a given repository class.

#### Type parameters

| Name | Type |
| :------ | :------ |
| `M` | extends `Entity`<`M`\> |
| `ID` | `ID` |
| `Relations` | extends `object` |
| `S` | extends [`AbstractConstructor`](modules.md#abstractconstructor)<`DefaultCrudRepository`<`M`, `ID`, `Relations`\>\> |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `superClass` | `S` & [`AbstractConstructor`](modules.md#abstractconstructor)<`DefaultCrudRepository`<`M`, `ID`, `Relations`\>\> | The superclass is a generic type parameter that extends the `DefaultCrudRepository` class. It represents the base repository class that the `CacheMixin` will extend and add caching functionality to. |
| `cacheOptions?` | [`ICacheMixinOptions`](interfaces/ICacheMixinOptions.md) | `cacheOptions` is an optional parameter of type `ICacheMixinOptions`. It is used to configure the caching behavior of the repository. |

#### Returns

typeof `superClass` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`ICachedRepository`](interfaces/ICachedRepository.md)<`M`, `ID`, `Relations`\>\> & { `prototype`: [`ICachedRepository`](interfaces/ICachedRepository.md)<`M`, `ID`, `Relations`\>  }

#### Defined in

[mixins/cache.mixin.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/mixins/cache.mixin.ts#L32)

___

### cacheInvalidator

▸ **cacheInvalidator**<`T`\>(`tags?`): <S\>(`target`: `T`, `methodName`: `string`, `descriptor`: `TypedPropertyDescriptor`<[`CacheMethod`](modules.md#cachemethod)<`S`\>\>) => `TypedPropertyDescriptor`<[`CacheMethod`](modules.md#cachemethod)<`S`\>\>

This is a TypeScript function that invalidates cache items based on specified tags.

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`ICachedService`](interfaces/ICachedService.md) |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `tags` | `string`[] | `[]` | An optional array of strings that represent tags associated with the cached data. These tags can be used to selectively invalidate cached data. |

#### Returns

`fn`

The function `cacheInvalidator` is being returned.

▸ <`S`\>(`target`, `methodName`, `descriptor`): `TypedPropertyDescriptor`<[`CacheMethod`](modules.md#cachemethod)<`S`\>\>

##### Type parameters

| Name |
| :------ |
| `S` |

##### Parameters

| Name | Type |
| :------ | :------ |
| `target` | `T` |
| `methodName` | `string` |
| `descriptor` | `TypedPropertyDescriptor`<[`CacheMethod`](modules.md#cachemethod)<`S`\>\> |

##### Returns

`TypedPropertyDescriptor`<[`CacheMethod`](modules.md#cachemethod)<`S`\>\>

#### Defined in

[decorators/cache-invalidator.decorator.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/decorators/cache-invalidator.decorator.ts#L9)

___

### cachedItem

▸ **cachedItem**<`T`\>(`tags?`, `ignoredParamIndexes?`): <S\>(`target`: `T`, `methodName`: `string`, `descriptor?`: `TypedPropertyDescriptor`<[`CacheMethod`](modules.md#cachemethod)<`S`\>\>) => `TypedPropertyDescriptor`<[`CacheMethod`](modules.md#cachemethod)<`S`\>\>

This is a TypeScript decorator function that caches the result of a method call and retrieves it
from the cache if available, otherwise it calls the original method and saves the result in the
cache.

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`ICachedService`](interfaces/ICachedService.md) |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `tags` | `string`[] | `[]` | The `tags` parameter is an optional array of strings that can be passed to the `cachedItem` decorator function. These tags can be used to group cached items together and make it easier to invalidate or clear a specific group of cached items. |
| `ignoredParamIndexes` | `number`[] | `[]` | - |

#### Returns

`fn`

The `cachedItem` function returns a decorator function that can be used to decorate a class
method with caching functionality.

▸ <`S`\>(`target`, `methodName`, `descriptor?`): `TypedPropertyDescriptor`<[`CacheMethod`](modules.md#cachemethod)<`S`\>\>

##### Type parameters

| Name |
| :------ |
| `S` |

##### Parameters

| Name | Type |
| :------ | :------ |
| `target` | `T` |
| `methodName` | `string` |
| `descriptor?` | `TypedPropertyDescriptor`<[`CacheMethod`](modules.md#cachemethod)<`S`\>\> |

##### Returns

`TypedPropertyDescriptor`<[`CacheMethod`](modules.md#cachemethod)<`S`\>\>

#### Defined in

[decorators/cached-item.decorator.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/decorators/cached-item.decorator.ts#L13)
