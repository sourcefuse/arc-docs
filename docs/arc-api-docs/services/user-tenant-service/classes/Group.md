[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / Group

# Class: Group

## Hierarchy

- `UserModifiableEntity`

  ↳ **`Group`**

  ↳↳ [`GroupUserCountView`](GroupUserCountView.md)

  ↳↳ [`UserGroupView`](UserGroupView.md)

## Table of contents

### Constructors

- [constructor](Group.md#constructor)

### Properties

- [createdBy](Group.md#createdby)
- [createdOn](Group.md#createdon)
- [description](Group.md#description)
- [groupType](Group.md#grouptype)
- [id](Group.md#id)
- [modifiedBy](Group.md#modifiedby)
- [modifiedOn](Group.md#modifiedon)
- [name](Group.md#name)
- [photoUrl](Group.md#photourl)
- [userGroups](Group.md#usergroups)

## Constructors

### constructor

• **new Group**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Group`](Group.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/group.model.ts#L52)

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

### description

• `Optional` **description**: `string`

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/group.model.ts#L31)

___

### groupType

• `Optional` **groupType**: `Tenant`

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/group.model.ts#L47)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/group.model.ts#L21)

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

### name

• **name**: `string`

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/group.model.ts#L26)

___

### photoUrl

• `Optional` **photoUrl**: `string`

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/group.model.ts#L38)

___

### userGroups

• **userGroups**: [`UserGroup`](UserGroup.md)[]

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/group.model.ts#L50)
