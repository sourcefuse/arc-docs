[@sourceloop/oidc-service](../README.md) / [Exports](../modules.md) / AuthClient

# Class: AuthClient

## Hierarchy

- `UserModifiableEntity`

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
- [createdBy](AuthClient.md#createdby)
- [createdOn](AuthClient.md#createdon)
- [grantTypes](AuthClient.md#granttypes)
- [id](AuthClient.md#id)
- [modifiedBy](AuthClient.md#modifiedby)
- [modifiedOn](AuthClient.md#modifiedon)
- [redirectUrl](AuthClient.md#redirecturl)
- [refreshTokenExpiration](AuthClient.md#refreshtokenexpiration)
- [responseTypes](AuthClient.md#responsetypes)
- [secret](AuthClient.md#secret)

## Constructors

### constructor

• **new AuthClient**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`AuthClient`](AuthClient.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/oidc-service/src/models/auth-client.model.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/oidc-service/src/models/auth-client.model.ts#L81)

## Properties

### accessTokenExpiration

• **accessTokenExpiration**: `number`

#### Defined in

[services/oidc-service/src/models/auth-client.model.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/oidc-service/src/models/auth-client.model.ts#L65)

___

### authCodeExpiration

• **authCodeExpiration**: `number`

#### Defined in

[services/oidc-service/src/models/auth-client.model.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/oidc-service/src/models/auth-client.model.ts#L79)

___

### clientId

• **clientId**: `string`

#### Implementation of

IAuthClient.clientId

#### Defined in

[services/oidc-service/src/models/auth-client.model.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/oidc-service/src/models/auth-client.model.ts#L24)

___

### clientSecret

• **clientSecret**: `string`

#### Implementation of

IAuthClient.clientSecret

#### Defined in

[services/oidc-service/src/models/auth-client.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/oidc-service/src/models/auth-client.model.ts#L31)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:3

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:3

___

### grantTypes

• `Optional` **grantTypes**: `string`[]

#### Defined in

[services/oidc-service/src/models/auth-client.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/oidc-service/src/models/auth-client.model.ts#L51)

___

### id

• `Optional` **id**: `number`

#### Defined in

[services/oidc-service/src/models/auth-client.model.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/oidc-service/src/models/auth-client.model.ts#L17)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### redirectUrl

• `Optional` **redirectUrl**: `string`

#### Implementation of

IAuthClient.redirectUrl

#### Defined in

[services/oidc-service/src/models/auth-client.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/oidc-service/src/models/auth-client.model.ts#L44)

___

### refreshTokenExpiration

• **refreshTokenExpiration**: `number`

#### Defined in

[services/oidc-service/src/models/auth-client.model.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/oidc-service/src/models/auth-client.model.ts#L72)

___

### responseTypes

• `Optional` **responseTypes**: `string`[]

#### Defined in

[services/oidc-service/src/models/auth-client.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/oidc-service/src/models/auth-client.model.ts#L58)

___

### secret

• **secret**: `string`

#### Defined in

[services/oidc-service/src/models/auth-client.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/oidc-service/src/models/auth-client.model.ts#L38)