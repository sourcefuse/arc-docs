[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserGroup

# Class: UserGroup

## Hierarchy

- `UserModifiableEntity`<[`UserGroup`](UserGroup.md)\>

  ↳ **`UserGroup`**

## Table of contents

### Constructors

- [constructor](UserGroup.md#constructor)

### Properties

- [createdBy](UserGroup.md#createdby)
- [createdOn](UserGroup.md#createdon)
- [groupId](UserGroup.md#groupid)
- [id](UserGroup.md#id)
- [modifiedBy](UserGroup.md#modifiedby)
- [modifiedOn](UserGroup.md#modifiedon)
- [userTenantId](UserGroup.md#usertenantid)

## Constructors

### constructor

• **new UserGroup**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`UserGroup`](UserGroup.md)\> |

#### Inherited from

UserModifiableEntity<UserGroup\>.constructor

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

### groupId

• **groupId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-group.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-group.model.ts#L32)

___

### id

• **id**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-group.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-group.model.ts#L22)

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

### userTenantId

• **userTenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-group.model.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-group.model.ts#L42)
