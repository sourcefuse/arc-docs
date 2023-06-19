[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / User

# Class: User

## Hierarchy

- `UserModifiableEntity`

  ↳ **`User`**

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

• **new User**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`User`](User.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:134](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L134)

## Properties

### authClientIds

• `Optional` **authClientIds**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L82)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:3

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:3

___

### credentials

• **credentials**: [`UserCredentials`](UserCredentials.md)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:129](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L129)

___

### defaultTenantId

• `Optional` **defaultTenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:126](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L126)

___

### designation

• `Optional` **designation**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L68)

___

### dob

• `Optional` **dob**: `Date`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L112)

___

### email

• **email**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L63)

___

### firstName

• **firstName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L39)

___

### gender

• `Optional` **gender**: `Gender`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:107](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L107)

___

### id

• `Optional` **id**: `string`

#### Implementation of

IAuthUser.id

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L32)

___

### lastLogin

• `Optional` **lastLogin**: `Date`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:91](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L91)

___

### lastName

• **lastName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L45)

___

### middleName

• `Optional` **middleName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L51)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### phone

• `Optional` **phone**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L76)

___

### photoUrl

• `Optional` **photoUrl**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:97](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L97)

___

### userTenants

• **userTenants**: [`UserTenant`](UserTenant.md)[]

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:132](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L132)

___

### username

• **username**: `string`

#### Implementation of

IAuthUser.username

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/user.model.ts#L57)
