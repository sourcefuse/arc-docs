[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserLevelPermission

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

[services/user-tenant-service/src/models/user-level-permission.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/user-tenant-service/src/models/user-level-permission.model.ts#L46)

## Properties

### allowed

• **allowed**: `boolean`

#### Implementation of

UserPermission.allowed

#### Defined in

[services/user-tenant-service/src/models/user-level-permission.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/user-tenant-service/src/models/user-level-permission.model.ts#L34)

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

[services/user-tenant-service/src/models/user-level-permission.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/user-tenant-service/src/models/user-level-permission.model.ts#L21)

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

[services/user-tenant-service/src/models/user-level-permission.model.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/user-tenant-service/src/models/user-level-permission.model.ts#L27)

___

### userTenantId

• **userTenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-level-permission.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/user-tenant-service/src/models/user-level-permission.model.ts#L44)
