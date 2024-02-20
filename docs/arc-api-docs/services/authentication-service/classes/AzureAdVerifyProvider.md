[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / AzureAdVerifyProvider

# Class: AzureAdVerifyProvider

## Implements

- `Provider`<`VerifyFunction.AzureADAuthFn`\>

## Table of contents

### Constructors

- [constructor](AzureAdVerifyProvider.md#constructor)

### Properties

- [postVerifyProvider](AzureAdVerifyProvider.md#postverifyprovider)
- [preVerifyProvider](AzureAdVerifyProvider.md#preverifyprovider)
- [signupProvider](AzureAdVerifyProvider.md#signupprovider)
- [userCredsRepository](AzureAdVerifyProvider.md#usercredsrepository)
- [userRepository](AzureAdVerifyProvider.md#userrepository)

### Methods

- [value](AzureAdVerifyProvider.md#value)

## Constructors

### constructor

• **new AzureAdVerifyProvider**(`userRepository`, `userCredsRepository`, `signupProvider`, `preVerifyProvider`, `postVerifyProvider`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userRepository` | [`UserRepository`](UserRepository.md) |
| `userCredsRepository` | [`UserCredentialsRepository`](UserCredentialsRepository.md) |
| `signupProvider` | [`AzureAdSignUpFn`](../modules.md#azureadsignupfn) |
| `preVerifyProvider` | [`AzureAdPreVerifyFn`](../modules.md#azureadpreverifyfn) |
| `postVerifyProvider` | [`AzureAdPostVerifyFn`](../modules.md#azureadpostverifyfn) |

#### Defined in

[services/authentication-service/src/modules/auth/providers/azure-ad-verify.provider.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/azure-ad-verify.provider.ts#L22)

## Properties

### postVerifyProvider

• `Private` `Readonly` **postVerifyProvider**: [`AzureAdPostVerifyFn`](../modules.md#azureadpostverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/azure-ad-verify.provider.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/azure-ad-verify.provider.ts#L32)

___

### preVerifyProvider

• `Private` `Readonly` **preVerifyProvider**: [`AzureAdPreVerifyFn`](../modules.md#azureadpreverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/azure-ad-verify.provider.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/azure-ad-verify.provider.ts#L30)

___

### signupProvider

• `Private` `Readonly` **signupProvider**: [`AzureAdSignUpFn`](../modules.md#azureadsignupfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/azure-ad-verify.provider.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/azure-ad-verify.provider.ts#L28)

___

### userCredsRepository

• **userCredsRepository**: [`UserCredentialsRepository`](UserCredentialsRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/azure-ad-verify.provider.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/azure-ad-verify.provider.ts#L26)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/azure-ad-verify.provider.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/azure-ad-verify.provider.ts#L24)

## Methods

### value

▸ **value**(): `AzureADAuthFn`<`IAuthUser`\>

#### Returns

`AzureADAuthFn`<`IAuthUser`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/azure-ad-verify.provider.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/azure-ad-verify.provider.ts#L35)
