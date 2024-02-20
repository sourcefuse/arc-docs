[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / UserRepository

# Class: UserRepository

## Hierarchy

- `DefaultSoftCrudRepository`<[`User`](User.md), typeof [`id`](User.md#id), [`UserRelations`](../interfaces/UserRelations.md)\>

  ↳ **`UserRepository`**

## Table of contents

### Constructors

- [constructor](UserRepository.md#constructor)

### Properties

- [credentials](UserRepository.md#credentials)
- [getOtpRepository](UserRepository.md#getotprepository)
- [logger](UserRepository.md#logger)
- [passwordDecryptionFn](UserRepository.md#passworddecryptionfn)
- [tenant](UserRepository.md#tenant)
- [tenantRepositoryGetter](UserRepository.md#tenantrepositorygetter)
- [user](UserRepository.md#user)
- [userTenantRepositoryGetter](UserRepository.md#usertenantrepositorygetter)
- [userTenants](UserRepository.md#usertenants)

### Methods

- [changePassword](UserRepository.md#changepassword)
- [create](UserRepository.md#create)
- [createWithoutPassword](UserRepository.md#createwithoutpassword)
- [decryptPassword](UserRepository.md#decryptpassword)
- [firstTimeUser](UserRepository.md#firsttimeuser)
- [updateLastLogin](UserRepository.md#updatelastlogin)
- [updatePassword](UserRepository.md#updatepassword)
- [verifyPassword](UserRepository.md#verifypassword)

## Constructors

### constructor

• **new UserRepository**(`dataSource`, `getUserCredsRepository`, `getOtpRepository`, `tenantRepositoryGetter`, `userTenantRepositoryGetter`, `logger`, `passwordDecryptionFn`, `user`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getUserCredsRepository` | `Getter`<[`UserCredentialsRepository`](UserCredentialsRepository.md)\> |
| `getOtpRepository` | `Getter`<[`OtpRepository`](OtpRepository.md)\> |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)\> |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |
| `logger` | `ILogger` |
| `passwordDecryptionFn` | [`PasswordDecryptionFn`](../modules.md#passworddecryptionfn) |
| `user` | typeof `Entity` & { `prototype`: [`User`](User.md)<`DataObject`<`Model`\>\>  } |

#### Overrides

DefaultSoftCrudRepository&lt;
  User,
  typeof User.prototype.id,
  UserRelations
\&gt;.constructor

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L58)

## Properties

### credentials

• `Readonly` **credentials**: `HasOneRepositoryFactory`<[`UserCredentials`](UserCredentials.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L47)

___

### getOtpRepository

• **getOtpRepository**: `Getter`<[`OtpRepository`](OtpRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L64)

___

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L69)

___

### passwordDecryptionFn

• `Private` `Readonly` **passwordDecryptionFn**: [`PasswordDecryptionFn`](../modules.md#passworddecryptionfn)

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L71)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L51)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L66)

___

### user

• `Private` `Readonly` **user**: typeof `Entity` & { `prototype`: [`User`](User.md)<`DataObject`<`Model`\>\>  }

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L73)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L68)

___

### userTenants

• `Readonly` **userTenants**: `HasManyRepositoryFactory`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L53)

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

[services/authentication-service/src/repositories/user.repository.ts:184](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L184)

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

DefaultSoftCrudRepository.create

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:103](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L103)

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

[services/authentication-service/src/repositories/user.repository.ts:122](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L122)

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

[services/authentication-service/src/repositories/user.repository.ts:152](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L152)

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

[services/authentication-service/src/repositories/user.repository.ts:232](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L232)

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

[services/authentication-service/src/repositories/user.repository.ts:220](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L220)

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

[services/authentication-service/src/repositories/user.repository.ts:156](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L156)

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

[services/authentication-service/src/repositories/user.repository.ts:129](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user.repository.ts#L129)
