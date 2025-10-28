[@sourceloop/oidc-service](../README.md) / [Exports](../modules.md) / FindAccountProvider

# Class: FindAccountProvider

## Implements

- `Provider`<[`FindAccountProviderFn`](../modules.md#findaccountproviderfn)\>

## Table of contents

### Constructors

- [constructor](FindAccountProvider.md#constructor)

### Properties

- [userRepository](FindAccountProvider.md#userrepository)

### Methods

- [value](FindAccountProvider.md#value)

## Constructors

### constructor

• **new FindAccountProvider**(`userRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userRepository` | [`UserRepository`](UserRepository.md) |

#### Defined in

[services/oidc-service/src/providers/find-account.provider.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/oidc-service/src/providers/find-account.provider.ts#L17)

## Properties

### userRepository

• `Protected` **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/oidc-service/src/providers/find-account.provider.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/oidc-service/src/providers/find-account.provider.ts#L19)

## Methods

### value

▸ **value**(): [`FindAccountProviderFn`](../modules.md#findaccountproviderfn)

The function returns a Promise that finds a user account based on a provided username and returns
account information and claims.

#### Returns

[`FindAccountProviderFn`](../modules.md#findaccountproviderfn)

The `value()` function is returning an asynchronous function that takes in context
(`ctx`), subject (`sub`), and token as parameters and returns a Promise of `FindAccountResult`.
Inside this function, it queries the user repository to find a user with the provided username
(`sub`), extracts certain user claims based on a predefined list (`claimsProfile`), and constructs
a response object with the account

#### Implementation of

Provider.value

#### Defined in

[services/oidc-service/src/providers/find-account.provider.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/oidc-service/src/providers/find-account.provider.ts#L31)
