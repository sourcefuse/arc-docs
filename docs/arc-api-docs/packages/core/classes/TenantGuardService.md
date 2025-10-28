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

- [config](TenantGuardService.md#config)
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

• **new TenantGuardService**<`T`, `ID`\>(`getCurrentUser`, `config?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity`<`T`\> & { `tenantId`: `string`  } |
| `ID` | `ID` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `getCurrentUser` | `Getter`<[`UserInToken`](../interfaces/UserInToken.md)\> |
| `config?` | [`ITenantUtilitiesConfig`](../interfaces/ITenantUtilitiesConfig.md) |

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L27)

## Properties

### config

• `Private` `Optional` `Readonly` **config**: [`ITenantUtilitiesConfig`](../interfaces/ITenantUtilitiesConfig.md)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L31)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<[`UserInToken`](../interfaces/UserInToken.md)\>

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L29)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:150](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L150)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:141](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L141)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:179](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L179)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:172](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L172)

___

### buildWhere

▸ **buildWhere**(`user`, `where?`, `id?`): `Where`<`T`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `user` | [`UserInToken`](../interfaces/UserInToken.md) |
| `where?` | `Where`<`T`\> |
| `id?` | `ID` |

#### Returns

`Where`<`T`\>

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:193](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L193)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:127](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L127)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L54)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L62)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L66)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:115](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L115)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:123](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L123)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:111](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L111)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L58)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L42)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L50)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L46)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L74)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L70)

___

### skipTenantGuard

▸ **skipTenantGuard**(): `Promise`<`boolean`\>

#### Returns

`Promise`<`boolean`\>

#### Implementation of

[ITenantGuard](../interfaces/ITenantGuard.md).[skipTenantGuard](../interfaces/ITenantGuard.md#skiptenantguard)

#### Defined in

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L34)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:92](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L92)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:100](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L100)

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

[packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/tenant-utilities/services/tenant-guard.service.ts#L81)
