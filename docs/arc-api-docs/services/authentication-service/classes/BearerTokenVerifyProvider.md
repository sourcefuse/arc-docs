[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / BearerTokenVerifyProvider

# Class: BearerTokenVerifyProvider

## Implements

- `Provider`<`VerifyFunction.BearerFn`\>

## Table of contents

### Constructors

- [constructor](BearerTokenVerifyProvider.md#constructor)

### Properties

- [jwtVerifier](BearerTokenVerifyProvider.md#jwtverifier)
- [logger](BearerTokenVerifyProvider.md#logger)
- [revokedTokenRepository](BearerTokenVerifyProvider.md#revokedtokenrepository)

### Methods

- [value](BearerTokenVerifyProvider.md#value)

## Constructors

### constructor

• **new BearerTokenVerifyProvider**(`revokedTokenRepository`, `logger`, `jwtVerifier`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `revokedTokenRepository` | [`RevokedTokenRepository`](RevokedTokenRepository.md) |
| `logger` | `ILogger` |
| `jwtVerifier` | [`JWTVerifierFn`](../modules.md#jwtverifierfn)<[`AuthUser`](AuthUser.md)\> |

#### Defined in

[services/authentication-service/src/modules/auth/providers/bearer-token-verify.provider.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/bearer-token-verify.provider.ts#L19)

## Properties

### jwtVerifier

• **jwtVerifier**: [`JWTVerifierFn`](../modules.md#jwtverifierfn)<[`AuthUser`](AuthUser.md)\>

#### Defined in

[services/authentication-service/src/modules/auth/providers/bearer-token-verify.provider.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/bearer-token-verify.provider.ts#L24)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/modules/auth/providers/bearer-token-verify.provider.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/bearer-token-verify.provider.ts#L22)

___

### revokedTokenRepository

• **revokedTokenRepository**: [`RevokedTokenRepository`](RevokedTokenRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/bearer-token-verify.provider.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/bearer-token-verify.provider.ts#L21)

## Methods

### value

▸ **value**(): `BearerFn`<`IAuthUser`\>

#### Returns

`BearerFn`<`IAuthUser`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/bearer-token-verify.provider.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/bearer-token-verify.provider.ts#L27)
