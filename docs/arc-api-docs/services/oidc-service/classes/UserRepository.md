[@sourceloop/oidc-service](../README.md) / [Exports](../modules.md) / UserRepository

# Class: UserRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`User`](User.md), typeof [`id`](User.md#id), [`UserRelations`](../interfaces/UserRelations.md)\>

  ↳ **`UserRepository`**

## Table of contents

### Constructors

- [constructor](UserRepository.md#constructor)

### Properties

- [credentials](UserRepository.md#credentials)
- [getCurrentUser](UserRepository.md#getcurrentuser)
- [getOtpRepository](UserRepository.md#getotprepository)
- [logger](UserRepository.md#logger)
- [tenant](UserRepository.md#tenant)
- [tenantRepositoryGetter](UserRepository.md#tenantrepositorygetter)
- [userTenantRepositoryGetter](UserRepository.md#usertenantrepositorygetter)
- [userTenants](UserRepository.md#usertenants)

### Methods

- [changePassword](UserRepository.md#changepassword)
- [create](UserRepository.md#create)
- [createAll](UserRepository.md#createall)
- [createWithoutPassword](UserRepository.md#createwithoutpassword)
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

• **new UserRepository**(`dataSource`, `getUserCredsRepository`, `getOtpRepository`, `getCurrentUser`, `tenantRepositoryGetter`, `userTenantRepositoryGetter`, `logger`)

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

#### Overrides

DefaultUserModifyCrudRepository&lt;
  User,
  typeof User.prototype.id,
  UserRelations
\&gt;.constructor

#### Defined in

[services/oidc-service/src/repositories/user.repository.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user.repository.ts#L57)

## Properties

### credentials

• `Readonly` **credentials**: `HasOneRepositoryFactory`<[`UserCredentials`](UserCredentials.md), `undefined` \| `string`\>

#### Defined in

[services/oidc-service/src/repositories/user.repository.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user.repository.ts#L46)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/oidc-service/src/repositories/user.repository.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user.repository.ts#L65)

___

### getOtpRepository

• **getOtpRepository**: `Getter`<[`OtpRepository`](OtpRepository.md)\>

#### Defined in

[services/oidc-service/src/repositories/user.repository.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user.repository.ts#L63)

___

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/oidc-service/src/repositories/user.repository.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user.repository.ts#L72)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `undefined` \| `string`\>

#### Defined in

[services/oidc-service/src/repositories/user.repository.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user.repository.ts#L50)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/oidc-service/src/repositories/user.repository.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user.repository.ts#L69)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/oidc-service/src/repositories/user.repository.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user.repository.ts#L71)

___

### userTenants

• `Readonly` **userTenants**: `HasManyRepositoryFactory`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/oidc-service/src/repositories/user.repository.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user.repository.ts#L52)

## Methods

### changePassword

▸ **changePassword**(`username`, `newPassword`, `oldPassword?`): `Promise`<[`User`](User.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `username` | `string` |
| `newPassword` | `string` |
| `oldPassword?` | `string` |

#### Returns

`Promise`<[`User`](User.md)\>

#### Defined in

[services/oidc-service/src/repositories/user.repository.ts:176](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user.repository.ts#L176)

___

### create

▸ **create**(`entity`, `options?`): `Promise`<[`User`](User.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`User`](User.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<[`User`](User.md)\>

#### Overrides

DefaultUserModifyCrudRepository.create

#### Defined in

[services/oidc-service/src/repositories/user.repository.ts:102](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user.repository.ts#L102)

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`User`](User.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`User`](User.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`User`](User.md)[]\>

#### Inherited from

DefaultUserModifyCrudRepository.createAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:12

___

### createWithoutPassword

▸ **createWithoutPassword**(`entity`, `options?`): `Promise`<[`User`](User.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`User`](User.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<[`User`](User.md)\>

#### Defined in

[services/oidc-service/src/repositories/user.repository.ts:121](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user.repository.ts#L121)

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

[services/oidc-service/src/repositories/user.repository.ts:225](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user.repository.ts#L225)

___

### replaceById

▸ **replaceById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`User`](User.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`User`](User.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`User`](User.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`User`](User.md)\>

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
| `entity` | [`User`](User.md) |
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
| `data` | `DataObject`<[`User`](User.md)\> |
| `where?` | `Where`<[`User`](User.md)\> |
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
| `data` | `DataObject`<[`User`](User.md)\> |
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

[services/oidc-service/src/repositories/user.repository.ts:213](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user.repository.ts#L213)

___

### updatePassword

▸ **updatePassword**(`username`, `password`, `newPassword`): `Promise`<[`User`](User.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `username` | `string` |
| `password` | `string` |
| `newPassword` | `string` |

#### Returns

`Promise`<[`User`](User.md)\>

#### Defined in

[services/oidc-service/src/repositories/user.repository.ts:147](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user.repository.ts#L147)

___

### verifyPassword

▸ **verifyPassword**(`username`, `password`): `Promise`<[`User`](User.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `username` | `string` |
| `password` | `string` |

#### Returns

`Promise`<[`User`](User.md)\>

#### Defined in

[services/oidc-service/src/repositories/user.repository.ts:128](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/user.repository.ts#L128)
