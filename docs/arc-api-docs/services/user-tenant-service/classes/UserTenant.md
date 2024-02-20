[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserTenant

# Class: UserTenant

## Hierarchy

- `UserModifiableEntity`<[`UserTenant`](UserTenant.md)\>

  ↳ **`UserTenant`**

## Implements

- `IUserPrefs`

## Table of contents

### Constructors

- [constructor](UserTenant.md#constructor)

### Properties

- [createdBy](UserTenant.md#createdby)
- [createdOn](UserTenant.md#createdon)
- [id](UserTenant.md#id)
- [locale](UserTenant.md#locale)
- [modifiedBy](UserTenant.md#modifiedby)
- [modifiedOn](UserTenant.md#modifiedon)
- [roleId](UserTenant.md#roleid)
- [status](UserTenant.md#status)
- [tenantId](UserTenant.md#tenantid)
- [userGroups](UserTenant.md#usergroups)
- [userId](UserTenant.md#userid)
- [userInvitations](UserTenant.md#userinvitations)
- [userLevelPermissions](UserTenant.md#userlevelpermissions)

## Constructors

### constructor

• **new UserTenant**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`UserTenant`](UserTenant.md)\> |

#### Inherited from

UserModifiableEntity<UserTenant\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

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

### id

• `Optional` **id**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-tenant.model.ts#L26)

___

### locale

• `Optional` **locale**: `string`

#### Implementation of

IUserPrefs.locale

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-tenant.model.ts#L31)

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

### roleId

• **roleId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-tenant.model.ts#L69)

___

### status

• `Optional` **status**: `UserStatus`

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-tenant.model.ts#L40)

___

### tenantId

• **tenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-tenant.model.ts#L59)

___

### userGroups

• **userGroups**: [`UserGroup`](UserGroup.md)[]

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-tenant.model.ts#L75)

___

### userId

• **userId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-tenant.model.ts#L49)

___

### userInvitations

• **userInvitations**: [`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\>[]

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-tenant.model.ts#L78)

___

### userLevelPermissions

• **userLevelPermissions**: [`UserLevelPermission`](UserLevelPermission.md)[]

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-tenant.model.ts#L72)
