[@sourceloop/core](../README.md) / [Exports](../modules.md) / ITenantGuard

# Interface: ITenantGuard<T, ID\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity` |
| `ID` | `ID` |

## Implemented by

- [`TenantGuardService`](../classes/TenantGuardService.md)

## Table of contents

### Methods

- [count](ITenantGuard.md#count)
- [create](ITenantGuard.md#create)
- [createAll](ITenantGuard.md#createall)
- [delete](ITenantGuard.md#delete)
- [deleteAll](ITenantGuard.md#deleteall)
- [deleteById](ITenantGuard.md#deletebyid)
- [exists](ITenantGuard.md#exists)
- [find](ITenantGuard.md#find)
- [findById](ITenantGuard.md#findbyid)
- [findOne](ITenantGuard.md#findone)
- [replaceById](ITenantGuard.md#replacebyid)
- [save](ITenantGuard.md#save)
- [skipTenantGuard](ITenantGuard.md#skiptenantguard)
- [update](ITenantGuard.md#update)
- [updateAll](ITenantGuard.md#updateall)
- [updateById](ITenantGuard.md#updatebyid)

## Methods

### count

▸ **count**(`where?`): `Promise`<`Where`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `where?` | `Where`<`T`\> |

#### Returns

`Promise`<`Where`<`T`\>\>

#### Defined in

[src/components/tenant-utilities/types.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/packages/core/src/components/tenant-utilities/types.ts#L24)

___

### create

▸ **create**(`data`): `Promise`<`DataObject`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `DataObject`<`T`\> |

#### Returns

`Promise`<`DataObject`<`T`\>\>

#### Defined in

[src/components/tenant-utilities/types.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/packages/core/src/components/tenant-utilities/types.ts#L26)

___

### createAll

▸ **createAll**(`data`): `Promise`<`DataObject`<`T`\>[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `DataObject`<`T`\>[] |

#### Returns

`Promise`<`DataObject`<`T`\>[]\>

#### Defined in

[src/components/tenant-utilities/types.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/packages/core/src/components/tenant-utilities/types.ts#L27)

___

### delete

▸ **delete**(`entity`): `Promise`<{ `entity`: `T` ; `where`: `Where`<`T`\>  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `T` |

#### Returns

`Promise`<{ `entity`: `T` ; `where`: `Where`<`T`\>  }\>

#### Defined in

[src/components/tenant-utilities/types.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/packages/core/src/components/tenant-utilities/types.ts#L54)

___

### deleteAll

▸ **deleteAll**(`where?`): `Promise`<`Where`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `where?` | `Where`<`T`\> |

#### Returns

`Promise`<`Where`<`T`\>\>

#### Defined in

[src/components/tenant-utilities/types.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/packages/core/src/components/tenant-utilities/types.ts#L58)

___

### deleteById

▸ **deleteById**(`id`): `Promise`<`Where`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `ID` |

#### Returns

`Promise`<`Where`<`T`\>\>

#### Defined in

[src/components/tenant-utilities/types.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/packages/core/src/components/tenant-utilities/types.ts#L59)

___

### exists

▸ **exists**(`id`): `Promise`<`Where`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `ID` |

#### Returns

`Promise`<`Where`<`T`\>\>

#### Defined in

[src/components/tenant-utilities/types.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/packages/core/src/components/tenant-utilities/types.ts#L25)

___

### find

▸ **find**(`filter?`): `Promise`<`Filter`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `filter?` | `Filter`<`T`\> |

#### Returns

`Promise`<`Filter`<`T`\>\>

#### Defined in

[src/components/tenant-utilities/types.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/packages/core/src/components/tenant-utilities/types.ts#L21)

___

### findById

▸ **findById**(`id`, `filter?`): `Promise`<`Filter`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `ID` |
| `filter?` | `FilterExcludingWhere`<`T`\> |

#### Returns

`Promise`<`Filter`<`T`\>\>

#### Defined in

[src/components/tenant-utilities/types.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/packages/core/src/components/tenant-utilities/types.ts#L22)

___

### findOne

▸ **findOne**(`filter?`): `Promise`<`Filter`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `filter?` | `Filter`<`T`\> |

#### Returns

`Promise`<`Filter`<`T`\>\>

#### Defined in

[src/components/tenant-utilities/types.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/packages/core/src/components/tenant-utilities/types.ts#L23)

___

### replaceById

▸ **replaceById**(`id`, `data`): `Promise`<{ `data`: `DataObject`<`T`\> ; `where`: `Where`<`T`\>  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `ID` |
| `data` | `DataObject`<`T`\> |

#### Returns

`Promise`<{ `data`: `DataObject`<`T`\> ; `where`: `Where`<`T`\>  }\>

#### Defined in

[src/components/tenant-utilities/types.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/packages/core/src/components/tenant-utilities/types.ts#L47)

___

### save

▸ **save**(`entity`): `Promise`<`T`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `T` |

#### Returns

`Promise`<`T`\>

#### Defined in

[src/components/tenant-utilities/types.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/packages/core/src/components/tenant-utilities/types.ts#L28)

___

### skipTenantGuard

▸ **skipTenantGuard**(): `Promise`<`boolean`\>

#### Returns

`Promise`<`boolean`\>

#### Defined in

[src/components/tenant-utilities/types.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/packages/core/src/components/tenant-utilities/types.ts#L60)

___

### update

▸ **update**(`data`): `Promise`<{ `data`: `T` ; `where`: `Where`<`T`\>  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `T` |

#### Returns

`Promise`<{ `data`: `T` ; `where`: `Where`<`T`\>  }\>

#### Defined in

[src/components/tenant-utilities/types.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/packages/core/src/components/tenant-utilities/types.ts#L29)

___

### updateAll

▸ **updateAll**(`data`, `where?`): `Promise`<{ `data`: `DataObject`<`T`\> ; `where`: `Where`<`T`\>  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `DataObject`<`T`\> |
| `where?` | `Where`<`T`\> |

#### Returns

`Promise`<{ `data`: `DataObject`<`T`\> ; `where`: `Where`<`T`\>  }\>

#### Defined in

[src/components/tenant-utilities/types.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/packages/core/src/components/tenant-utilities/types.ts#L33)

___

### updateById

▸ **updateById**(`id`, `data`): `Promise`<{ `data`: `DataObject`<`T`\> ; `where`: `Where`<`T`\>  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `ID` |
| `data` | `DataObject`<`T`\> |

#### Returns

`Promise`<{ `data`: `DataObject`<`T`\> ; `where`: `Where`<`T`\>  }\>

#### Defined in

[src/components/tenant-utilities/types.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/packages/core/src/components/tenant-utilities/types.ts#L40)
