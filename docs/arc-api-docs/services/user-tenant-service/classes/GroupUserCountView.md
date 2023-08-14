[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / GroupUserCountView

# Class: GroupUserCountView

## Hierarchy

- [`Group`](Group.md)<[`GroupUserCountView`](GroupUserCountView.md)\>

  ↳ **`GroupUserCountView`**

## Table of contents

### Constructors

- [constructor](GroupUserCountView.md#constructor)

### Properties

- [createdBy](GroupUserCountView.md#createdby)
- [createdOn](GroupUserCountView.md#createdon)
- [description](GroupUserCountView.md#description)
- [groupType](GroupUserCountView.md#grouptype)
- [id](GroupUserCountView.md#id)
- [modifiedBy](GroupUserCountView.md#modifiedby)
- [modifiedOn](GroupUserCountView.md#modifiedon)
- [name](GroupUserCountView.md#name)
- [photoUrl](GroupUserCountView.md#photourl)
- [userCount](GroupUserCountView.md#usercount)
- [userGroups](GroupUserCountView.md#usergroups)

## Constructors

### constructor

• **new GroupUserCountView**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`GroupUserCountView`](GroupUserCountView.md) & [`Group`](Group.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

[Group](Group.md).[constructor](Group.md#constructor)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

[Group](Group.md).[createdBy](Group.md#createdby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

[Group](Group.md).[createdOn](Group.md#createdon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### description

• `Optional` **description**: `string`

#### Inherited from

[Group](Group.md).[description](Group.md#description)

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/group.model.ts#L39)

___

### groupType

• `Optional` **groupType**: [`Tenant`](../enums/UserTenantGroupType.md#tenant)

#### Inherited from

[Group](Group.md).[groupType](Group.md#grouptype)

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/group.model.ts#L55)

___

### id

• `Optional` **id**: `string`

#### Inherited from

[Group](Group.md).[id](Group.md#id)

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/group.model.ts#L29)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

[Group](Group.md).[modifiedBy](Group.md#modifiedby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

[Group](Group.md).[modifiedOn](Group.md#modifiedon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### name

• **name**: `string`

#### Inherited from

[Group](Group.md).[name](Group.md#name)

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/group.model.ts#L34)

___

### photoUrl

• `Optional` **photoUrl**: `string`

#### Inherited from

[Group](Group.md).[photoUrl](Group.md#photourl)

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/group.model.ts#L46)

___

### userCount

• `Optional` **userCount**: `number`

#### Defined in

[services/user-tenant-service/src/models/group-user-count-view.model.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/group-user-count-view.model.ts#L19)

___

### userGroups

• **userGroups**: [`UserGroup`](UserGroup.md)[]

#### Inherited from

[Group](Group.md).[userGroups](Group.md#usergroups)

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/group.model.ts#L58)
