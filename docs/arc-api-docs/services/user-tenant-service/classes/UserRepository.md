[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserRepository

# Class: UserRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`User`](User.md), typeof [`id`](UserDto.md#id), [`UserRelations`](../interfaces/UserRelations.md)\>

  ↳ **`UserRepository`**

## Table of contents

### Constructors

- [constructor](UserRepository.md#constructor)

### Properties

- [credentials](UserRepository.md#credentials)
- [defaultTenant](UserRepository.md#defaulttenant)
- [getCurrentUser](UserRepository.md#getcurrentuser)
- [tenantRepositoryGetter](UserRepository.md#tenantrepositorygetter)
- [user](UserRepository.md#user)
- [userCredentialsRepositoryGetter](UserRepository.md#usercredentialsrepositorygetter)
- [userTenantRepositoryGetter](UserRepository.md#usertenantrepositorygetter)
- [userTenants](UserRepository.md#usertenants)

### Methods

- [create](UserRepository.md#create)
- [createAll](UserRepository.md#createall)
- [replaceById](UserRepository.md#replacebyid)
- [save](UserRepository.md#save)
- [update](UserRepository.md#update)
- [updateAll](UserRepository.md#updateall)
- [updateById](UserRepository.md#updatebyid)

## Constructors

### constructor

• **new UserRepository**(`dataSource`, `tenantRepositoryGetter`, `userCredentialsRepositoryGetter`, `userTenantRepositoryGetter`, `user`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)\> |
| `userCredentialsRepositoryGetter` | `Getter`<[`UserCredentialsRepository`](UserCredentialsRepository.md)\> |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |
| `user` | typeof `Entity` & { `prototype`: [`User`](User.md)<`DataObject`<`Model`\>\>  } |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  User,
  typeof User.prototype.id,
  UserRelations
\&gt;.constructor

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user.repository.ts#L54)

## Properties

### credentials

• `Readonly` **credentials**: `HasOneRepositoryFactory`<[`UserCredentials`](UserCredentials.md), `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user.repository.ts#L44)

___

### defaultTenant

• `Readonly` **defaultTenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user.repository.ts#L39)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user.repository.ts#L66)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user.repository.ts#L58)

___

### user

• `Private` `Readonly` **user**: typeof `Entity` & { `prototype`: [`User`](User.md)<`DataObject`<`Model`\>\>  }

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user.repository.ts#L64)

___

### userCredentialsRepositoryGetter

• `Protected` **userCredentialsRepositoryGetter**: `Getter`<[`UserCredentialsRepository`](UserCredentialsRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user.repository.ts#L60)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user.repository.ts#L62)

___

### userTenants

• `Readonly` **userTenants**: `HasManyRepositoryFactory`<[`UserTenant`](UserTenant.md), `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user.repository.ts#L49)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`User`](User.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

#### Overrides

DefaultUserModifyCrudRepository.create

#### Defined in

[services/user-tenant-service/src/repositories/user.repository.ts:97](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user.repository.ts#L97)

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`User`](User.md)<`DataObject`<`Model`\>\>\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>[]\>

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
| `data` | `DataObject`<[`User`](User.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`User`](User.md)<`DataObject`<`Model`\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

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
| `entity` | [`User`](User.md)<`DataObject`<`Model`\>\> |
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
| `data` | `DataObject`<[`User`](User.md)<`DataObject`<`Model`\>\>\> |
| `where?` | `Where`<[`User`](User.md)<`DataObject`<`Model`\>\>\> |
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
| `data` | `DataObject`<[`User`](User.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
