[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / AuthRefreshTokenRequest

# Class: AuthRefreshTokenRequest

## Hierarchy

- `CoreModel`<[`AuthRefreshTokenRequest`](AuthRefreshTokenRequest.md)\>

  ↳ **`AuthRefreshTokenRequest`**

## Table of contents

### Constructors

- [constructor](AuthRefreshTokenRequest.md#constructor)

### Properties

- [refreshToken](AuthRefreshTokenRequest.md#refreshtoken)
- [tenantId](AuthRefreshTokenRequest.md#tenantid)

## Constructors

### constructor

• **new AuthRefreshTokenRequest**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`AuthRefreshTokenRequest`](AuthRefreshTokenRequest.md)\> |

#### Inherited from

CoreModel<AuthRefreshTokenRequest\>.constructor

#### Defined in

packages/core/dist/models/core-model.d.ts:3

## Properties

### refreshToken

• **refreshToken**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/auth-refresh-token-request.dto.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/auth-refresh-token-request.dto.ts#L14)

___

### tenantId

• `Optional` **tenantId**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/auth-refresh-token-request.dto.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/auth-refresh-token-request.dto.ts#L19)
