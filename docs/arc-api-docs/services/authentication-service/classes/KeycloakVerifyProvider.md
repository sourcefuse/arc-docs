[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / KeycloakVerifyProvider

# Class: KeycloakVerifyProvider

## Implements

- `Provider`<`VerifyFunction.KeycloakAuthFn`\>

## Table of contents

### Constructors

- [constructor](KeycloakVerifyProvider.md#constructor)

### Properties

- [postVerifyProvider](KeycloakVerifyProvider.md#postverifyprovider)
- [preVerifyProvider](KeycloakVerifyProvider.md#preverifyprovider)
- [signupProvider](KeycloakVerifyProvider.md#signupprovider)
- [userCredsRepository](KeycloakVerifyProvider.md#usercredsrepository)
- [userRepository](KeycloakVerifyProvider.md#userrepository)

### Methods

- [value](KeycloakVerifyProvider.md#value)

## Constructors

### constructor

• **new KeycloakVerifyProvider**(`userRepository`, `userCredsRepository`, `signupProvider`, `preVerifyProvider`, `postVerifyProvider`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userRepository` | [`UserRepository`](UserRepository.md) |
| `userCredsRepository` | [`UserCredentialsRepository`](UserCredentialsRepository.md) |
| `signupProvider` | [`KeyCloakSignUpFn`](../modules.md#keycloaksignupfn) |
| `preVerifyProvider` | [`KeyCloakPreVerifyFn`](../modules.md#keycloakpreverifyfn) |
| `postVerifyProvider` | [`KeyCloakPostVerifyFn`](../modules.md#keycloakpostverifyfn) |

#### Defined in

[services/authentication-service/src/modules/auth/providers/keycloak-verify.provider.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/keycloak-verify.provider.ts#L26)

## Properties

### postVerifyProvider

• `Private` `Readonly` **postVerifyProvider**: [`KeyCloakPostVerifyFn`](../modules.md#keycloakpostverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/keycloak-verify.provider.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/keycloak-verify.provider.ts#L36)

___

### preVerifyProvider

• `Private` `Readonly` **preVerifyProvider**: [`KeyCloakPreVerifyFn`](../modules.md#keycloakpreverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/keycloak-verify.provider.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/keycloak-verify.provider.ts#L34)

___

### signupProvider

• `Private` `Readonly` **signupProvider**: [`KeyCloakSignUpFn`](../modules.md#keycloaksignupfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/keycloak-verify.provider.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/keycloak-verify.provider.ts#L32)

___

### userCredsRepository

• **userCredsRepository**: [`UserCredentialsRepository`](UserCredentialsRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/keycloak-verify.provider.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/keycloak-verify.provider.ts#L30)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/keycloak-verify.provider.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/keycloak-verify.provider.ts#L28)

## Methods

### value

▸ **value**(): `KeycloakAuthFn`<`IAuthUser`\>

#### Returns

`KeycloakAuthFn`<`IAuthUser`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/keycloak-verify.provider.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/keycloak-verify.provider.ts#L39)
