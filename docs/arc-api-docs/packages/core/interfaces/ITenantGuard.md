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

[packages/core/src/components/tenant-utilities/types.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L58)

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

[packages/core/src/components/tenant-utilities/types.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L60)

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

[packages/core/src/components/tenant-utilities/types.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L61)

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

[packages/core/src/components/tenant-utilities/types.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L88)

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

[packages/core/src/components/tenant-utilities/types.ts:92](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L92)

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

[packages/core/src/components/tenant-utilities/types.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L93)

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

[packages/core/src/components/tenant-utilities/types.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L59)

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

[packages/core/src/components/tenant-utilities/types.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L55)

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

[packages/core/src/components/tenant-utilities/types.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L56)

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

[packages/core/src/components/tenant-utilities/types.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L57)

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

[packages/core/src/components/tenant-utilities/types.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L81)

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

[packages/core/src/components/tenant-utilities/types.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L62)

___

### skipTenantGuard

▸ **skipTenantGuard**(): `Promise`<`boolean`\>

#### Returns

`Promise`<`boolean`\>

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L94)

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

[packages/core/src/components/tenant-utilities/types.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L63)

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

[packages/core/src/components/tenant-utilities/types.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L67)

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

[packages/core/src/components/tenant-utilities/types.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L74)
