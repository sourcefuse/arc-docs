[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / UserLevelPermission

# Class: UserLevelPermission

## Hierarchy

- `UserModifiableEntity`

  ↳ **`UserLevelPermission`**

## Implements

- `UserPermission`<`string`\>

## Table of contents

### Constructors

- [constructor](UserLevelPermission.md#constructor)

### Properties

- [allowed](UserLevelPermission.md#allowed)
- [createdBy](UserLevelPermission.md#createdby)
- [createdOn](UserLevelPermission.md#createdon)
- [id](UserLevelPermission.md#id)
- [modifiedBy](UserLevelPermission.md#modifiedby)
- [modifiedOn](UserLevelPermission.md#modifiedon)
- [permission](UserLevelPermission.md#permission)
- [userTenantId](UserLevelPermission.md#usertenantid)

## Constructors

### constructor

• **new UserLevelPermission**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`UserLevelPermission`](UserLevelPermission.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/authentication-service/src/models/user-level-permission.model.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/authentication-service/src/models/user-level-permission.model.ts#L47)

## Properties

### allowed

• **allowed**: `boolean`

#### Implementation of

UserPermission.allowed

#### Defined in

[services/authentication-service/src/models/user-level-permission.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/authentication-service/src/models/user-level-permission.model.ts#L45)

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

### id

• `Optional` **id**: `string`

#### Defined in

[services/authentication-service/src/models/user-level-permission.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/authentication-service/src/models/user-level-permission.model.ts#L22)

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

### permission

• **permission**: `string`

#### Implementation of

UserPermission.permission

#### Defined in

[services/authentication-service/src/models/user-level-permission.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/authentication-service/src/models/user-level-permission.model.ts#L38)

___

### userTenantId

• **userTenantId**: `string`

#### Defined in

[services/authentication-service/src/models/user-level-permission.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/authentication-service/src/models/user-level-permission.model.ts#L32)
