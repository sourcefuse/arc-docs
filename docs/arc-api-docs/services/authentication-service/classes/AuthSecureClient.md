[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / AuthSecureClient

# Class: AuthSecureClient

## Hierarchy

- [`AuthClient`](AuthClient.md)<[`AuthSecureClient`](AuthSecureClient.md)\>

  ↳ **`AuthSecureClient`**

## Implements

- `IAuthSecureClient`

## Table of contents

### Constructors

- [constructor](AuthSecureClient.md#constructor)

### Properties

- [accessTokenExpiration](AuthSecureClient.md#accesstokenexpiration)
- [authCodeExpiration](AuthSecureClient.md#authcodeexpiration)
- [clientId](AuthSecureClient.md#clientid)
- [clientSecret](AuthSecureClient.md#clientsecret)
- [clientType](AuthSecureClient.md#clienttype)
- [createdBy](AuthSecureClient.md#createdby)
- [createdOn](AuthSecureClient.md#createdon)
- [id](AuthSecureClient.md#id)
- [modifiedBy](AuthSecureClient.md#modifiedby)
- [modifiedOn](AuthSecureClient.md#modifiedon)
- [redirectUrl](AuthSecureClient.md#redirecturl)
- [refreshTokenExpiration](AuthSecureClient.md#refreshtokenexpiration)
- [secret](AuthSecureClient.md#secret)

## Constructors

### constructor

• **new AuthSecureClient**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`AuthSecureClient`](AuthSecureClient.md) & [`AuthClient`](AuthClient.md)<[`AuthSecureClient`](AuthSecureClient.md)\>\> |

#### Inherited from

[AuthClient](AuthClient.md).[constructor](AuthClient.md#constructor)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### accessTokenExpiration

• **accessTokenExpiration**: `number`

#### Inherited from

[AuthClient](AuthClient.md).[accessTokenExpiration](AuthClient.md#accesstokenexpiration)

#### Defined in

[services/authentication-service/src/models/auth-client.model.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-client.model.ts#L54)

___

### authCodeExpiration

• **authCodeExpiration**: `number`

#### Inherited from

[AuthClient](AuthClient.md).[authCodeExpiration](AuthClient.md#authcodeexpiration)

#### Defined in

[services/authentication-service/src/models/auth-client.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-client.model.ts#L68)

___

### clientId

• **clientId**: `string`

#### Implementation of

IAuthSecureClient.clientId

#### Inherited from

[AuthClient](AuthClient.md).[clientId](AuthClient.md#clientid)

#### Defined in

[services/authentication-service/src/models/auth-client.model.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-client.model.ts#L27)

___

### clientSecret

• **clientSecret**: `string`

#### Implementation of

IAuthSecureClient.clientSecret

#### Inherited from

[AuthClient](AuthClient.md).[clientSecret](AuthClient.md#clientsecret)

#### Defined in

[services/authentication-service/src/models/auth-client.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-client.model.ts#L34)

___

### clientType

• **clientType**: `ClientType`

#### Implementation of

IAuthSecureClient.clientType

#### Defined in

[services/authentication-service/src/models/auth-secure-client.model.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-secure-client.model.ts#L20)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

[AuthClient](AuthClient.md).[createdBy](AuthClient.md#createdby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

[AuthClient](AuthClient.md).[createdOn](AuthClient.md#createdon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### id

• `Optional` **id**: `number`

#### Inherited from

[AuthClient](AuthClient.md).[id](AuthClient.md#id)

#### Defined in

[services/authentication-service/src/models/auth-client.model.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-client.model.ts#L20)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

[AuthClient](AuthClient.md).[modifiedBy](AuthClient.md#modifiedby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

[AuthClient](AuthClient.md).[modifiedOn](AuthClient.md#modifiedon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### redirectUrl

• `Optional` **redirectUrl**: `string`

#### Implementation of

IAuthSecureClient.redirectUrl

#### Inherited from

[AuthClient](AuthClient.md).[redirectUrl](AuthClient.md#redirecturl)

#### Defined in

[services/authentication-service/src/models/auth-client.model.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-client.model.ts#L47)

___

### refreshTokenExpiration

• **refreshTokenExpiration**: `number`

#### Inherited from

[AuthClient](AuthClient.md).[refreshTokenExpiration](AuthClient.md#refreshtokenexpiration)

#### Defined in

[services/authentication-service/src/models/auth-client.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-client.model.ts#L61)

___

### secret

• **secret**: `string`

#### Inherited from

[AuthClient](AuthClient.md).[secret](AuthClient.md#secret)

#### Defined in

[services/authentication-service/src/models/auth-client.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/auth-client.model.ts#L41)
