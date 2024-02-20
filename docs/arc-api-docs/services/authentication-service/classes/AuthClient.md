[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / AuthClient

# Class: AuthClient<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

## Hierarchy

- `UserModifiableEntity`<`T` & [`AuthClient`](AuthClient.md)<`T`\>\>

  ↳ **`AuthClient`**

  ↳↳ [`AuthSecureClient`](AuthSecureClient.md)

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
- [createdBy](AuthClient.md#createdby)
- [createdOn](AuthClient.md#createdon)
- [id](AuthClient.md#id)
- [modifiedBy](AuthClient.md#modifiedby)
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
| `data?` | `Partial`<`T` & [`AuthClient`](AuthClient.md)<`T`\>\> |

#### Inherited from

UserModifiableEntity<T & AuthClient<T\>\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### accessTokenExpiration

• **accessTokenExpiration**: `number`

#### Defined in

[services/authentication-service/src/models/auth-client.model.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-client.model.ts#L54)

___

### authCodeExpiration

• **authCodeExpiration**: `number`

#### Defined in

[services/authentication-service/src/models/auth-client.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-client.model.ts#L68)

___

### clientId

• **clientId**: `string`

#### Implementation of

IAuthClient.clientId

#### Defined in

[services/authentication-service/src/models/auth-client.model.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-client.model.ts#L27)

___

### clientSecret

• **clientSecret**: `string`

#### Implementation of

IAuthClient.clientSecret

#### Defined in

[services/authentication-service/src/models/auth-client.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-client.model.ts#L34)

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

• `Optional` **id**: `number`

#### Defined in

[services/authentication-service/src/models/auth-client.model.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-client.model.ts#L20)

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

### redirectUrl

• `Optional` **redirectUrl**: `string`

#### Implementation of

IAuthClient.redirectUrl

#### Defined in

[services/authentication-service/src/models/auth-client.model.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-client.model.ts#L47)

___

### refreshTokenExpiration

• **refreshTokenExpiration**: `number`

#### Defined in

[services/authentication-service/src/models/auth-client.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-client.model.ts#L61)

___

### secret

• **secret**: `string`

#### Defined in

[services/authentication-service/src/models/auth-client.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-client.model.ts#L41)
