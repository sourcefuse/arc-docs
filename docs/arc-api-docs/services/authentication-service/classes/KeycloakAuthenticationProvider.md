[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / KeycloakAuthenticationProvider

# Class: KeycloakAuthenticationProvider

## Implements

- `Provider`<[`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)\>

## Table of contents

### Constructors

- [constructor](KeycloakAuthenticationProvider.md#constructor)

### Properties

- [logger](KeycloakAuthenticationProvider.md#logger)

### Methods

- [isAuthenticated](KeycloakAuthenticationProvider.md#isauthenticated)
- [value](KeycloakAuthenticationProvider.md#value)

## Constructors

### constructor

• **new KeycloakAuthenticationProvider**(`logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `logger` | `ILogger` |

#### Defined in

[services/authentication-service/src/providers/keycloak-authentication.provider.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/keycloak-authentication.provider.ts#L10)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/providers/keycloak-authentication.provider.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/keycloak-authentication.provider.ts#L10)

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

[services/authentication-service/src/providers/keycloak-authentication.provider.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/keycloak-authentication.provider.ts#L14)

___

### value

▸ **value**(): [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)

#### Returns

[`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/keycloak-authentication.provider.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/keycloak-authentication.provider.ts#L11)
