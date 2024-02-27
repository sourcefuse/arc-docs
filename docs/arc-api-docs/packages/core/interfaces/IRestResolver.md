[@sourceloop/core](../README.md) / [Exports](../modules.md) / IRestResolver

# Interface: IRestResolver<Parent, Child\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `Parent` | extends `Entity` |
| `Child` | extends `Entity` |

## Implemented by

- [`BelongsToRestResolver`](../classes/BelongsToRestResolver.md)
- [`HasManyRestResolver`](../classes/HasManyRestResolver.md)
- [`HasOneRestResolver`](../classes/HasOneRestResolver.md)

## Table of contents

### Properties

- [type](IRestResolver.md#type)

### Methods

- [link](IRestResolver.md#link)
- [resolve](IRestResolver.md#resolve)

## Properties

### type

• **type**: `RelationType`

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:125](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L125)

## Methods

### link

▸ **link**(`params`): `Promise`<`Parent`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `params` | [`RestLinkerParams`](../modules.md#restlinkerparams)<`Parent`, `Child`\> |

#### Returns

`Promise`<`Parent`\>

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:129](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L129)

___

### resolve

▸ **resolve**(`params`): `Promise`<[`ResolvedMap`](../modules.md#resolvedmap)<`Parent`, `Child`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `params` | [`RestResolverParams`](../modules.md#restresolverparams)<`Parent`, `Child`\> |

#### Returns

`Promise`<[`ResolvedMap`](../modules.md#resolvedmap)<`Parent`, `Child`\>\>

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:126](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L126)
