[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / ClientPasswordVerifyProvider

# Class: ClientPasswordVerifyProvider

## Implements

- `Provider`<`VerifyFunction.OauthClientPasswordFn`\>

## Table of contents

### Constructors

- [constructor](ClientPasswordVerifyProvider.md#constructor)

### Properties

- [authClientRepository](ClientPasswordVerifyProvider.md#authclientrepository)

### Methods

- [value](ClientPasswordVerifyProvider.md#value)

## Constructors

### constructor

• **new ClientPasswordVerifyProvider**(`authClientRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `authClientRepository` | [`AuthClientRepository`](AuthClientRepository.md) |

#### Defined in

[services/authentication-service/src/modules/auth/providers/client-password-verify.provider.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/client-password-verify.provider.ts#L13)

## Properties

### authClientRepository

• **authClientRepository**: [`AuthClientRepository`](AuthClientRepository.md)

#### Defined in

[services/authentication-service/src/modules/auth/providers/client-password-verify.provider.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/client-password-verify.provider.ts#L15)

## Methods

### value

▸ **value**(): `OauthClientPasswordFn`<`IAuthClient`\>

#### Returns

`OauthClientPasswordFn`<`IAuthClient`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/modules/auth/providers/client-password-verify.provider.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/providers/client-password-verify.provider.ts#L18)
