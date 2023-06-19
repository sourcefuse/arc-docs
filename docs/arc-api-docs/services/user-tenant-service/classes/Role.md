[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / Role

# Class: Role

## Hierarchy

- `UserModifiableEntity`

  ↳ **`Role`**

## Table of contents

### Constructors

- [constructor](Role.md#constructor)

### Properties

- [allowedClients](Role.md#allowedclients)
- [createdBy](Role.md#createdby)
- [createdByUser](Role.md#createdbyuser)
- [createdOn](Role.md#createdon)
- [id](Role.md#id)
- [modifiedBy](Role.md#modifiedby)
- [modifiedByUser](Role.md#modifiedbyuser)
- [modifiedOn](Role.md#modifiedon)
- [name](Role.md#name)
- [permissions](Role.md#permissions)
- [roleType](Role.md#roletype)
- [userTenants](Role.md#usertenants)

## Constructors

### constructor

• **new Role**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Role`](Role.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/role.model.ts#L61)

## Properties

### allowedClients

• `Optional` **allowedClients**: `string`[]

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/role.model.ts#L50)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:3

___

### createdByUser

• `Optional` **createdByUser**: [`UserView`](UserView.md)

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/role.model.ts#L56)

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

[services/user-tenant-service/src/models/role.model.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/role.model.ts#L20)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### modifiedByUser

• `Optional` **modifiedByUser**: [`UserView`](UserView.md)

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/role.model.ts#L59)

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

[services/user-tenant-service/src/models/role.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/role.model.ts#L26)

___

### permissions

• `Optional` **permissions**: `string`[]

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/role.model.ts#L43)

___

### roleType

• **roleType**: `never`

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/role.model.ts#L37)

___

### userTenants

• **userTenants**: [`UserTenant`](UserTenant.md)[]

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/user-tenant-service/src/models/role.model.ts#L53)
