[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / RoleRepository

# Class: RoleRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Role`](Role.md), typeof [`id`](Role.md#id), [`RoleRelations`](../interfaces/RoleRelations.md)\>

  ↳ **`RoleRepository`**

## Table of contents

### Constructors

- [constructor](RoleRepository.md#constructor)

### Properties

- [createdByUser](RoleRepository.md#createdbyuser)
- [getCurrentUser](RoleRepository.md#getcurrentuser)
- [modifiedByUser](RoleRepository.md#modifiedbyuser)
- [userTenantRepositoryGetter](RoleRepository.md#usertenantrepositorygetter)
- [userTenants](RoleRepository.md#usertenants)
- [userViewRepositoryGetter](RoleRepository.md#userviewrepositorygetter)

### Methods

- [create](RoleRepository.md#create)
- [createAll](RoleRepository.md#createall)
- [replaceById](RoleRepository.md#replacebyid)
- [save](RoleRepository.md#save)
- [update](RoleRepository.md#update)
- [updateAll](RoleRepository.md#updateall)
- [updateById](RoleRepository.md#updatebyid)

## Constructors

### constructor

• **new RoleRepository**(`dataSource`, `userTenantRepositoryGetter`, `userViewRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |
| `userViewRepositoryGetter` | `Getter`<[`UserViewRepository`](UserViewRepository.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Role,
  typeof Role.prototype.id,
  RoleRelations
\&gt;.constructor

#### Defined in

[services/user-tenant-service/src/repositories/role.repository.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/role.repository.ts#L44)

## Properties

### createdByUser

• `Readonly` **createdByUser**: `HasOneRepositoryFactory`<[`UserView`](UserView.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/role.repository.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/role.repository.ts#L34)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/role.repository.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/role.repository.ts#L52)

___

### modifiedByUser

• `Readonly` **modifiedByUser**: `HasOneRepositoryFactory`<[`UserView`](UserView.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/role.repository.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/role.repository.ts#L39)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/role.repository.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/role.repository.ts#L48)

___

### userTenants

• `Readonly` **userTenants**: `HasManyRepositoryFactory`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/role.repository.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/role.repository.ts#L29)

___

### userViewRepositoryGetter

• `Protected` **userViewRepositoryGetter**: `Getter`<[`UserViewRepository`](UserViewRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/role.repository.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/role.repository.ts#L50)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Role`](Role.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Role`](Role.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Role`](Role.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Role`](Role.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Role`](Role.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Role`](Role.md)[]\>

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
| `data` | `DataObject`<[`Role`](Role.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Role`](Role.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Role`](Role.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Role`](Role.md)\>

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
| `entity` | [`Role`](Role.md) |
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
| `data` | `DataObject`<[`Role`](Role.md)\> |
| `where?` | `Where`<[`Role`](Role.md)\> |
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
| `data` | `DataObject`<[`Role`](Role.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
