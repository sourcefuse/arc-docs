[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / UserRepository

# Class: UserRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`User`](User.md), typeof `User.prototype.id`, [`UserRelations`](../interfaces/UserRelations.md)\>

  ↳ **`UserRepository`**

## Table of contents

### Constructors

- [constructor](UserRepository.md#constructor)

### Properties

- [credentials](UserRepository.md#credentials)
- [getCurrentUser](UserRepository.md#getcurrentuser)
- [getOtpRepository](UserRepository.md#getotprepository)
- [logger](UserRepository.md#logger)
- [passwordDecryptionFn](UserRepository.md#passworddecryptionfn)
- [tenant](UserRepository.md#tenant)
- [tenantRepositoryGetter](UserRepository.md#tenantrepositorygetter)
- [userTenantRepositoryGetter](UserRepository.md#usertenantrepositorygetter)
- [userTenants](UserRepository.md#usertenants)

### Methods

- [changePassword](UserRepository.md#changepassword)
- [create](UserRepository.md#create)
- [createAll](UserRepository.md#createall)
- [createWithoutPassword](UserRepository.md#createwithoutpassword)
- [decryptPassword](UserRepository.md#decryptpassword)
- [firstTimeUser](UserRepository.md#firsttimeuser)
- [replaceById](UserRepository.md#replacebyid)
- [save](UserRepository.md#save)
- [update](UserRepository.md#update)
- [updateAll](UserRepository.md#updateall)
- [updateById](UserRepository.md#updatebyid)
- [updateLastLogin](UserRepository.md#updatelastlogin)
- [updatePassword](UserRepository.md#updatepassword)
- [verifyPassword](UserRepository.md#verifypassword)

## Constructors

### constructor

• **new UserRepository**(`dataSource`, `getUserCredsRepository`, `getOtpRepository`, `getCurrentUser`, `tenantRepositoryGetter`, `userTenantRepositoryGetter`, `logger`, `passwordDecryptionFn`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getUserCredsRepository` | `Getter`<[`UserCredentialsRepository`](UserCredentialsRepository.md)\> |
| `getOtpRepository` | `Getter`<[`OtpRepository`](OtpRepository.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)\> |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |
| `logger` | `ILogger` |
| `passwordDecryptionFn` | [`PasswordDecryptionFn`](../modules.md#passworddecryptionfn) |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  User,
  typeof User.prototype.id,
  UserRelations
\&gt;.constructor

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L58)

## Properties

### credentials

• `Readonly` **credentials**: `HasOneRepositoryFactory`<[`UserCredentials`](UserCredentials.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L47)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L66)

___

### getOtpRepository

• **getOtpRepository**: `Getter`<[`OtpRepository`](OtpRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L64)

___

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L73)

___

### passwordDecryptionFn

• `Private` `Readonly` **passwordDecryptionFn**: [`PasswordDecryptionFn`](../modules.md#passworddecryptionfn)

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L75)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L51)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L70)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L72)

___

### userTenants

• `Readonly` **userTenants**: `HasManyRepositoryFactory`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L53)

## Methods

### changePassword

▸ **changePassword**(`username`, `newPassword`, `oldPassword?`): `Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `username` | `string` |
| `newPassword` | `string` |
| `oldPassword?` | `string` |

#### Returns

`Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:186](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L186)

___

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

[services/authentication-service/src/repositories/user.repository.ts:105](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L105)

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

### createWithoutPassword

▸ **createWithoutPassword**(`entity`, `options?`): `Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`User`](User.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:124](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L124)

___

### decryptPassword

▸ **decryptPassword**(`password`): `Promise`<`string`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `password` | `string` |

#### Returns

`Promise`<`string`\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:154](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L154)

___

### firstTimeUser

▸ **firstTimeUser**(`userId`): `Promise`<`boolean`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `userId` | `string` |

#### Returns

`Promise`<`boolean`\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:235](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L235)

___

### replaceById

▸ **replaceById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
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
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`User`](User.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16

___

### updateLastLogin

▸ **updateLastLogin**(`userId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `userId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:223](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L223)

___

### updatePassword

▸ **updatePassword**(`username`, `password`, `newPassword`): `Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `username` | `string` |
| `password` | `string` |
| `newPassword` | `string` |

#### Returns

`Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:158](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L158)

___

### verifyPassword

▸ **verifyPassword**(`username`, `password`): `Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `username` | `string` |
| `password` | `string` |

#### Returns

`Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:131](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/authentication-service/src/repositories/user.repository.ts#L131)
