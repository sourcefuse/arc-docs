[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserInvitationRepository

# Class: UserInvitationRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`UserInvitation`](UserInvitation.md), typeof `UserInvitation.prototype.id`\>

  ↳ **`UserInvitationRepository`**

## Table of contents

### Constructors

- [constructor](UserInvitationRepository.md#constructor)

### Properties

- [getCurrentUser](UserInvitationRepository.md#getcurrentuser)
- [userTenant](UserInvitationRepository.md#usertenant)
- [userTenantRepositoryGetter](UserInvitationRepository.md#usertenantrepositorygetter)

### Methods

- [create](UserInvitationRepository.md#create)
- [createAll](UserInvitationRepository.md#createall)
- [replaceById](UserInvitationRepository.md#replacebyid)
- [save](UserInvitationRepository.md#save)
- [update](UserInvitationRepository.md#update)
- [updateAll](UserInvitationRepository.md#updateall)
- [updateById](UserInvitationRepository.md#updatebyid)

## Constructors

### constructor

• **new UserInvitationRepository**(`dataSource`, `userTenantRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  UserInvitation,
  typeof UserInvitation.prototype.id
\&gt;.constructor

#### Defined in

[services/user-tenant-service/src/repositories/user-invitation.repository.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-invitation.repository.ts#L25)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/user-invitation.repository.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-invitation.repository.ts#L31)

___

### userTenant

• `Readonly` **userTenant**: `BelongsToAccessor`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-invitation.repository.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-invitation.repository.ts#L20)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-invitation.repository.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-invitation.repository.ts#L29)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\>\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\>[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\>\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\>[]\>

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
| `data` | `DataObject`<[`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\>\>

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
| `entity` | [`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\> |
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
| `data` | `DataObject`<[`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\>\> |
| `where?` | `Where`<[`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\>\> |
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
| `data` | `DataObject`<[`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
