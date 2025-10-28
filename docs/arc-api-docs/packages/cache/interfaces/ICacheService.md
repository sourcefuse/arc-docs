[@sourceloop/cache](../README.md) / [Exports](../modules.md) / ICacheService

# Interface: ICacheService

## Implemented by

- [`CacheService`](../classes/CacheService.md)

## Table of contents

### Properties

- [logger](ICacheService.md#logger)

### Methods

- [buildKey](ICacheService.md#buildkey)
- [executeAndSave](ICacheService.md#executeandsave)
- [getFromCache](ICacheService.md#getfromcache)
- [invalidate](ICacheService.md#invalidate)
- [saveInCache](ICacheService.md#saveincache)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[types.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L53)

## Methods

### buildKey

▸ **buildKey**(`...args`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `...args` | `any`[] |

#### Returns

`string`

#### Defined in

[types.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L56)

___

### executeAndSave

▸ **executeAndSave**<`T`\>(`fn`, `args`, `methodName`, `prefix`, `options?`, `cacheOptions?`): `Promise`<`T`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `fn` | [`CacheMethod`](../modules.md#cachemethod)<`T`\> |
| `args` | `any`[] |
| `methodName` | `string` |
| `prefix` | `string` |
| `options?` | [`ICachedMethodOptions`](ICachedMethodOptions.md) |
| `cacheOptions?` | [`ICacheOptions`](ICacheOptions.md) |

#### Returns

`Promise`<`T`\>

#### Defined in

[types.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L71)

___

### getFromCache

▸ **getFromCache**<`T`\>(`prefix`, `key`, `tags`): `Promise`<`undefined` \| `T`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `prefix` | `string` |
| `key` | `string` |
| `tags` | `string`[] |

#### Returns

`Promise`<`undefined` \| `T`\>

#### Defined in

[types.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L58)

___

### invalidate

▸ **invalidate**(`prefix`, `tags`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `prefix` | `string` |
| `tags` | `string`[] |

#### Returns

`Promise`<`void`\>

#### Defined in

[types.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L70)

___

### saveInCache

▸ **saveInCache**<`T`\>(`prefix`, `key`, `tags`, `value`, `options?`): `Promise`<`void`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `prefix` | `string` |
| `key` | `string` |
| `tags` | `string`[] |
| `value` | `T` |
| `options?` | [`ICacheOptions`](ICacheOptions.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[types.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L63)
