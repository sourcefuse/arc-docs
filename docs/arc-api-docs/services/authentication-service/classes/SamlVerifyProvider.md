[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / SamlVerifyProvider

# Class: SamlVerifyProvider

## Implements

- `Provider`<`VerifyFunction.SamlFn`\>

## Table of contents

### Constructors

- [constructor](SamlVerifyProvider.md#constructor)

### Properties

- [postVerifyProvider](SamlVerifyProvider.md#postverifyprovider)
- [preVerifyProvider](SamlVerifyProvider.md#preverifyprovider)
- [signupProvider](SamlVerifyProvider.md#signupprovider)
- [userCredsRepository](SamlVerifyProvider.md#usercredsrepository)
- [userRepository](SamlVerifyProvider.md#userrepository)

### Methods

- [value](SamlVerifyProvider.md#value)

## Constructors

### constructor

• **new SamlVerifyProvider**(`userRepository`, `userCredsRepository`, `signupProvider`, `preVerifyProvider`, `postVerifyProvider`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userRepository` | [`UserRepository`](UserRepository.md) |
| `userCredsRepository` | [`UserCredentialsRepository`](UserCredentialsRepository.md) |
| `signupProvider` | [`SamlSignUpFn`](../modules.md#samlsignupfn) |
| `preVerifyProvider` | [`SamlPreVerifyFn`](../modules.md#samlpreverifyfn) |
| `postVerifyProvider` | [`SamlPostVerifyFn`](../modules.md#samlpostverifyfn) |

#### Defined in

[services/authentication-service/src/modules/auth/providers/saml-verify.provider.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/saml-verify.provider.ts#L20)

## Properties

### postVerifyProvider

• `Private` `Readonly` **postVerifyProvider**: [`SamlPostVerifyFn`](../modules.md#samlpostverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/saml-verify.provider.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/saml-verify.provider.ts#L30)

___

### preVerifyProvider

• `Private` `Readonly` **preVerifyProvider**: [`SamlPreVerifyFn`](../modules.md#samlpreverifyfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/saml-verify.provider.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/saml-verify.provider.ts#L28)

___

### signupProvider

• `Private` `Readonly` **signupProvider**: [`SamlSignUpFn`](../modules.md#samlsignupfn)

#### Defined in

[services/authentication-service/src/modules/auth/providers/saml-verify.provider.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/saml-verify.provider.ts#L26)

___

### userCredsRepository

• **userCredsRepository**: [`UserCredentialsRepository`](UserCredentialsRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/saml-verify.provider.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/saml-verify.provider.ts#L24)

___

### userRepository

• **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/saml-verify.provider.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/saml-verify.provider.ts#L22)

## Methods

### value

▸ **value**(): `SamlFn`<`IAuthUser`\>

#### Returns

`SamlFn`<`IAuthUser`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/saml-verify.provider.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/saml-verify.provider.ts#L33)
