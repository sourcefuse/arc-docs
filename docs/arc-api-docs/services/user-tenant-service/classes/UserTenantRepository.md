[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserTenantRepository

# Class: UserTenantRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`UserTenant`](UserTenant.md), typeof [`id`](UserTenant.md#id), [`UserTenantRelations`](../interfaces/UserTenantRelations.md)\>

  ↳ **`UserTenantRepository`**

## Table of contents

### Constructors

- [constructor](UserTenantRepository.md#constructor)

### Properties

- [getCurrentUser](UserTenantRepository.md#getcurrentuser)
- [role](UserTenantRepository.md#role)
- [roleRepositoryGetter](UserTenantRepository.md#rolerepositorygetter)
- [tenant](UserTenantRepository.md#tenant)
- [tenantRepositoryGetter](UserTenantRepository.md#tenantrepositorygetter)
- [user](UserTenantRepository.md#user)
- [userGroupRepositoryGetter](UserTenantRepository.md#usergrouprepositorygetter)
- [userGroups](UserTenantRepository.md#usergroups)
- [userInvitationRepositoryGetter](UserTenantRepository.md#userinvitationrepositorygetter)
- [userInvitations](UserTenantRepository.md#userinvitations)
- [userLevelPermissionRepositoryGetter](UserTenantRepository.md#userlevelpermissionrepositorygetter)
- [userLevelPermissions](UserTenantRepository.md#userlevelpermissions)
- [userRepositoryGetter](UserTenantRepository.md#userrepositorygetter)

### Methods

- [create](UserTenantRepository.md#create)
- [createAll](UserTenantRepository.md#createall)
- [replaceById](UserTenantRepository.md#replacebyid)
- [save](UserTenantRepository.md#save)
- [update](UserTenantRepository.md#update)
- [updateAll](UserTenantRepository.md#updateall)
- [updateById](UserTenantRepository.md#updatebyid)

## Constructors

### constructor

• **new UserTenantRepository**(`dataSource`, `userLevelPermissionRepositoryGetter`, `userGroupRepositoryGetter`, `userRepositoryGetter`, `tenantRepositoryGetter`, `roleRepositoryGetter`, `userInvitationRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `userLevelPermissionRepositoryGetter` | `Getter`<[`UserLevelPermissionRepository`](UserLevelPermissionRepository.md)\> |
| `userGroupRepositoryGetter` | `Getter`<[`UserGroupRepository`](UserGroupRepository.md)\> |
| `userRepositoryGetter` | `Getter`<[`UserRepository`](UserRepository.md)\> |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)\> |
| `roleRepositoryGetter` | `Getter`<[`RoleRepository`](RoleRepository.md)\> |
| `userInvitationRepositoryGetter` | `Getter`<[`UserInvitationRepository`](UserInvitationRepository.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  UserTenant,
  typeof UserTenant.prototype.id,
  UserTenantRelations
\&gt;.constructor

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L66)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L82)

___

### role

• `Readonly` **role**: `BelongsToAccessor`<[`Role`](Role.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L59)

___

### roleRepositoryGetter

• `Protected` **roleRepositoryGetter**: `Getter`<[`RoleRepository`](RoleRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L78)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L54)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L76)

___

### user

• `Readonly` **user**: `BelongsToAccessor`<[`User`](User.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L52)

___

### userGroupRepositoryGetter

• `Protected` **userGroupRepositoryGetter**: `Getter`<[`UserGroupRepository`](UserGroupRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L72)

___

### userGroups

• `Readonly` **userGroups**: `HasManyRepositoryFactory`<[`UserGroup`](UserGroup.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L47)

___

### userInvitationRepositoryGetter

• `Protected` **userInvitationRepositoryGetter**: `Getter`<[`UserInvitationRepository`](UserInvitationRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:80](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L80)

___

### userInvitations

• `Readonly` **userInvitations**: `HasManyRepositoryFactory`<[`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L61)

___

### userLevelPermissionRepositoryGetter

• `Protected` **userLevelPermissionRepositoryGetter**: `Getter`<[`UserLevelPermissionRepository`](UserLevelPermissionRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L70)

___

### userLevelPermissions

• `Readonly` **userLevelPermissions**: `HasManyRepositoryFactory`<[`UserLevelPermission`](UserLevelPermission.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L42)

___

### userRepositoryGetter

• `Protected` **userRepositoryGetter**: `Getter`<[`UserRepository`](UserRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-tenant.repository.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-tenant.repository.ts#L74)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`UserTenant`](UserTenant.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`UserTenant`](UserTenant.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserTenant`](UserTenant.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`UserTenant`](UserTenant.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`UserTenant`](UserTenant.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserTenant`](UserTenant.md)[]\>

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
| `data` | `DataObject`<[`UserTenant`](UserTenant.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`UserTenant`](UserTenant.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`UserTenant`](UserTenant.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserTenant`](UserTenant.md)\>

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
| `entity` | [`UserTenant`](UserTenant.md) |
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
| `data` | `DataObject`<[`UserTenant`](UserTenant.md)\> |
| `where?` | `Where`<[`UserTenant`](UserTenant.md)\> |
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
| `data` | `DataObject`<[`UserTenant`](UserTenant.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
