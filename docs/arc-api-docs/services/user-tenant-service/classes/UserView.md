[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserView

# Class: UserView<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

## Hierarchy

- `UserModifiableEntity`<`T` & [`UserView`](UserView.md)\>

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
- [status](UserView.md#status)
- [tenantId](UserView.md#tenantid)
- [tenantKey](UserView.md#tenantkey)
- [tenantName](UserView.md#tenantname)
- [userTenantId](UserView.md#usertenantid)
- [username](UserView.md#username)

## Constructors

### constructor

• **new UserView**<`T`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<`T` & [`UserView`](UserView.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

UserModifiableEntity<
  T & UserView
\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### authClientIds

• **authClientIds**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L70)

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

### defaultTenantId

• **defaultTenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:107](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L107)

___

### designation

• `Optional` **designation**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L59)

___

### dob

• `Optional` **dob**: `Date`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:100](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L100)

___

### email

• **email**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L54)

___

### firstName

• **firstName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L30)

___

### gender

• `Optional` **gender**: `Gender`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:92](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L92)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L23)

___

### lastLogin

• `Optional` **lastLogin**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L76)

___

### lastName

• **lastName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L36)

___

### middleName

• `Optional` **middleName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L42)

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

[services/user-tenant-service/src/models/user-view.model.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L64)

___

### photoUrl

• `Optional` **photoUrl**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L82)

___

### roleId

• **roleId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:130](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L130)

___

### roleName

• `Optional` **roleName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:149](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L149)

___

### status

• `Optional` **status**: `UserStatus`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:116](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L116)

___

### tenantId

• **tenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:123](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L123)

___

### tenantKey

• `Optional` **tenantKey**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:143](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L143)

___

### tenantName

• **tenantName**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:137](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L137)

___

### userTenantId

• **userTenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:156](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L156)

___

### username

• **username**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-view.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-view.model.ts#L48)
