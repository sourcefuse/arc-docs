[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / UserValidationProvider

# Class: UserValidationProvider

## Implements

- `Provider`<[`UserValidationFn`](../modules.md#uservalidationfn)\>

## Table of contents

### Constructors

- [constructor](UserValidationProvider.md#constructor)

### Properties

- [defaultAuthneticationProvider](UserValidationProvider.md#defaultauthneticationprovider)
- [googleAuthenticationProvider](UserValidationProvider.md#googleauthenticationprovider)
- [keycloakAuthenticationProvider](UserValidationProvider.md#keycloakauthenticationprovider)
- [logger](UserValidationProvider.md#logger)

### Methods

- [isAuthenticated](UserValidationProvider.md#isauthenticated)
- [value](UserValidationProvider.md#value)

## Constructors

### constructor

• **new UserValidationProvider**(`logger`, `googleAuthenticationProvider`, `keycloakAuthenticationProvider`, `defaultAuthneticationProvider`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `logger` | `ILogger` |
| `googleAuthenticationProvider` | [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn) |
| `keycloakAuthenticationProvider` | [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn) |
| `defaultAuthneticationProvider` | [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn) |

#### Defined in

[services/authentication-service/src/providers/user-validation.provider.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/user-validation.provider.ts#L11)

## Properties

### defaultAuthneticationProvider

• `Private` **defaultAuthneticationProvider**: [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)

#### Defined in

[services/authentication-service/src/providers/user-validation.provider.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/user-validation.provider.ts#L18)

___

### googleAuthenticationProvider

• `Private` **googleAuthenticationProvider**: [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)

#### Defined in

[services/authentication-service/src/providers/user-validation.provider.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/user-validation.provider.ts#L14)

___

### keycloakAuthenticationProvider

• `Private` **keycloakAuthenticationProvider**: [`AuthenticationProviderFn`](../modules.md#authenticationproviderfn)

#### Defined in

[services/authentication-service/src/providers/user-validation.provider.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/user-validation.provider.ts#L16)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/providers/user-validation.provider.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/user-validation.provider.ts#L12)

## Methods

### isAuthenticated

▸ **isAuthenticated**(`payload`, `signUpProvider?`, `token?`): `Promise`<`boolean`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `payload` | `AnyObject` |
| `signUpProvider?` | `string` |
| `token?` | `string` |

#### Returns

`Promise`<`boolean`\>

#### Defined in

[services/authentication-service/src/providers/user-validation.provider.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/user-validation.provider.ts#L29)

___

### value

▸ **value**(): [`UserValidationFn`](../modules.md#uservalidationfn)

#### Returns

[`UserValidationFn`](../modules.md#uservalidationfn)

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/user-validation.provider.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/user-validation.provider.ts#L21)
