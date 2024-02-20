[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserDto

# Class: UserDto

## Hierarchy

- [`User`](User.md)

  ↳ **`UserDto`**

## Table of contents

### Constructors

- [constructor](UserDto.md#constructor)

### Properties

- [authClientIds](UserDto.md#authclientids)
- [createdBy](UserDto.md#createdby)
- [createdOn](UserDto.md#createdon)
- [credentials](UserDto.md#credentials)
- [defaultTenantId](UserDto.md#defaulttenantid)
- [designation](UserDto.md#designation)
- [dob](UserDto.md#dob)
- [email](UserDto.md#email)
- [firstName](UserDto.md#firstname)
- [gender](UserDto.md#gender)
- [id](UserDto.md#id)
- [lastLogin](UserDto.md#lastlogin)
- [lastName](UserDto.md#lastname)
- [locale](UserDto.md#locale)
- [middleName](UserDto.md#middlename)
- [modifiedBy](UserDto.md#modifiedby)
- [modifiedOn](UserDto.md#modifiedon)
- [phone](UserDto.md#phone)
- [photoUrl](UserDto.md#photourl)
- [roleId](UserDto.md#roleid)
- [userTenants](UserDto.md#usertenants)
- [username](UserDto.md#username)

## Constructors

### constructor

• **new UserDto**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<`Object`\> |

#### Inherited from

[User](User.md).[constructor](User.md#constructor)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### authClientIds

• `Optional` **authClientIds**: `string`

#### Inherited from

[User](User.md).[authClientIds](User.md#authclientids)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L88)

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

[services/user-tenant-service/src/models/user.model.ts:135](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L135)

___

### defaultTenantId

• `Optional` **defaultTenantId**: `string`

#### Inherited from

[User](User.md).[defaultTenantId](User.md#defaulttenantid)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:132](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L132)

___

### designation

• `Optional` **designation**: `string`

#### Inherited from

[User](User.md).[designation](User.md#designation)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L74)

___

### dob

• `Optional` **dob**: `Date`

#### Inherited from

[User](User.md).[dob](User.md#dob)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L118)

___

### email

• **email**: `string`

#### Inherited from

[User](User.md).[email](User.md#email)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L69)

___

### firstName

• **firstName**: `string`

#### Inherited from

[User](User.md).[firstName](User.md#firstname)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L45)

___

### gender

• `Optional` **gender**: `Gender`

#### Inherited from

[User](User.md).[gender](User.md#gender)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:113](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L113)

___

### id

• **id**: `string`

#### Inherited from

[User](User.md).[id](User.md#id)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L38)

___

### lastLogin

• `Optional` **lastLogin**: `Date`

#### Inherited from

[User](User.md).[lastLogin](User.md#lastlogin)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:97](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L97)

___

### lastName

• **lastName**: `string`

#### Inherited from

[User](User.md).[lastName](User.md#lastname)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L51)

___

### locale

• `Optional` **locale**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-dto.model.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-dto.model.ts#L19)

___

### middleName

• `Optional` **middleName**: `string`

#### Inherited from

[User](User.md).[middleName](User.md#middlename)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L57)

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

### phone

• `Optional` **phone**: `string`

#### Inherited from

[User](User.md).[phone](User.md#phone)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L82)

___

### photoUrl

• `Optional` **photoUrl**: `string`

#### Inherited from

[User](User.md).[photoUrl](User.md#photourl)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:103](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L103)

___

### roleId

• **roleId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-dto.model.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-dto.model.ts#L14)

___

### userTenants

• **userTenants**: [`UserTenant`](UserTenant.md)[]

#### Inherited from

[User](User.md).[userTenants](User.md#usertenants)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:138](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L138)

___

### username

• **username**: `string`

#### Inherited from

[User](User.md).[username](User.md#username)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L63)
