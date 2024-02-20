[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / UserLevelResource

# Class: UserLevelResource

## Hierarchy

- `UserModifiableEntity`<[`UserLevelResource`](UserLevelResource.md)\>

  ↳ **`UserLevelResource`**

## Implements

- `IUserResource`<`string`\>

## Table of contents

### Constructors

- [constructor](UserLevelResource.md#constructor)

### Properties

- [allowed](UserLevelResource.md#allowed)
- [createdBy](UserLevelResource.md#createdby)
- [createdOn](UserLevelResource.md#createdon)
- [id](UserLevelResource.md#id)
- [modifiedBy](UserLevelResource.md#modifiedby)
- [modifiedOn](UserLevelResource.md#modifiedon)
- [resourceName](UserLevelResource.md#resourcename)
- [resourceValue](UserLevelResource.md#resourcevalue)
- [userTenantId](UserLevelResource.md#usertenantid)

## Constructors

### constructor

• **new UserLevelResource**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`UserLevelResource`](UserLevelResource.md)\> |

#### Inherited from

UserModifiableEntity<UserLevelResource\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### allowed

• **allowed**: `boolean`

#### Implementation of

IUserResource.allowed

#### Defined in

[services/authentication-service/src/models/user-level-resource.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user-level-resource.model.ts#L55)

___

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

[services/authentication-service/src/models/user-level-resource.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user-level-resource.model.ts#L23)

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

### resourceName

• **resourceName**: `string`

#### Implementation of

IUserResource.resourceName

#### Defined in

[services/authentication-service/src/models/user-level-resource.model.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user-level-resource.model.ts#L40)

___

### resourceValue

• **resourceValue**: `string`

#### Implementation of

IUserResource.resourceValue

#### Defined in

[services/authentication-service/src/models/user-level-resource.model.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user-level-resource.model.ts#L47)

___

### userTenantId

• **userTenantId**: `string`

#### Defined in

[services/authentication-service/src/models/user-level-resource.model.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user-level-resource.model.ts#L33)
