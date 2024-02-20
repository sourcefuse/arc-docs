[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / SecureClientPasswordVerifyProvider

# Class: SecureClientPasswordVerifyProvider

## Implements

- `Provider`<`VerifyFunction.OauthClientPasswordFn`\>

## Table of contents

### Constructors

- [constructor](SecureClientPasswordVerifyProvider.md#constructor)

### Properties

- [authSecureClientRepository](SecureClientPasswordVerifyProvider.md#authsecureclientrepository)

### Methods

- [value](SecureClientPasswordVerifyProvider.md#value)

## Constructors

### constructor

• **new SecureClientPasswordVerifyProvider**(`authSecureClientRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `authSecureClientRepository` | [`AuthSecureClientRepository`](AuthSecureClientRepository.md) |

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-client-password-verify.provider.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/secure-client-password-verify.provider.ts#L13)

## Properties

### authSecureClientRepository

• **authSecureClientRepository**: [`AuthSecureClientRepository`](AuthSecureClientRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-client-password-verify.provider.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/secure-client-password-verify.provider.ts#L15)

## Methods

### value

▸ **value**(): `OauthClientPasswordFn`<`IAuthClient`\>

#### Returns

`OauthClientPasswordFn`<`IAuthClient`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/secure-client-password-verify.provider.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/secure-client-password-verify.provider.ts#L18)
