[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserTenantPrefsRepository

# Class: UserTenantPrefsRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`UserTenantPrefs`](UserTenantPrefs.md), typeof [`id`](UserTenantPrefs.md#id)\>

  ↳ **`UserTenantPrefsRepository`**

## Table of contents

### Constructors

- [constructor](UserTenantPrefsRepository.md#constructor)

### Properties

- [getCurrentUser](UserTenantPrefsRepository.md#getcurrentuser)
- [userTenant](UserTenantPrefsRepository.md#usertenant)
- [userTenantRepositoryGetter](UserTenantPrefsRepository.md#usertenantrepositorygetter)

### Methods

- [create](UserTenantPrefsRepository.md#create)
- [createAll](UserTenantPrefsRepository.md#createall)
- [replaceById](UserTenantPrefsRepository.md#replacebyid)
- [save](UserTenantPrefsRepository.md#save)
- [update](UserTenantPrefsRepository.md#update)
- [updateAll](UserTenantPrefsRepository.md#updateall)
- [updateById](UserTenantPrefsRepository.md#updatebyid)

## Constructors

### constructor

• **new UserTenantPrefsRepository**(`dataSource`, `userTenantRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  UserTenantPrefs,
  typeof UserTenantPrefs.prototype.id
\&gt;.constructor

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts#L25)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts#L31)

___

### userTenant

• `Readonly` **userTenant**: `BelongsToAccessor`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts#L20)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant-prefs.repository.ts#L29)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`UserTenantPrefs`](UserTenantPrefs.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`UserTenantPrefs`](UserTenantPrefs.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserTenantPrefs`](UserTenantPrefs.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`UserTenantPrefs`](UserTenantPrefs.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`UserTenantPrefs`](UserTenantPrefs.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserTenantPrefs`](UserTenantPrefs.md)[]\>

#### Inherited from

DefaultUserModifyCrudRepository.createAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:12

___

### replaceById

▸ **replaceById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`UserTenantPrefs`](UserTenantPrefs.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`UserTenantPrefs`](UserTenantPrefs.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`UserTenantPrefs`](UserTenantPrefs.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserTenantPrefs`](UserTenantPrefs.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13

___

### update

▸ **update**(`entity`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`UserTenantPrefs`](UserTenantPrefs.md) |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.update

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:14

___

### updateAll

▸ **updateAll**(`data`, `where?`, `options?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `DataObject`<[`UserTenantPrefs`](UserTenantPrefs.md)\> |
| `where?` | `Where`<[`UserTenantPrefs`](UserTenantPrefs.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`Count`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:15

___

### updateById

▸ **updateById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`UserTenantPrefs`](UserTenantPrefs.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
