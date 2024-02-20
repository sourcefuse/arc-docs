[@sourceloop/core](../README.md) / [Exports](../modules.md) / TenantGuardService

# Class: TenantGuardService<T, ID\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`EntityWithTenantId`](../modules.md#entitywithtenantid) |
| `ID` | `ID` |

## Implements

- [`ITenantGuard`](../interfaces/ITenantGuard.md)<`T`, `ID`\>

## Table of contents

### Constructors

- [constructor](TenantGuardService.md#constructor)

### Properties

- [getCurrentUser](TenantGuardService.md#getcurrentuser)

### Methods

- [addTenantIDMultiple](TenantGuardService.md#addtenantidmultiple)
- [addTenantId](TenantGuardService.md#addtenantid)
- [addTenantToFilter](TenantGuardService.md#addtenanttofilter)
- [addTenantToWhere](TenantGuardService.md#addtenanttowhere)
- [buildWhere](TenantGuardService.md#buildwhere)
- [checkTenantId](TenantGuardService.md#checktenantid)
- [count](TenantGuardService.md#count)
- [create](TenantGuardService.md#create)
- [createAll](TenantGuardService.md#createall)
- [delete](TenantGuardService.md#delete)
- [deleteAll](TenantGuardService.md#deleteall)
- [deleteById](TenantGuardService.md#deletebyid)
- [exists](TenantGuardService.md#exists)
- [find](TenantGuardService.md#find)
- [findById](TenantGuardService.md#findbyid)
- [findOne](TenantGuardService.md#findone)
- [replaceById](TenantGuardService.md#replacebyid)
- [save](TenantGuardService.md#save)
- [skipTenantGuard](TenantGuardService.md#skiptenantguard)
- [update](TenantGuardService.md#update)
- [updateAll](TenantGuardService.md#updateall)
- [updateById](TenantGuardService.md#updatebyid)

## Constructors

### constructor

• **new TenantGuardService**<`T`, `ID`\>(`getCurrentUser`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity`<`T`\> & { `tenantId`: `string`  } |
| `ID` | `ID` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `getCurrentUser` | `Getter`<[`UserInToken`](../interfaces/UserInToken.md)\> |

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L21)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<[`UserInToken`](../interfaces/UserInToken.md)\>

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L23)

## Methods

### addTenantIDMultiple

▸ `Private` **addTenantIDMultiple**<`R`\>(`entities`): `Promise`<`R`[]\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `R` | extends [`EntityWithTenantId`](../modules.md#entitywithtenantid) \| `Partial`<`T`\> \| { [P in string \| number \| symbol]?: DeepPartial<T[P]\> } |

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `R`[] |

#### Returns

`Promise`<`R`[]\>

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:139](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L139)

___

### addTenantId

▸ `Private` **addTenantId**<`S`\>(`entity`): `Promise`<`S`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `S` | extends [`EntityWithTenantId`](../modules.md#entitywithtenantid) \| `Partial`<`T`\> \| { [P in string \| number \| symbol]?: DeepPartial<T[P]\> } |

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `S` |

#### Returns

`Promise`<`S`\>

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:130](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L130)

___

### addTenantToFilter

▸ `Private` **addTenantToFilter**(`filter?`, `id?`): `Promise`<`Filter`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `filter?` | `Filter`<`T`\> |
| `id?` | `ID` |

#### Returns

`Promise`<`Filter`<`T`\>\>

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:168](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L168)

___

### addTenantToWhere

▸ `Private` **addTenantToWhere**(`where?`, `id?`): `Promise`<`Where`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `where?` | `Where`<`T`\> |
| `id?` | `ID` |

#### Returns

`Promise`<`Where`<`T`\>\>

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:161](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L161)

___

### buildWhere

▸ `Private` **buildWhere**(`user`, `where?`, `id?`): `Where`<`T`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `user` | [`UserInToken`](../interfaces/UserInToken.md) |
| `where?` | `Where`<`T`\> |
| `id?` | `ID` |

#### Returns

`Where`<`T`\>

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:182](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L182)

___

### checkTenantId

▸ `Private` **checkTenantId**(`data`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `DataObject`<`T`\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:116](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L116)

___

### count

▸ **count**(`where?`): `Promise`<`Where`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `where?` | `Where`<`T`\> |

#### Returns

`Promise`<`Where`<`T`\>\>

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[count](../interfaces/ITenantGuard.md#count)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L43)

___

### create

▸ **create**(`data`): `Promise`<`DataObject`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `DataObject`<`T`\> |

#### Returns

`Promise`<`DataObject`<`T`\>\>

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[create](../interfaces/ITenantGuard.md#create)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L51)

___

### createAll

▸ **createAll**<`R`\>(`data`): `Promise`<`R`[]\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `R` | extends [`EntityWithTenantId`](../modules.md#entitywithtenantid) \| `Partial`<`T`\> \| { [P in string \| number \| symbol]?: DeepPartial<T[P]\> } |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `R`[] |

#### Returns

`Promise`<`R`[]\>

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[createAll](../interfaces/ITenantGuard.md#createall)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L55)

___

### delete

▸ **delete**(`entity`): `Promise`<{ `entity`: `T` ; `where`: `Where`<`T`\>  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `T` |

#### Returns

`Promise`<{ `entity`: `T` ; `where`: `Where`<`T`\>  }\>

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[delete](../interfaces/ITenantGuard.md#delete)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:104](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L104)

___

### deleteAll

▸ **deleteAll**(`where?`): `Promise`<`Where`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `where?` | `Where`<`T`\> |

#### Returns

`Promise`<`Where`<`T`\>\>

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[deleteAll](../interfaces/ITenantGuard.md#deleteall)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L112)

___

### deleteById

▸ **deleteById**(`id`): `Promise`<`Where`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `ID` |

#### Returns

`Promise`<`Where`<`T`\>\>

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[deleteById](../interfaces/ITenantGuard.md#deletebyid)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:100](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L100)

___

### exists

▸ **exists**(`id`): `Promise`<`Where`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `ID` |

#### Returns

`Promise`<`Where`<`T`\>\>

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[exists](../interfaces/ITenantGuard.md#exists)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L47)

___

### find

▸ **find**(`filter?`): `Promise`<`Filter`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `filter?` | `Filter`<`T`\> |

#### Returns

`Promise`<`Filter`<`T`\>\>

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[find](../interfaces/ITenantGuard.md#find)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L31)

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

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[findById](../interfaces/ITenantGuard.md#findbyid)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L39)

___

### findOne

▸ **findOne**(`filter?`): `Promise`<`Filter`<`T`\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `filter?` | `Filter`<`T`\> |

#### Returns

`Promise`<`Filter`<`T`\>\>

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[findOne](../interfaces/ITenantGuard.md#findone)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L35)

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

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[replaceById](../interfaces/ITenantGuard.md#replacebyid)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L63)

___

### save

▸ **save**(`entity`): `Promise`<`T`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `T` |

#### Returns

`Promise`<`T`\>

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[save](../interfaces/ITenantGuard.md#save)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L59)

___

### skipTenantGuard

▸ **skipTenantGuard**(): `Promise`<`boolean`\>

#### Returns

`Promise`<`boolean`\>

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[skipTenantGuard](../interfaces/ITenantGuard.md#skiptenantguard)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L26)

___

### update

▸ **update**(`data`): `Promise`<{ `data`: `T` ; `where`: `Where`<`T`\>  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `T` |

#### Returns

`Promise`<{ `data`: `T` ; `where`: `Where`<`T`\>  }\>

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[update](../interfaces/ITenantGuard.md#update)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L81)

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

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[updateAll](../interfaces/ITenantGuard.md#updateall)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L89)

___

### updateById

▸ **updateById**<`R`\>(`id`, `data`): `Promise`<{ `data`: `R` ; `where`: `Where`<`T`\>  }\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `R` | extends [`EntityWithTenantId`](../modules.md#entitywithtenantid) \| `Partial`<`T`\> \| { [P in string \| number \| symbol]?: DeepPartial<T[P]\> } |

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `ID` |
| `data` | `R` |

#### Returns

`Promise`<{ `data`: `R` ; `where`: `Where`<`T`\>  }\>

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[updateById](../interfaces/ITenantGuard.md#updatebyid)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L70)
