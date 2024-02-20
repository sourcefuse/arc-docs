[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / AuthClient

# Class: AuthClient<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

## Hierarchy

- `BaseEntity`<`T` & [`AuthClient`](AuthClient.md)\>

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

• **new AuthClient**<`T`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<`T` & [`AuthClient`](AuthClient.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

BaseEntity<T & AuthClient\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### accessTokenExpiration

• **accessTokenExpiration**: `number`

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/auth-client.model.ts#L52)

___

### authCodeExpiration

• **authCodeExpiration**: `number`

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/auth-client.model.ts#L66)

___

### clientId

• **clientId**: `string`

#### Implementation of

IAuthClient.clientId

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/auth-client.model.ts#L27)

___

### clientSecret

• **clientSecret**: `string`

#### Implementation of

IAuthClient.clientSecret

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/auth-client.model.ts#L33)

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

BaseEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### id

• `Optional` **id**: `number`

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/auth-client.model.ts#L20)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

BaseEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### redirectUrl

• `Optional` **redirectUrl**: `string`

#### Implementation of

IAuthClient.redirectUrl

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/auth-client.model.ts#L39)

___

### refreshTokenExpiration

• **refreshTokenExpiration**: `number`

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/auth-client.model.ts#L59)

___

### secret

• **secret**: `string`

#### Defined in

[services/user-tenant-service/src/models/auth-client.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/auth-client.model.ts#L45)
