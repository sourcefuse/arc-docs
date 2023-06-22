[@sourceloop/oidc-service](../README.md) / [Exports](../modules.md) / UserTenant

# Class: UserTenant

## Hierarchy

- `UserModifiableEntity`

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

UserModifiableEntity.constructor

#### Defined in

[services/oidc-service/src/models/user-tenant.model.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/oidc-service/src/models/user-tenant.model.ts#L71)

## Properties

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

### id

• `Optional` **id**: `string`

#### Defined in

[services/oidc-service/src/models/user-tenant.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/oidc-service/src/models/user-tenant.model.ts#L22)

___

### locale

• `Optional` **locale**: `string`

#### Implementation of

IUserPrefs.locale

#### Defined in

[services/oidc-service/src/models/user-tenant.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/oidc-service/src/models/user-tenant.model.ts#L36)

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

### roleId

• **roleId**: `string`

#### Defined in

[services/oidc-service/src/models/user-tenant.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/oidc-service/src/models/user-tenant.model.ts#L66)

___

### status

• `Optional` **status**: `UserStatus`

#### Defined in

[services/oidc-service/src/models/user-tenant.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/oidc-service/src/models/user-tenant.model.ts#L31)

___

### tenantId

• **tenantId**: `string`

#### Defined in

[services/oidc-service/src/models/user-tenant.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/oidc-service/src/models/user-tenant.model.ts#L46)

___

### userId

• **userId**: `string`

#### Defined in

[services/oidc-service/src/models/user-tenant.model.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/oidc-service/src/models/user-tenant.model.ts#L56)

___

### userLevelPermissions

• **userLevelPermissions**: [`UserLevelPermission`](UserLevelPermission.md)[]

#### Defined in

[services/oidc-service/src/models/user-tenant.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/oidc-service/src/models/user-tenant.model.ts#L69)
