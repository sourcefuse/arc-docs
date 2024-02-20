[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / TokenResponse

# Class: TokenResponse

## Hierarchy

- `CoreModel`<[`TokenResponse`](TokenResponse.md)\>

  ↳ **`TokenResponse`**

## Table of contents

### Constructors

- [constructor](TokenResponse.md#constructor)

### Properties

- [accessToken](TokenResponse.md#accesstoken)
- [expires](TokenResponse.md#expires)
- [pubnubToken](TokenResponse.md#pubnubtoken)
- [refreshToken](TokenResponse.md#refreshtoken)

## Constructors

### constructor

• **new TokenResponse**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`TokenResponse`](TokenResponse.md)\> |

#### Inherited from

CoreModel<TokenResponse\>.constructor

#### Defined in

packages/core/dist/models/core-model.d.ts:3

## Properties

### accessToken

• **accessToken**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/token-response.dto.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/token-response.dto.ts#L16)

___

### expires

• **expires**: `number`

#### Defined in

[services/authentication-service/src/modules/auth/models/token-response.dto.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/token-response.dto.ts#L29)

___

### pubnubToken

• `Optional` **pubnubToken**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/token-response.dto.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/token-response.dto.ts#L34)

___

### refreshToken

• **refreshToken**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/token-response.dto.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/token-response.dto.ts#L23)
