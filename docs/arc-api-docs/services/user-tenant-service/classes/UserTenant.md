[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserTenant

# Class: UserTenant

## Hierarchy

- `BaseEntity`

  ↳ **`UserTenant`**

## Implements

- `IUserPrefs`

## Table of contents

### Constructors

- [constructor](UserTenant.md#constructor)

### Properties

- [createdOn](UserTenant.md#createdon)
- [id](UserTenant.md#id)
- [locale](UserTenant.md#locale)
- [modifiedOn](UserTenant.md#modifiedon)
- [roleId](UserTenant.md#roleid)
- [status](UserTenant.md#status)
- [tenantId](UserTenant.md#tenantid)
- [userGroups](UserTenant.md#usergroups)
- [userId](UserTenant.md#userid)
- [userLevelPermissions](UserTenant.md#userlevelpermissions)

## Constructors

### constructor

• **new UserTenant**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`UserTenant`](UserTenant.md)\> |

#### Overrides

BaseEntity.constructor

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/user-tenant-service/src/models/user-tenant.model.ts#L79)

## Properties

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

BaseEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:3

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/user-tenant-service/src/models/user-tenant.model.ts#L27)

___

### locale

• `Optional` **locale**: `string`

#### Implementation of

IUserPrefs.locale

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/user-tenant-service/src/models/user-tenant.model.ts#L32)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

BaseEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### roleId

• **roleId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/user-tenant-service/src/models/user-tenant.model.ts#L71)

___

### status

• `Optional` **status**: `UserStatus`

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/user-tenant-service/src/models/user-tenant.model.ts#L41)

___

### tenantId

• **tenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/user-tenant-service/src/models/user-tenant.model.ts#L61)

___

### userGroups

• **userGroups**: [`UserGroup`](UserGroup.md)[]

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/user-tenant-service/src/models/user-tenant.model.ts#L77)

___

### userId

• **userId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/user-tenant-service/src/models/user-tenant.model.ts#L51)

___

### userLevelPermissions

• **userLevelPermissions**: [`UserLevelPermission`](UserLevelPermission.md)[]

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/services/user-tenant-service/src/models/user-tenant.model.ts#L74)
