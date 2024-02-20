[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / CognitoOauth2VerifyProvider

# Class: CognitoOauth2VerifyProvider

## Implements

- `Provider`<`VerifyFunction.CognitoAuthFn`\>

## Table of contents

### Constructors

- [constructor](CognitoOauth2VerifyProvider.md#constructor)

### Properties

- [postVerifyProvider](CognitoOauth2VerifyProvider.md#postverifyprovider)
- [preVerifyProvider](CognitoOauth2VerifyProvider.md#preverifyprovider)
- [signupProvider](CognitoOauth2VerifyProvider.md#signupprovider)
- [userCredsRepository](CognitoOauth2VerifyProvider.md#usercredsrepository)
- [userRepository](CognitoOauth2VerifyProvider.md#userrepository)

### Methods

- [value](CognitoOauth2VerifyProvider.md#value)

## Constructors

### constructor

• **new CognitoOauth2VerifyProvider**(`userRepository`, `userCredsRepository`, `signupProvider`, `preVerifyProvider`, `postVerifyProvider`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userRepository` | [`UserRepository`](UserRepository.md) |
| `userCredsRepository` | [`UserCredentialsRepository`](UserCredentialsRepository.md) |
| `signupProvider` | [`CognitoSignUpFn`](../modules.md#cognitosignupfn) |
| `preVerifyProvider` | [`CognitoPreVerifyFn`](../modules.md#cognitopreverifyfn) |
| `postVerifyProvider` | [`CognitoPostVerifyFn`](../modules.md#cognitopostverifyfn) |

#### Defined in

[services/authentication-service/src/modules/auth/providers/cognito-oauth2-verify.provider.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/cognito-oauth2-verify.provider.ts#L26)

## Properties

### postVerifyProvider

• `Private` `Readonly` **postVerifyProvider**: [`CognitoPostVerifyFn`](../modules.md#cognitopostverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/cognito-oauth2-verify.provider.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/cognito-oauth2-verify.provider.ts#L36)

___

### preVerifyProvider

• `Private` `Readonly` **preVerifyProvider**: [`CognitoPreVerifyFn`](../modules.md#cognitopreverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/cognito-oauth2-verify.provider.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/cognito-oauth2-verify.provider.ts#L34)

___

### signupProvider

• `Private` `Readonly` **signupProvider**: [`CognitoSignUpFn`](../modules.md#cognitosignupfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/cognito-oauth2-verify.provider.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/cognito-oauth2-verify.provider.ts#L32)

___

### userCredsRepository

• **userCredsRepository**: [`UserCredentialsRepository`](UserCredentialsRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/cognito-oauth2-verify.provider.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/cognito-oauth2-verify.provider.ts#L30)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/cognito-oauth2-verify.provider.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/cognito-oauth2-verify.provider.ts#L28)

## Methods

### value

▸ **value**(): `CognitoAuthFn`<`IAuthUser`\>

#### Returns

`CognitoAuthFn`<`IAuthUser`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/cognito-oauth2-verify.provider.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/cognito-oauth2-verify.provider.ts#L39)
