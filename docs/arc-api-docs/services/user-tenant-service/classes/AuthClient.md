[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / AuthClient

# Class: AuthClient

## Hierarchy

- `BaseEntity`

  ↳ **`AuthClient`**

## Implements

- `IAuthClient`

## Table of contents

### Constructors

- [constructor](AuthClient.md#constructor)

### Properties

- [accessTokenExpiration](AuthClient.md#accesstokenexpiration)
- [authCodeExpiration](AuthClient.md#authcodeexpiration)
- [clientId](AuthClient.md#clientid)
- [clientSecret](AuthClient.md#clientsecret)
- [createdOn](AuthClient.md#createdon)
- [id](AuthClient.md#id)
- [modifiedOn](AuthClient.md#modifiedon)
- [redirectUrl](AuthClient.md#redirecturl)
- [refreshTokenExpiration](AuthClient.md#refreshtokenexpiration)
- [secret](AuthClient.md#secret)

## Constructors

### constructor

• **new AuthClient**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`AuthClient`](AuthClient.md)\> |

#### Overrides

BaseEntity.constructor

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/auth-client.model.ts#L65)

## Properties

### accessTokenExpiration

• **accessTokenExpiration**: `number`

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/auth-client.model.ts#L49)

___

### authCodeExpiration

• **authCodeExpiration**: `number`

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/auth-client.model.ts#L63)

___

### clientId

• **clientId**: `string`

#### Implementation of

IAuthClient.clientId

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/auth-client.model.ts#L24)

___

### clientSecret

• **clientSecret**: `string`

#### Implementation of

IAuthClient.clientSecret

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/auth-client.model.ts#L30)

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

BaseEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:3

___

### id

• `Optional` **id**: `number`

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/auth-client.model.ts#L17)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

BaseEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### redirectUrl

• `Optional` **redirectUrl**: `string`

#### Implementation of

IAuthClient.redirectUrl

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/auth-client.model.ts#L36)

___

### refreshTokenExpiration

• **refreshTokenExpiration**: `number`

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/auth-client.model.ts#L56)

___

### secret

• **secret**: `string`

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/auth-client.model.ts#L42)
