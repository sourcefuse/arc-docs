[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserGroupRepository

# Class: UserGroupRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`UserGroup`](UserGroup.md), typeof [`id`](UserGroup.md#id), [`UserGroupRelations`](../interfaces/UserGroupRelations.md)\>

  ↳ **`UserGroupRepository`**

## Table of contents

### Constructors

- [constructor](UserGroupRepository.md#constructor)

### Properties

- [getCurrentUser](UserGroupRepository.md#getcurrentuser)
- [group](UserGroupRepository.md#group)
- [groupRepositoryGetter](UserGroupRepository.md#grouprepositorygetter)
- [userTenant](UserGroupRepository.md#usertenant)
- [userTenantRepositoryGetter](UserGroupRepository.md#usertenantrepositorygetter)

### Methods

- [create](UserGroupRepository.md#create)
- [createAll](UserGroupRepository.md#createall)
- [replaceById](UserGroupRepository.md#replacebyid)
- [save](UserGroupRepository.md#save)
- [update](UserGroupRepository.md#update)
- [updateAll](UserGroupRepository.md#updateall)
- [updateById](UserGroupRepository.md#updatebyid)

## Constructors

### constructor

• **new UserGroupRepository**(`dataSource`, `groupRepositoryGetter`, `userTenantRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `groupRepositoryGetter` | `Getter`<[`GroupRepository`](GroupRepository.md)\> |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  UserGroup,
  typeof UserGroup.prototype.id,
  UserGroupRelations
\&gt;.constructor

#### Defined in

[services/user-tenant-service/src/repositories/user-group.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-group.repository.ts#L32)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/user-group.repository.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-group.repository.ts#L40)

___

### group

• `Readonly` **group**: `BelongsToAccessor`<[`Group`](Group.md)<`DataObject`<`Model`\>\>, `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-group.repository.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-group.repository.ts#L22)

___

### groupRepositoryGetter

• `Protected` **groupRepositoryGetter**: `Getter`<[`GroupRepository`](GroupRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-group.repository.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-group.repository.ts#L36)

___

### userTenant

• `Readonly` **userTenant**: `BelongsToAccessor`<[`UserTenant`](UserTenant.md), `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-group.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-group.repository.ts#L27)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-group.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-group.repository.ts#L38)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`UserGroup`](UserGroup.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`UserGroup`](UserGroup.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserGroup`](UserGroup.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`UserGroup`](UserGroup.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`UserGroup`](UserGroup.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserGroup`](UserGroup.md)[]\>

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
| `id` | `string` |
| `data` | `DataObject`<[`UserGroup`](UserGroup.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`UserGroup`](UserGroup.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`UserGroup`](UserGroup.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserGroup`](UserGroup.md)\>

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
| `entity` | [`UserGroup`](UserGroup.md) |
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
| `data` | `DataObject`<[`UserGroup`](UserGroup.md)\> |
| `where?` | `Where`<[`UserGroup`](UserGroup.md)\> |
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
| `id` | `string` |
| `data` | `DataObject`<[`UserGroup`](UserGroup.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
