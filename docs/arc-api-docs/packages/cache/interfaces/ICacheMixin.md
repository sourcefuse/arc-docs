[@sourceloop/cache](../README.md) / [Exports](../modules.md) / ICacheMixin

# Interface: ICacheMixin<M, ID\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `M` | extends `Entity` |
| `ID` | `ID` |

## Table of contents

### Properties

- [getCacheDataSource](ICacheMixin.md#getcachedatasource)
- [strategy](ICacheMixin.md#strategy)

### Methods

- [clearCache](ICacheMixin.md#clearcache)
- [generateKey](ICacheMixin.md#generatekey)

## Properties

### getCacheDataSource

• **getCacheDataSource**: () => `Promise`<`DataSource` \| `SequelizeDataSource`\>

#### Type declaration

▸ (): `Promise`<`DataSource` \| `SequelizeDataSource`\>

##### Returns

`Promise`<`DataSource` \| `SequelizeDataSource`\>

#### Defined in

[types.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/types.ts#L36)

___

### strategy

• **strategy**: [`ICacheStrategy`](ICacheStrategy.md)<`M`\>

#### Defined in

[types.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/types.ts#L37)

## Methods

### clearCache

▸ **clearCache**(): `Promise`<`void`\>

#### Returns

`Promise`<`void`\>

#### Defined in

[types.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/types.ts#L38)

___

### generateKey

▸ **generateKey**(`id?`, `filter?`): `Promise`<`string`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id?` | `ID` |
| `filter?` | `Filter`<`M`\> |

#### Returns

`Promise`<`string`\>

#### Defined in

[types.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/cache/src/types.ts#L39)
