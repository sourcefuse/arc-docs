[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / User

# Class: User<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

## Hierarchy

- `UserModifiableEntity`<`T` & [`User`](User.md)\>

  ↳ **`User`**

  ↳↳ [`UserDto`](UserDto.md)

## Implements

- `IAuthUser`

## Indexable

▪ [prop: `string`]: `any`

## Table of contents

### Constructors

- [constructor](User.md#constructor)

### Properties

- [authClientIds](User.md#authclientids)
- [createdBy](User.md#createdby)
- [createdOn](User.md#createdon)
- [credentials](User.md#credentials)
- [defaultTenantId](User.md#defaulttenantid)
- [designation](User.md#designation)
- [dob](User.md#dob)
- [email](User.md#email)
- [firstName](User.md#firstname)
- [gender](User.md#gender)
- [id](User.md#id)
- [lastLogin](User.md#lastlogin)
- [lastName](User.md#lastname)
- [middleName](User.md#middlename)
- [modifiedBy](User.md#modifiedby)
- [modifiedOn](User.md#modifiedon)
- [phone](User.md#phone)
- [photoUrl](User.md#photourl)
- [userTenants](User.md#usertenants)
- [username](User.md#username)

## Constructors

### constructor

• **new User**<`T`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<`T` & [`User`](User.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

UserModifiableEntity<T & User\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### authClientIds

• `Optional` **authClientIds**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L88)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### credentials

• **credentials**: [`UserCredentials`](UserCredentials.md)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:135](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L135)

___

### defaultTenantId

• `Optional` **defaultTenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:132](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L132)

___

### designation

• `Optional` **designation**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L74)

___

### dob

• `Optional` **dob**: `Date`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L118)

___

### email

• **email**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L69)

___

### firstName

• **firstName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L45)

___

### gender

• `Optional` **gender**: `Gender`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:113](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L113)

___

### id

• **id**: `string`

#### Implementation of

IAuthUser.id

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L38)

___

### lastLogin

• `Optional` **lastLogin**: `Date`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:97](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L97)

___

### lastName

• **lastName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L51)

___

### middleName

• `Optional` **middleName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L57)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### phone

• `Optional` **phone**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L82)

___

### photoUrl

• `Optional` **photoUrl**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:103](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L103)

___

### userTenants

• **userTenants**: [`UserTenant`](UserTenant.md)[]

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:138](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L138)

___

### username

• **username**: `string`

#### Implementation of

IAuthUser.username

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L63)
