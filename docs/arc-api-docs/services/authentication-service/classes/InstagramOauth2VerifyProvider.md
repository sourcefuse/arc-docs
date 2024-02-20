[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / InstagramOauth2VerifyProvider

# Class: InstagramOauth2VerifyProvider

## Implements

- `Provider`<`VerifyFunction.InstagramAuthFn`\>

## Table of contents

### Constructors

- [constructor](InstagramOauth2VerifyProvider.md#constructor)

### Properties

- [postVerifyProvider](InstagramOauth2VerifyProvider.md#postverifyprovider)
- [preVerifyProvider](InstagramOauth2VerifyProvider.md#preverifyprovider)
- [signupProvider](InstagramOauth2VerifyProvider.md#signupprovider)
- [userCredsRepository](InstagramOauth2VerifyProvider.md#usercredsrepository)
- [userRepository](InstagramOauth2VerifyProvider.md#userrepository)

### Methods

- [value](InstagramOauth2VerifyProvider.md#value)

## Constructors

### constructor

• **new InstagramOauth2VerifyProvider**(`userRepository`, `userCredsRepository`, `signupProvider`, `preVerifyProvider`, `postVerifyProvider`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userRepository` | [`UserRepository`](UserRepository.md) |
| `userCredsRepository` | [`UserCredentialsRepository`](UserCredentialsRepository.md) |
| `signupProvider` | [`InstagramSignUpFn`](../modules.md#instagramsignupfn) |
| `preVerifyProvider` | [`InstagramPreVerifyFn`](../modules.md#instagrampreverifyfn) |
| `postVerifyProvider` | [`InstagramPostVerifyFn`](../modules.md#instagrampostverifyfn) |

#### Defined in

[services/authentication-service/src/modules/auth/providers/instagram-oauth2-verify.provider.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/instagram-oauth2-verify.provider.ts#L28)

## Properties

### postVerifyProvider

• `Private` `Readonly` **postVerifyProvider**: [`InstagramPostVerifyFn`](../modules.md#instagrampostverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/instagram-oauth2-verify.provider.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/instagram-oauth2-verify.provider.ts#L38)

___

### preVerifyProvider

• `Private` `Readonly` **preVerifyProvider**: [`InstagramPreVerifyFn`](../modules.md#instagrampreverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/instagram-oauth2-verify.provider.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/instagram-oauth2-verify.provider.ts#L36)

___

### signupProvider

• `Private` `Readonly` **signupProvider**: [`InstagramSignUpFn`](../modules.md#instagramsignupfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/instagram-oauth2-verify.provider.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/instagram-oauth2-verify.provider.ts#L34)

___

### userCredsRepository

• **userCredsRepository**: [`UserCredentialsRepository`](UserCredentialsRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/instagram-oauth2-verify.provider.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/instagram-oauth2-verify.provider.ts#L32)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/instagram-oauth2-verify.provider.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/instagram-oauth2-verify.provider.ts#L30)

## Methods

### value

▸ **value**(): `InstagramAuthFn`<`IAuthUser`\>

#### Returns

`InstagramAuthFn`<`IAuthUser`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/instagram-oauth2-verify.provider.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/instagram-oauth2-verify.provider.ts#L41)
