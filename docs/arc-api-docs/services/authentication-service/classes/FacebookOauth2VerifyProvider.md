[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / FacebookOauth2VerifyProvider

# Class: FacebookOauth2VerifyProvider

## Implements

- `Provider`<`VerifyFunction.FacebookAuthFn`\>

## Table of contents

### Constructors

- [constructor](FacebookOauth2VerifyProvider.md#constructor)

### Properties

- [postVerifyProvider](FacebookOauth2VerifyProvider.md#postverifyprovider)
- [preVerifyProvider](FacebookOauth2VerifyProvider.md#preverifyprovider)
- [signupProvider](FacebookOauth2VerifyProvider.md#signupprovider)
- [userCredsRepository](FacebookOauth2VerifyProvider.md#usercredsrepository)
- [userRepository](FacebookOauth2VerifyProvider.md#userrepository)

### Methods

- [value](FacebookOauth2VerifyProvider.md#value)

## Constructors

### constructor

• **new FacebookOauth2VerifyProvider**(`userRepository`, `userCredsRepository`, `signupProvider`, `preVerifyProvider`, `postVerifyProvider`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userRepository` | [`UserRepository`](UserRepository.md) |
| `userCredsRepository` | [`UserCredentialsRepository`](UserCredentialsRepository.md) |
| `signupProvider` | [`FacebookSignUpFn`](../modules.md#facebooksignupfn) |
| `preVerifyProvider` | [`FacebookPreVerifyFn`](../modules.md#facebookpreverifyfn) |
| `postVerifyProvider` | [`FacebookPostVerifyFn`](../modules.md#facebookpostverifyfn) |

#### Defined in

[services/authentication-service/src/modules/auth/providers/facebook-oauth-verify.provider.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/facebook-oauth-verify.provider.ts#L26)

## Properties

### postVerifyProvider

• `Private` `Readonly` **postVerifyProvider**: [`FacebookPostVerifyFn`](../modules.md#facebookpostverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/facebook-oauth-verify.provider.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/facebook-oauth-verify.provider.ts#L36)

___

### preVerifyProvider

• `Private` `Readonly` **preVerifyProvider**: [`FacebookPreVerifyFn`](../modules.md#facebookpreverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/facebook-oauth-verify.provider.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/facebook-oauth-verify.provider.ts#L34)

___

### signupProvider

• `Private` `Readonly` **signupProvider**: [`FacebookSignUpFn`](../modules.md#facebooksignupfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/facebook-oauth-verify.provider.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/facebook-oauth-verify.provider.ts#L32)

___

### userCredsRepository

• **userCredsRepository**: [`UserCredentialsRepository`](UserCredentialsRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/facebook-oauth-verify.provider.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/facebook-oauth-verify.provider.ts#L30)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/facebook-oauth-verify.provider.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/facebook-oauth-verify.provider.ts#L28)

## Methods

### value

▸ **value**(): `FacebookAuthFn`<`IAuthUser`\>

#### Returns

`FacebookAuthFn`<`IAuthUser`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/facebook-oauth-verify.provider.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/facebook-oauth-verify.provider.ts#L39)
