[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / UserCredentials

# Class: UserCredentials

## Hierarchy

- `UserModifiableEntity`<[`UserCredentials`](UserCredentials.md)\>

  ↳ **`UserCredentials`**

## Table of contents

### Constructors

- [constructor](UserCredentials.md#constructor)

### Properties

- [authId](UserCredentials.md#authid)
- [authProvider](UserCredentials.md#authprovider)
- [authToken](UserCredentials.md#authtoken)
- [createdBy](UserCredentials.md#createdby)
- [createdOn](UserCredentials.md#createdon)
- [id](UserCredentials.md#id)
- [modifiedBy](UserCredentials.md#modifiedby)
- [modifiedOn](UserCredentials.md#modifiedon)
- [password](UserCredentials.md#password)
- [secretKey](UserCredentials.md#secretkey)
- [userId](UserCredentials.md#userid)

## Constructors

### constructor

• **new UserCredentials**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`UserCredentials`](UserCredentials.md)\> |

#### Inherited from

UserModifiableEntity<UserCredentials\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### authId

• `Optional` **authId**: `string`

#### Defined in

[services/authentication-service/src/models/user-credentials.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user-credentials.model.ts#L41)

___

### authProvider

• **authProvider**: `string`

#### Defined in

[services/authentication-service/src/models/user-credentials.model.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user-credentials.model.ts#L35)

___

### authToken

• `Optional` **authToken**: `string`

#### Defined in

[services/authentication-service/src/models/user-credentials.model.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user-credentials.model.ts#L47)

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

[services/authentication-service/src/models/user-credentials.model.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user-credentials.model.ts#L18)

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

### password

• `Optional` **password**: `string`

#### Defined in

[services/authentication-service/src/models/user-credentials.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user-credentials.model.ts#L59)

___

### secretKey

• `Optional` **secretKey**: `string`

#### Defined in

[services/authentication-service/src/models/user-credentials.model.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user-credentials.model.ts#L54)

___

### userId

• **userId**: `string`

#### Defined in

[services/authentication-service/src/models/user-credentials.model.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user-credentials.model.ts#L28)
