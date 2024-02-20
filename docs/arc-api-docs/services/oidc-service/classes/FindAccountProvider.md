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

[services/oidc-service/src/providers/find-account.provider.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/providers/find-account.provider.ts#L17)

## Properties

### userRepository

• `Protected` **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/oidc-service/src/providers/find-account.provider.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/providers/find-account.provider.ts#L19)

## Methods

### value

▸ **value**(): [`FindAccountProviderFn`](../modules.md#findaccountproviderfn)

#### Returns

[`FindAccountProviderFn`](../modules.md#findaccountproviderfn)

#### Implementation of

Provider.value

#### Defined in

[services/oidc-service/src/providers/find-account.provider.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/providers/find-account.provider.ts#L22)
