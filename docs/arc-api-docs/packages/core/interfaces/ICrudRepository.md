[@sourceloop/core](../README.md) / [Exports](../modules.md) / ICrudRepository

# Interface: ICrudRepository<T, ID, Relations\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity` |
| `ID` | `ID` |
| `Relations` | extends `Object` |

## Table of contents

### Methods

- [count](ICrudRepository.md#count)
- [create](ICrudRepository.md#create)
- [createAll](ICrudRepository.md#createall)
- [delete](ICrudRepository.md#delete)
- [deleteAll](ICrudRepository.md#deleteall)
- [deleteById](ICrudRepository.md#deletebyid)
- [exists](ICrudRepository.md#exists)
- [find](ICrudRepository.md#find)
- [findById](ICrudRepository.md#findbyid)
- [findOne](ICrudRepository.md#findone)
- [replaceById](ICrudRepository.md#replacebyid)
- [save](ICrudRepository.md#save)
- [update](ICrudRepository.md#update)
- [updateAll](ICrudRepository.md#updateall)
- [updateById](ICrudRepository.md#updatebyid)

## Methods

### count

▸ **count**(`where?`, `options?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `where?` | `Where`<`T`\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`Count`\>

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L50)

___

### create

▸ **create**(`entity`, `options?`): `Promise`<`T`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<`T`\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`T`\>

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L26)

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<`T`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<`T`\>[] |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`T`[]\>

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L27)

___

### delete

▸ **delete**(`entity`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `T` |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`void`\>

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L40)

___

### deleteAll

▸ **deleteAll**(`where?`, `options?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `where?` | `Where`<`T`\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`Count`\>

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L48)

___

### deleteById

▸ **deleteById**(`id`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `ID` |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`void`\>

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L49)

___

### exists

▸ **exists**(`id`, `options?`): `Promise`<`boolean`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `ID` |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`boolean`\>

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L51)

___

### find

▸ **find**(`filter?`, `options?`): `Promise`<`T` & `Relations`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `filter?` | `Filter`<`T`\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`T` & `Relations`[]\>

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L29)

___

### findById

▸ **findById**(`id`, `filter?`, `options?`): `Promise`<`T` & `Relations`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `ID` |
| `filter?` | `FilterExcludingWhere`<`T`\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`T` & `Relations`\>

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L34)

___

### findOne

▸ **findOne**(`filter?`, `options?`): `Promise`<``null`` \| `T` & `Relations`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `filter?` | `Filter`<`T`\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<``null`` \| `T` & `Relations`\>

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L30)

___

### replaceById

▸ **replaceById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `ID` |
| `data` | `DataObject`<`T`\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`void`\>

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L47)

___

### save

▸ **save**(`entity`, `options?`): `Promise`<`T`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `T` |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`T`\>

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L28)

___

### update

▸ **update**(`entity`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `T` |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`void`\>

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L39)

___

### updateAll

▸ **updateAll**(`data`, `where?`, `options?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `DataObject`<`T`\> |
| `where?` | `Where`<`T`\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`Count`\>

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L41)

___

### updateById

▸ **updateById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `ID` |
| `data` | `DataObject`<`T`\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`void`\>

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L46)
