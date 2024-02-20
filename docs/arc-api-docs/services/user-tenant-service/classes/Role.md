[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / Role

# Class: Role

## Hierarchy

- `UserModifiableEntity`<[`Role`](Role.md)\>

  ↳ **`Role`**

## Table of contents

### Constructors

- [constructor](Role.md#constructor)

### Properties

- [allowedClients](Role.md#allowedclients)
- [createdBy](Role.md#createdby)
- [createdByUser](Role.md#createdbyuser)
- [createdOn](Role.md#createdon)
- [description](Role.md#description)
- [id](Role.md#id)
- [modifiedBy](Role.md#modifiedby)
- [modifiedByUser](Role.md#modifiedbyuser)
- [modifiedOn](Role.md#modifiedon)
- [name](Role.md#name)
- [permissions](Role.md#permissions)
- [roleType](Role.md#roletype)
- [tenantId](Role.md#tenantid)
- [userTenants](Role.md#usertenants)

## Constructors

### constructor

• **new Role**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Role`](Role.md)\> |

#### Inherited from

UserModifiableEntity<Role\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### allowedClients

• `Optional` **allowedClients**: `string`[]

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/role.model.ts#L59)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdByUser

• `Optional` **createdByUser**: [`UserView`](UserView.md)<`DataObject`<`Model`\>\>

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/role.model.ts#L72)

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

[services/user-tenant-service/src/models/role.model.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/role.model.ts#L40)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/role.model.ts#L19)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedByUser

• `Optional` **modifiedByUser**: [`UserView`](UserView.md)<`DataObject`<`Model`\>\>

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/role.model.ts#L75)

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

[services/user-tenant-service/src/models/role.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/role.model.ts#L25)

___

### permissions

• `Optional` **permissions**: `string`[]

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/role.model.ts#L49)

___

### roleType

• `Optional` **roleType**: `number`

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/role.model.ts#L35)

___

### tenantId

• **tenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/role.model.ts#L66)

___

### userTenants

• **userTenants**: [`UserTenant`](UserTenant.md)[]

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/role.model.ts#L69)
