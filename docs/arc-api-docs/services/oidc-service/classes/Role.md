[@sourceloop/oidc-service](../README.md) / [Exports](../modules.md) / Role

# Class: Role

## Hierarchy

- `UserModifiableEntity`<[`Role`](Role.md)\>

  ↳ **`Role`**

## Table of contents

### Constructors

- [constructor](Role.md#constructor)

### Properties

- [createdBy](Role.md#createdby)
- [createdOn](Role.md#createdon)
- [id](Role.md#id)
- [modifiedBy](Role.md#modifiedby)
- [modifiedOn](Role.md#modifiedon)
- [name](Role.md#name)
- [permissions](Role.md#permissions)
- [roleType](Role.md#roletype)

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

### id

• `Optional` **id**: `string`

#### Defined in

[services/oidc-service/src/models/role.model.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/role.model.ts#L16)

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

[services/oidc-service/src/models/role.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/role.model.ts#L22)

___

### permissions

• **permissions**: `string`[]

#### Defined in

[services/oidc-service/src/models/role.model.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/role.model.ts#L39)

___

### roleType

• **roleType**: `RoleTypes`

#### Defined in

[services/oidc-service/src/models/role.model.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/models/role.model.ts#L33)
