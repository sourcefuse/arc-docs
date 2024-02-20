[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / AuthUser

# Class: AuthUser

## Hierarchy

- [`User`](User.md)<[`AuthUser`](AuthUser.md)\>

  ↳ **`AuthUser`**

## Implements

- `IAuthUserWithPermissions`

## Table of contents

### Constructors

- [constructor](AuthUser.md#constructor)

### Properties

- [age](AuthUser.md#age)
- [authClientId](AuthUser.md#authclientid)
- [authClientIds](AuthUser.md#authclientids)
- [createdBy](AuthUser.md#createdby)
- [createdOn](AuthUser.md#createdon)
- [credentials](AuthUser.md#credentials)
- [defaultTenantId](AuthUser.md#defaulttenantid)
- [designation](AuthUser.md#designation)
- [deviceInfo](AuthUser.md#deviceinfo)
- [dob](AuthUser.md#dob)
- [email](AuthUser.md#email)
- [externalAuthToken](AuthUser.md#externalauthtoken)
- [externalRefreshToken](AuthUser.md#externalrefreshtoken)
- [firstName](AuthUser.md#firstname)
- [gender](AuthUser.md#gender)
- [id](AuthUser.md#id)
- [lastLogin](AuthUser.md#lastlogin)
- [lastName](AuthUser.md#lastname)
- [middleName](AuthUser.md#middlename)
- [modifiedBy](AuthUser.md#modifiedby)
- [modifiedOn](AuthUser.md#modifiedon)
- [passwordExpiryTime](AuthUser.md#passwordexpirytime)
- [permissions](AuthUser.md#permissions)
- [phone](AuthUser.md#phone)
- [photoUrl](AuthUser.md#photourl)
- [role](AuthUser.md#role)
- [status](AuthUser.md#status)
- [tenantId](AuthUser.md#tenantid)
- [userPreferences](AuthUser.md#userpreferences)
- [userTenantId](AuthUser.md#usertenantid)
- [userTenants](AuthUser.md#usertenants)
- [username](AuthUser.md#username)

### Methods

- [getIdentifier](AuthUser.md#getidentifier)

## Constructors

### constructor

• **new AuthUser**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`AuthUser`](AuthUser.md) & [`User`](User.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

[User](User.md).[constructor](User.md#constructor)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### age

• `Optional` **age**: `number`

#### Defined in

[services/authentication-service/src/modules/auth/models/auth-user.model.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/auth-user.model.ts#L54)

___

### authClientId

• **authClientId**: `number`

#### Implementation of

IAuthUserWithPermissions.authClientId

#### Defined in

[services/authentication-service/src/modules/auth/models/auth-user.model.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/auth-user.model.ts#L64)

___

### authClientIds

• `Optional` **authClientIds**: `string`

#### Inherited from

[User](User.md).[authClientIds](User.md#authclientids)

#### Defined in

[services/authentication-service/src/models/user.model.ts:80](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L80)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

[User](User.md).[createdBy](User.md#createdby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

[User](User.md).[createdOn](User.md#createdon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### credentials

• **credentials**: [`UserCredentials`](UserCredentials.md)

#### Inherited from

[User](User.md).[credentials](User.md#credentials)

#### Defined in

[services/authentication-service/src/models/user.model.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L118)

___

### defaultTenantId

• **defaultTenantId**: `string`

#### Inherited from

[User](User.md).[defaultTenantId](User.md#defaulttenantid)

#### Defined in

[services/authentication-service/src/models/user.model.ts:128](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L128)

___

### designation

• `Optional` **designation**: `string`

#### Inherited from

[User](User.md).[designation](User.md#designation)

#### Defined in

[services/authentication-service/src/models/user.model.ts:100](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L100)

___

### deviceInfo

• `Optional` **deviceInfo**: [`DeviceInfo`](DeviceInfo.md)

#### Defined in

[services/authentication-service/src/modules/auth/models/auth-user.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/auth-user.model.ts#L49)

___

### dob

• **dob**: `Date`

#### Inherited from

[User](User.md).[dob](User.md#dob)

#### Defined in

[services/authentication-service/src/models/user.model.ts:105](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L105)

___

### email

• `Optional` **email**: `string`

#### Implementation of

IAuthUserWithPermissions.email

#### Inherited from

[User](User.md).[email](User.md#email)

#### Defined in

[services/authentication-service/src/models/user.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L66)

___

### externalAuthToken

• `Optional` **externalAuthToken**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/auth-user.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/auth-user.model.ts#L41)

___

### externalRefreshToken

• `Optional` **externalRefreshToken**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/auth-user.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/auth-user.model.ts#L59)

___

### firstName

• **firstName**: `string`

#### Implementation of

IAuthUserWithPermissions.firstName

#### Inherited from

[User](User.md).[firstName](User.md#firstname)

#### Defined in

[services/authentication-service/src/models/user.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L43)

___

### gender

• `Optional` **gender**: `Gender`

#### Inherited from

[User](User.md).[gender](User.md#gender)

#### Defined in

[services/authentication-service/src/models/user.model.ts:115](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L115)

___

### id

• `Optional` **id**: `string`

#### Implementation of

IAuthUserWithPermissions.id

#### Inherited from

[User](User.md).[id](User.md#id)

#### Defined in

[services/authentication-service/src/models/user.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L36)

___

### lastLogin

• `Optional` **lastLogin**: `Date`

#### Inherited from

[User](User.md).[lastLogin](User.md#lastlogin)

#### Defined in

[services/authentication-service/src/models/user.model.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L89)

___

### lastName

• **lastName**: `string`

#### Implementation of

IAuthUserWithPermissions.lastName

#### Inherited from

[User](User.md).[lastName](User.md#lastname)

#### Defined in

[services/authentication-service/src/models/user.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L49)

___

### middleName

• `Optional` **middleName**: `string`

#### Implementation of

IAuthUserWithPermissions.middleName

#### Inherited from

[User](User.md).[middleName](User.md#middlename)

#### Defined in

[services/authentication-service/src/models/user.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L55)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

[User](User.md).[modifiedBy](User.md#modifiedby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

[User](User.md).[modifiedOn](User.md#modifiedon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### passwordExpiryTime

• `Optional` **passwordExpiryTime**: `Date`

#### Implementation of

IAuthUserWithPermissions.passwordExpiryTime

#### Defined in

[services/authentication-service/src/modules/auth/models/auth-user.model.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/auth-user.model.ts#L84)

___

### permissions

• **permissions**: `string`[]

#### Implementation of

IAuthUserWithPermissions.permissions

#### Defined in

[services/authentication-service/src/modules/auth/models/auth-user.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/auth-user.model.ts#L30)

___

### phone

• `Optional` **phone**: `string`

#### Inherited from

[User](User.md).[phone](User.md#phone)

#### Defined in

[services/authentication-service/src/models/user.model.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L74)

___

### photoUrl

• `Optional` **photoUrl**: `string`

#### Inherited from

[User](User.md).[photoUrl](User.md#photourl)

#### Defined in

[services/authentication-service/src/models/user.model.ts:95](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L95)

___

### role

• **role**: `string`

#### Implementation of

IAuthUserWithPermissions.role

#### Defined in

[services/authentication-service/src/modules/auth/models/auth-user.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/auth-user.model.ts#L36)

___

### status

• `Optional` **status**: `UserStatus`

#### Defined in

[services/authentication-service/src/modules/auth/models/auth-user.model.ts:98](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/auth-user.model.ts#L98)

___

### tenantId

• `Optional` **tenantId**: `string`

#### Implementation of

IAuthUserWithPermissions.tenantId

#### Defined in

[services/authentication-service/src/modules/auth/models/auth-user.model.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/auth-user.model.ts#L74)

___

### userPreferences

• `Optional` **userPreferences**: `IUserPrefs`

#### Implementation of

IAuthUserWithPermissions.userPreferences

#### Defined in

[services/authentication-service/src/modules/auth/models/auth-user.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/auth-user.model.ts#L69)

___

### userTenantId

• `Optional` **userTenantId**: `string`

#### Implementation of

IAuthUserWithPermissions.userTenantId

#### Defined in

[services/authentication-service/src/modules/auth/models/auth-user.model.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/auth-user.model.ts#L79)

___

### userTenants

• **userTenants**: [`UserTenant`](UserTenant.md)[]

#### Inherited from

[User](User.md).[userTenants](User.md#usertenants)

#### Defined in

[services/authentication-service/src/models/user.model.ts:131](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L131)

___

### username

• **username**: `string`

#### Implementation of

IAuthUserWithPermissions.username

#### Inherited from

[User](User.md).[username](User.md#username)

#### Defined in

[services/authentication-service/src/models/user.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L61)

## Methods

### getIdentifier

▸ **getIdentifier**(): `undefined` \| `string`

#### Returns

`undefined` \| `string`

#### Implementation of

IAuthUserWithPermissions.getIdentifier

#### Defined in

[services/authentication-service/src/modules/auth/models/auth-user.model.ts:100](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/auth-user.model.ts#L100)
