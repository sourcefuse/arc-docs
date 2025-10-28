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
- [passwordHashingFn](UserRepository.md#passwordhashingfn)
- [passwordVerifyFn](UserRepository.md#passwordverifyfn)
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

• **new UserRepository**(`dataSource`, `getUserCredsRepository`, `getOtpRepository`, `tenantRepositoryGetter`, `userTenantRepositoryGetter`, `logger`, `passwordDecryptionFn`, `passwordHashingFn`, `passwordVerifyFn`, `user`)

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
| `passwordHashingFn` | [`PasswordHashingFn`](../modules.md#passwordhashingfn) |
| `passwordVerifyFn` | [`PasswordVerifyFn`](../modules.md#passwordverifyfn) |
| `user` | typeof `Entity` & { `prototype`: [`User`](User.md)<`DataObject`<`Model`\>\>  } |

#### Overrides

DefaultSoftCrudRepository&lt;
  User,
  typeof User.prototype.id,
  UserRelations
\&gt;.constructor

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L60)

## Properties

### credentials

• `Readonly` **credentials**: `HasOneRepositoryFactory`<[`UserCredentials`](UserCredentials.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L49)

___

### getOtpRepository

• **getOtpRepository**: `Getter`<[`OtpRepository`](OtpRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L66)

___

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L71)

___

### passwordDecryptionFn

• `Private` `Readonly` **passwordDecryptionFn**: [`PasswordDecryptionFn`](../modules.md#passworddecryptionfn)

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L73)

___

### passwordHashingFn

• `Private` `Readonly` **passwordHashingFn**: [`PasswordHashingFn`](../modules.md#passwordhashingfn)

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L75)

___

### passwordVerifyFn

• `Private` `Readonly` **passwordVerifyFn**: [`PasswordVerifyFn`](../modules.md#passwordverifyfn)

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L77)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L53)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L68)

___

### user

• `Private` `Readonly` **user**: typeof `Entity` & { `prototype`: [`User`](User.md)<`DataObject`<`Model`\>\>  }

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L79)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L70)

___

### userTenants

• `Readonly` **userTenants**: `HasManyRepositoryFactory`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user.repository.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L55)

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

[services/authentication-service/src/repositories/user.repository.ts:189](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L189)

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

[services/authentication-service/src/repositories/user.repository.ts:109](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L109)

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

[services/authentication-service/src/repositories/user.repository.ts:127](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L127)

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

[services/authentication-service/src/repositories/user.repository.ts:157](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L157)

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

[services/authentication-service/src/repositories/user.repository.ts:237](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L237)

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

[services/authentication-service/src/repositories/user.repository.ts:225](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L225)

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

[services/authentication-service/src/repositories/user.repository.ts:161](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L161)

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

[services/authentication-service/src/repositories/user.repository.ts:134](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/user.repository.ts#L134)
