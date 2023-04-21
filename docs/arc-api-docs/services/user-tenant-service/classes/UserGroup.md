[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserGroup

# Class: UserGroup

## Hierarchy

- `UserModifiableEntity`

  ↳ **`UserGroup`**

## Table of contents

### Constructors

- [constructor](UserGroup.md#constructor)

### Properties

- [createdBy](UserGroup.md#createdby)
- [createdOn](UserGroup.md#createdon)
- [groupId](UserGroup.md#groupid)
- [id](UserGroup.md#id)
- [isOwner](UserGroup.md#isowner)
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

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/user-tenant-service/src/models/user-group.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/user-group.model.ts#L51)

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

### groupId

• **groupId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-group.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/user-group.model.ts#L32)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-group.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/user-group.model.ts#L22)

___

### isOwner

• `Optional` **isOwner**: `boolean`

#### Defined in

[services/user-tenant-service/src/models/user-group.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/user-group.model.ts#L49)

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

### userTenantId

• **userTenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-group.model.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/user-group.model.ts#L42)
