[@sourceloop/cache](../README.md) / [Exports](../modules.md) / CacheManager

# Class: CacheManager

## Table of contents

### Constructors

- [constructor](CacheManager.md#constructor)

### Properties

- [options](CacheManager.md#options)

### Methods

- [CacheRepositoryMixin](CacheManager.md#cacherepositorymixin)

## Constructors

### constructor

• **new CacheManager**()

## Properties

### options

▪ `Static` **options**: [`CachePluginComponentOptions`](../interfaces/CachePluginComponentOptions.md) = `DEFAULT_CACHE_PLUGIN_OPTIONS`

#### Defined in

[mixins/cache.mixin.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/mixins/cache.mixin.ts#L28)

## Methods

### CacheRepositoryMixin

▸ `Static` **CacheRepositoryMixin**<`M`, `ID`, `Relations`, `R`\>(`baseClass`, `cacheOptions`): `R` & [`AbstractConstructor`](../modules.md#abstractconstructor)<[`ICacheMixin`](../interfaces/ICacheMixin.md)<`M`, `ID`\>\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `M` | extends `Entity`<`M`\> |
| `ID` | `ID` |
| `Relations` | extends `object` |
| `R` | extends [`CacheMixinBase`](../modules.md#cachemixinbase)<`M`, `ID`, `Relations`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `baseClass` | `R` |
| `cacheOptions` | `Partial`<[`CachePluginComponentOptions`](../interfaces/CachePluginComponentOptions.md)\> |

#### Returns

`R` & [`AbstractConstructor`](../modules.md#abstractconstructor)<[`ICacheMixin`](../interfaces/ICacheMixin.md)<`M`, `ID`\>\>

#### Defined in

[mixins/cache.mixin.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/mixins/cache.mixin.ts#L31)
