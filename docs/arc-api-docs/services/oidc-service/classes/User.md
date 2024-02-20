[@sourceloop/oidc-service](../README.md) / [Exports](../modules.md) / User

# Class: User

## Hierarchy

- `UserModifiableEntity`<[`User`](User.md)\>

  ↳ **`User`**

## Implements

- `IAuthUser`

## Table of contents

### Constructors

- [constructor](User.md#constructor)

### Properties

- [authClientIds](User.md#authclientids)
- [createdBy](User.md#createdby)
- [createdOn](User.md#createdon)
- [credentials](User.md#credentials)
- [defaultTenantId](User.md#defaulttenantid)
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
- [userTenants](User.md#usertenants)
- [username](User.md#username)

## Constructors

### constructor

• **new User**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`User`](User.md)\> |

#### Inherited from

UserModifiableEntity<User\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### authClientIds

• `Optional` **authClientIds**: `string`

#### Defined in

[services/oidc-service/src/models/user.model.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/user.model.ts#L75)

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

[services/oidc-service/src/models/user.model.ts:102](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/user.model.ts#L102)

___

### defaultTenantId

• **defaultTenantId**: `string`

#### Defined in

[services/oidc-service/src/models/user.model.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/user.model.ts#L112)

___

### dob

• **dob**: `Date`

#### Defined in

[services/oidc-service/src/models/user.model.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/user.model.ts#L89)

___

### email

• `Optional` **email**: `string`

#### Defined in

[services/oidc-service/src/models/user.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/user.model.ts#L61)

___

### firstName

• **firstName**: `string`

#### Defined in

[services/oidc-service/src/models/user.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/user.model.ts#L38)

___

### gender

• `Optional` **gender**: `Gender`

#### Defined in

[services/oidc-service/src/models/user.model.ts:99](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/user.model.ts#L99)

___

### id

• `Optional` **id**: `string`

#### Implementation of

IAuthUser.id

#### Defined in

[services/oidc-service/src/models/user.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/user.model.ts#L31)

___

### lastLogin

• `Optional` **lastLogin**: `Date`

#### Defined in

[services/oidc-service/src/models/user.model.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/user.model.ts#L84)

___

### lastName

• **lastName**: `string`

#### Defined in

[services/oidc-service/src/models/user.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/user.model.ts#L44)

___

### middleName

• `Optional` **middleName**: `string`

#### Defined in

[services/oidc-service/src/models/user.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/user.model.ts#L50)

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

[services/oidc-service/src/models/user.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/user.model.ts#L69)

___

### userTenants

• **userTenants**: [`UserTenant`](UserTenant.md)[]

#### Defined in

[services/oidc-service/src/models/user.model.ts:115](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/user.model.ts#L115)

___

### username

• **username**: `string`

#### Implementation of

IAuthUser.username

#### Defined in

[services/oidc-service/src/models/user.model.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/user.model.ts#L56)
