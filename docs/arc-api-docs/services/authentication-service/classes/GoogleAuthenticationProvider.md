[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / GoogleAuthenticationProvider

# Class: GoogleAuthenticationProvider

## Implements

- `Provider`<[`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)\>

## Table of contents

### Constructors

- [constructor](GoogleAuthenticationProvider.md#constructor)

### Properties

- [logger](GoogleAuthenticationProvider.md#logger)

### Methods

- [isAuthenticated](GoogleAuthenticationProvider.md#isauthenticated)
- [value](GoogleAuthenticationProvider.md#value)

## Constructors

### constructor

• **new GoogleAuthenticationProvider**(`logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `logger` | `ILogger` |

#### Defined in

[services/authentication-service/src/providers/google-authentication.provider.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/google-authentication.provider.ts#L11)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/providers/google-authentication.provider.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/google-authentication.provider.ts#L11)

## Methods

### isAuthenticated

▸ **isAuthenticated**(`accessToken`, `req?`, `payload?`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `accessToken` | `string` |
| `req?` | [`AuthRefreshTokenRequest`](AuthRefreshTokenRequest.md) |
| `payload?` | `AnyObject` |

#### Returns

`boolean`

#### Defined in

[services/authentication-service/src/providers/google-authentication.provider.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/google-authentication.provider.ts#L19)

___

### value

▸ **value**(): [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)

#### Returns

[`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/google-authentication.provider.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/google-authentication.provider.ts#L12)
