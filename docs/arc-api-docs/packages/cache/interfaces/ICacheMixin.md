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

• **getCacheDataSource**: () => `Promise`<`DataSource`\>

#### Type declaration

▸ (): `Promise`<`DataSource`\>

##### Returns

`Promise`<`DataSource`\>

#### Defined in

[types.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/cache/src/types.ts#L29)

___

### strategy

• **strategy**: [`ICacheStrategy`](ICacheStrategy.md)<`M`\>

#### Defined in

[types.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/cache/src/types.ts#L30)

## Methods

### clearCache

▸ **clearCache**(): `Promise`<`void`\>

#### Returns

`Promise`<`void`\>

#### Defined in

[types.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/cache/src/types.ts#L31)

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

[types.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/cache/src/types.ts#L32)
