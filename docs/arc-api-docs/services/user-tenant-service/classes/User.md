[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / User

# Class: User<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

## Hierarchy

- `UserModifiableEntity`<`T` & [`User`](User.md)\>

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

[services/user-tenant-service/src/models/user.model.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user.model.ts#L87)

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

[services/user-tenant-service/src/models/user.model.ts:134](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user.model.ts#L134)

___

### defaultTenantId

• `Optional` **defaultTenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:131](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user.model.ts#L131)

___

### designation

• `Optional` **designation**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user.model.ts#L73)

___

### dob

• `Optional` **dob**: `Date`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:117](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user.model.ts#L117)

___

### email

• **email**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user.model.ts#L68)

___

### firstName

• **firstName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user.model.ts#L44)

___

### gender

• `Optional` **gender**: `Gender`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user.model.ts#L112)

___

### id

• `Optional` **id**: `string`

#### Implementation of

IAuthUser.id

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user.model.ts#L37)

___

### lastLogin

• `Optional` **lastLogin**: `Date`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:96](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user.model.ts#L96)

___

### lastName

• **lastName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user.model.ts#L50)

___

### middleName

• `Optional` **middleName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user.model.ts#L56)

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

[services/user-tenant-service/src/models/user.model.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user.model.ts#L81)

___

### photoUrl

• `Optional` **photoUrl**: `string`

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:102](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user.model.ts#L102)

___

### userTenants

• **userTenants**: [`UserTenant`](UserTenant.md)[]

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:137](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user.model.ts#L137)

___

### username

• **username**: `string`

#### Implementation of

IAuthUser.username

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user.model.ts#L62)
