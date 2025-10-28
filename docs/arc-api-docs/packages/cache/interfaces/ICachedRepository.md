[@sourceloop/cache](../README.md) / [Exports](../modules.md) / ICachedRepository

# Interface: ICachedRepository<E, ID, R\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `E` | extends `Entity` |
| `ID` | `ID` |
| `R` | extends `Object` |

## Table of contents

### Methods

- [find](ICachedRepository.md#find)
- [findById](ICachedRepository.md#findbyid)
- [findOne](ICachedRepository.md#findone)

## Methods

### find

▸ **find**(`filter?`, `options?`): `Promise`<`E` & `R`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `filter?` | `Filter`<`E`\> |
| `options?` | [`ICachedMethodOptions`](ICachedMethodOptions.md) |

#### Returns

`Promise`<`E` & `R`[]\>

#### Defined in

[types.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L94)

___

### findById

▸ **findById**(`id`, `filter?`, `options?`): `Promise`<`E` & `R`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `ID` |
| `filter?` | `Filter`<`E`\> |
| `options?` | [`ICachedMethodOptions`](ICachedMethodOptions.md) |

#### Returns

`Promise`<`E` & `R`\>

#### Defined in

[types.ts:95](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L95)

___

### findOne

▸ **findOne**(`filter?`, `options?`): `Promise`<``null`` \| `E` & `R`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `filter?` | `Filter`<`E`\> |
| `options?` | [`ICachedMethodOptions`](ICachedMethodOptions.md) |

#### Returns

`Promise`<``null`` \| `E` & `R`\>

#### Defined in

[types.ts:100](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L100)
