[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / Group

# Class: Group<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

## Hierarchy

- `UserModifiableEntity`<`T` & [`Group`](Group.md)\>

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

• **new Group**<`T`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<`T` & [`Group`](Group.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

UserModifiableEntity<
  T & Group
\>.constructor

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

### description

• `Optional` **description**: `string`

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/group.model.ts#L39)

___

### groupType

• `Optional` **groupType**: [`Tenant`](../enums/UserTenantGroupType.md#tenant)

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/group.model.ts#L55)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/group.model.ts#L29)

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

### name

• **name**: `string`

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/group.model.ts#L34)

___

### photoUrl

• `Optional` **photoUrl**: `string`

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/group.model.ts#L46)

___

### userGroups

• **userGroups**: [`UserGroup`](UserGroup.md)[]

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/group.model.ts#L58)
