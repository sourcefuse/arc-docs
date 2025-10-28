[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / UserValidationProvider

# Class: UserValidationProvider

## Implements

- `Provider`<[`UserValidationFn`](../modules.md#uservalidationfn)\>

## Table of contents

### Constructors

- [constructor](UserValidationProvider.md#constructor)

### Properties

- [azureAuthenticationProvider](UserValidationProvider.md#azureauthenticationprovider)
- [cognitoAuthenticationProvider](UserValidationProvider.md#cognitoauthenticationprovider)
- [defaultAuthneticationProvider](UserValidationProvider.md#defaultauthneticationprovider)
- [googleAuthenticationProvider](UserValidationProvider.md#googleauthenticationprovider)
- [keycloakAuthenticationProvider](UserValidationProvider.md#keycloakauthenticationprovider)
- [logger](UserValidationProvider.md#logger)

### Methods

- [isAuthenticated](UserValidationProvider.md#isauthenticated)
- [value](UserValidationProvider.md#value)

## Constructors

### constructor

• **new UserValidationProvider**(`logger`, `googleAuthenticationProvider`, `keycloakAuthenticationProvider`, `azureAuthenticationProvider`, `cognitoAuthenticationProvider`, `defaultAuthneticationProvider`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `logger` | `ILogger` |
| `googleAuthenticationProvider` | [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn) |
| `keycloakAuthenticationProvider` | [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn) |
| `azureAuthenticationProvider` | [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn) |
| `cognitoAuthenticationProvider` | [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn) |
| `defaultAuthneticationProvider` | [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn) |

#### Defined in

[services/authentication-service/src/providers/user-validation.provider.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/user-validation.provider.ts#L11)

## Properties

### azureAuthenticationProvider

• `Private` `Readonly` **azureAuthenticationProvider**: [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)

#### Defined in

[services/authentication-service/src/providers/user-validation.provider.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/user-validation.provider.ts#L18)

___

### cognitoAuthenticationProvider

• `Private` `Readonly` **cognitoAuthenticationProvider**: [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)

#### Defined in

[services/authentication-service/src/providers/user-validation.provider.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/user-validation.provider.ts#L20)

___

### defaultAuthneticationProvider

• `Private` `Readonly` **defaultAuthneticationProvider**: [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)

#### Defined in

[services/authentication-service/src/providers/user-validation.provider.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/user-validation.provider.ts#L22)

___

### googleAuthenticationProvider

• `Private` `Readonly` **googleAuthenticationProvider**: [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)

#### Defined in

[services/authentication-service/src/providers/user-validation.provider.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/user-validation.provider.ts#L14)

___

### keycloakAuthenticationProvider

• `Private` `Readonly` **keycloakAuthenticationProvider**: [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)

#### Defined in

[services/authentication-service/src/providers/user-validation.provider.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/user-validation.provider.ts#L16)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/providers/user-validation.provider.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/user-validation.provider.ts#L12)

## Methods

### isAuthenticated

▸ **isAuthenticated**(`payload`, `req`, `signUpProvider?`, `token?`): `Promise`<`boolean`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `payload` | `AnyObject` |
| `req` | [`AuthRefreshTokenRequest`](AuthRefreshTokenRequest.md) |
| `signUpProvider?` | `string` |
| `token?` | `string` |

#### Returns

`Promise`<`boolean`\>

#### Defined in

[services/authentication-service/src/providers/user-validation.provider.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/user-validation.provider.ts#L33)

___

### value

▸ **value**(): [`UserValidationFn`](../modules.md#uservalidationfn)

#### Returns

[`UserValidationFn`](../modules.md#uservalidationfn)

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/user-validation.provider.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/user-validation.provider.ts#L25)
