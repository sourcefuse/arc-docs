[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserView

# Class: UserView

## Hierarchy

- `UserModifiableEntity`

  ↳ **`UserView`**

## Table of contents

### Constructors

- [constructor](UserView.md#constructor)

### Properties

- [authClientIds](UserView.md#authclientids)
- [createdBy](UserView.md#createdby)
- [createdOn](UserView.md#createdon)
- [defaultTenantId](UserView.md#defaulttenantid)
- [designation](UserView.md#designation)
- [dob](UserView.md#dob)
- [email](UserView.md#email)
- [expiresOn](UserView.md#expireson)
- [firstName](UserView.md#firstname)
- [gender](UserView.md#gender)
- [id](UserView.md#id)
- [lastLogin](UserView.md#lastlogin)
- [lastName](UserView.md#lastname)
- [middleName](UserView.md#middlename)
- [modifiedBy](UserView.md#modifiedby)
- [modifiedOn](UserView.md#modifiedon)
- [phone](UserView.md#phone)
- [photoUrl](UserView.md#photourl)
- [roleId](UserView.md#roleid)
- [roleName](UserView.md#rolename)
- [roleType](UserView.md#roletype)
- [status](UserView.md#status)
- [tenantId](UserView.md#tenantid)
- [tenantKey](UserView.md#tenantkey)
- [tenantName](UserView.md#tenantname)
- [userTenantId](UserView.md#usertenantid)
- [username](UserView.md#username)

## Constructors

### constructor

• **new UserView**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`UserView`](UserView.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:168](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L168)

## Properties

### authClientIds

• **authClientIds**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L68)

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

### defaultTenantId

• **defaultTenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:105](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L105)

___

### designation

• `Optional` **designation**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L57)

___

### dob

• `Optional` **dob**: `Date`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:98](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L98)

___

### email

• **email**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L52)

___

### expiresOn

• `Optional` **expiresOn**: `Date`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:166](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L166)

___

### firstName

• **firstName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L28)

___

### gender

• `Optional` **gender**: `Gender`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:90](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L90)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L21)

___

### lastLogin

• `Optional` **lastLogin**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L74)

___

### lastName

• **lastName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L34)

___

### middleName

• `Optional` **middleName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L40)

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

[services/user-tenant-service/src/models/user-view.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L62)

___

### photoUrl

• `Optional` **photoUrl**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:80](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L80)

___

### roleId

• **roleId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:128](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L128)

___

### roleName

• `Optional` **roleName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:147](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L147)

___

### roleType

• `Optional` **roleType**: `number`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:153](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L153)

___

### status

• `Optional` **status**: `UserStatus`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:114](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L114)

___

### tenantId

• **tenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:121](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L121)

___

### tenantKey

• `Optional` **tenantKey**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:141](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L141)

___

### tenantName

• **tenantName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:135](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L135)

___

### userTenantId

• **userTenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:160](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L160)

___

### username

• **username**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/user-view.model.ts#L46)
