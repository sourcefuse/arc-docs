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

[services/authentication-service/src/providers/google-authentication.provider.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/google-authentication.provider.ts#L9)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/providers/google-authentication.provider.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/google-authentication.provider.ts#L9)

## Methods

### isAuthenticated

▸ **isAuthenticated**(`accessToken`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `accessToken` | `string` |

#### Returns

`boolean`

#### Defined in

[services/authentication-service/src/providers/google-authentication.provider.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/google-authentication.provider.ts#L13)

___

### value

▸ **value**(): [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)

#### Returns

[`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/google-authentication.provider.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/google-authentication.provider.ts#L10)
