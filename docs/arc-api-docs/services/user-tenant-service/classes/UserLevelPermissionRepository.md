[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserLevelPermissionRepository

# Class: UserLevelPermissionRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`UserLevelPermission`](UserLevelPermission.md), typeof [`id`](UserLevelPermission.md#id)\>

  ↳ **`UserLevelPermissionRepository`**

## Table of contents

### Constructors

- [constructor](UserLevelPermissionRepository.md#constructor)

### Properties

- [getCurrentUser](UserLevelPermissionRepository.md#getcurrentuser)
- [userTenant](UserLevelPermissionRepository.md#usertenant)
- [userTenantRepositoryGetter](UserLevelPermissionRepository.md#usertenantrepositorygetter)

### Methods

- [create](UserLevelPermissionRepository.md#create)
- [createAll](UserLevelPermissionRepository.md#createall)
- [replaceById](UserLevelPermissionRepository.md#replacebyid)
- [save](UserLevelPermissionRepository.md#save)
- [update](UserLevelPermissionRepository.md#update)
- [updateAll](UserLevelPermissionRepository.md#updateall)
- [updateById](UserLevelPermissionRepository.md#updatebyid)

## Constructors

### constructor

• **new UserLevelPermissionRepository**(`dataSource`, `userTenantRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  UserLevelPermission,
  typeof UserLevelPermission.prototype.id
\&gt;.constructor

#### Defined in

[services/user-tenant-service/src/repositories/user-level-permission.repository.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-level-permission.repository.ts#L25)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/user-level-permission.repository.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-level-permission.repository.ts#L31)

___

### userTenant

• `Readonly` **userTenant**: `BelongsToAccessor`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-level-permission.repository.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-level-permission.repository.ts#L20)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-level-permission.repository.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-level-permission.repository.ts#L29)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`UserLevelPermission`](UserLevelPermission.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`UserLevelPermission`](UserLevelPermission.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserLevelPermission`](UserLevelPermission.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`UserLevelPermission`](UserLevelPermission.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`UserLevelPermission`](UserLevelPermission.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserLevelPermission`](UserLevelPermission.md)[]\>

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
| `data` | `DataObject`<[`UserLevelPermission`](UserLevelPermission.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`UserLevelPermission`](UserLevelPermission.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`UserLevelPermission`](UserLevelPermission.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserLevelPermission`](UserLevelPermission.md)\>

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
| `entity` | [`UserLevelPermission`](UserLevelPermission.md) |
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
| `data` | `DataObject`<[`UserLevelPermission`](UserLevelPermission.md)\> |
| `where?` | `Where`<[`UserLevelPermission`](UserLevelPermission.md)\> |
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
| `data` | `DataObject`<[`UserLevelPermission`](UserLevelPermission.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
