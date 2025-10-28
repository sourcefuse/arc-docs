[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / CognitoAuthenticationProvider

# Class: CognitoAuthenticationProvider

## Implements

- `Provider`<[`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)\>

## Table of contents

### Constructors

- [constructor](CognitoAuthenticationProvider.md#constructor)

### Properties

- [logger](CognitoAuthenticationProvider.md#logger)
- [refreshTokenRepo](CognitoAuthenticationProvider.md#refreshtokenrepo)

### Methods

- [isAuthenticated](CognitoAuthenticationProvider.md#isauthenticated)
- [value](CognitoAuthenticationProvider.md#value)

## Constructors

### constructor

• **new CognitoAuthenticationProvider**(`logger`, `refreshTokenRepo`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `logger` | `ILogger` |
| `refreshTokenRepo` | [`RefreshTokenRepository`](RefreshTokenRepository.md) |

#### Defined in

[services/authentication-service/src/providers/cognito-authentication.provider.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/cognito-authentication.provider.ts#L13)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/providers/cognito-authentication.provider.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/cognito-authentication.provider.ts#L14)

___

### refreshTokenRepo

• **refreshTokenRepo**: [`RefreshTokenRepository`](RefreshTokenRepository.md)

#### Defined in

[services/authentication-service/src/providers/cognito-authentication.provider.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/cognito-authentication.provider.ts#L16)

## Methods

### isAuthenticated

▸ **isAuthenticated**(`refreshToken`, `req`, `payload`): `Promise`<`boolean`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `refreshToken` | `string` |
| `req` | [`AuthRefreshTokenRequest`](AuthRefreshTokenRequest.md) |
| `payload` | `AnyObject` |

#### Returns

`Promise`<`boolean`\>

#### Defined in

[services/authentication-service/src/providers/cognito-authentication.provider.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/cognito-authentication.provider.ts#L30)

___

### value

▸ **value**(): [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)

#### Returns

[`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/cognito-authentication.provider.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/cognito-authentication.provider.ts#L18)
