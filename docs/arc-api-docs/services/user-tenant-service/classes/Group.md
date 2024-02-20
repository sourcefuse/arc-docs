[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / Group

# Class: Group<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

## Hierarchy

- `UserModifiableEntity`<`T` & [`Group`](Group.md)\>

  ↳ **`Group`**

## Table of contents

### Constructors

- [constructor](Group.md#constructor)

### Properties

- [createdBy](Group.md#createdby)
- [createdOn](Group.md#createdon)
- [description](Group.md#description)
- [id](Group.md#id)
- [modifiedBy](Group.md#modifiedby)
- [modifiedOn](Group.md#modifiedon)
- [name](Group.md#name)
- [photoUrl](Group.md#photourl)
- [tenantId](Group.md#tenantid)
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

[services/user-tenant-service/src/models/group.model.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/group.model.ts#L39)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/group.model.ts#L29)

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

[services/user-tenant-service/src/models/group.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/group.model.ts#L34)

___

### photoUrl

• `Optional` **photoUrl**: `string`

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/group.model.ts#L46)

___

### tenantId

• **tenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/group.model.ts#L53)

___

### userGroups

• **userGroups**: [`UserGroup`](UserGroup.md)[]

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/group.model.ts#L56)
