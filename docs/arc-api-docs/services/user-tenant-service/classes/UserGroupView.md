[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserGroupView

# Class: UserGroupView

## Hierarchy

- [`Group`](Group.md)

  ↳ **`UserGroupView`**

## Table of contents

### Constructors

- [constructor](UserGroupView.md#constructor)

### Properties

- [createdBy](UserGroupView.md#createdby)
- [createdOn](UserGroupView.md#createdon)
- [description](UserGroupView.md#description)
- [groupType](UserGroupView.md#grouptype)
- [id](UserGroupView.md#id)
- [modifiedBy](UserGroupView.md#modifiedby)
- [modifiedOn](UserGroupView.md#modifiedon)
- [name](UserGroupView.md#name)
- [photoUrl](UserGroupView.md#photourl)
- [userGroups](UserGroupView.md#usergroups)
- [userTenantId](UserGroupView.md#usertenantid)

## Constructors

### constructor

• **new UserGroupView**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`UserGroupView`](UserGroupView.md)\> |

#### Overrides

[Group](Group.md).[constructor](Group.md#constructor)

#### Defined in

[services/user-tenant-service/src/models/group-user-view.model.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/user-tenant-service/src/models/group-user-view.model.ts#L20)

## Properties

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

[Group](Group.md).[createdBy](Group.md#createdby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:3

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

[Group](Group.md).[createdOn](Group.md#createdon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:3

___

### description

• `Optional` **description**: `string`

#### Inherited from

[Group](Group.md).[description](Group.md#description)

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/user-tenant-service/src/models/group.model.ts#L31)

___

### groupType

• `Optional` **groupType**: `Tenant`

#### Inherited from

[Group](Group.md).[groupType](Group.md#grouptype)

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/user-tenant-service/src/models/group.model.ts#L47)

___

### id

• `Optional` **id**: `string`

#### Inherited from

[Group](Group.md).[id](Group.md#id)

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/user-tenant-service/src/models/group.model.ts#L21)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

[Group](Group.md).[modifiedBy](Group.md#modifiedby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

[Group](Group.md).[modifiedOn](Group.md#modifiedon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### name

• **name**: `string`

#### Inherited from

[Group](Group.md).[name](Group.md#name)

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/user-tenant-service/src/models/group.model.ts#L26)

___

### photoUrl

• `Optional` **photoUrl**: `string`

#### Inherited from

[Group](Group.md).[photoUrl](Group.md#photourl)

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/user-tenant-service/src/models/group.model.ts#L38)

___

### userGroups

• **userGroups**: [`UserGroup`](UserGroup.md)[]

#### Inherited from

[Group](Group.md).[userGroups](Group.md#usergroups)

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/user-tenant-service/src/models/group.model.ts#L50)

___

### userTenantId

• **userTenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/group-user-view.model.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/user-tenant-service/src/models/group-user-view.model.ts#L18)
