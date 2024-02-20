[@sourceloop/oidc-service](../README.md) / [Exports](../modules.md) / OidcProviderProvider

# Class: OidcProviderProvider

## Implements

- `Provider`<`OidcProvider`\>

## Table of contents

### Constructors

- [constructor](OidcProviderProvider.md#constructor)

### Properties

- [authClientRepository](OidcProviderProvider.md#authclientrepository)
- [findAccountProvider](OidcProviderProvider.md#findaccountprovider)
- [userRepository](OidcProviderProvider.md#userrepository)

### Methods

- [value](OidcProviderProvider.md#value)

## Constructors

### constructor

• **new OidcProviderProvider**(`authClientRepository`, `findAccountProvider`, `userRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `authClientRepository` | [`AuthClientRepository`](AuthClientRepository.md) |
| `findAccountProvider` | [`FindAccountProvider`](FindAccountProvider.md) |
| `userRepository` | [`UserRepository`](UserRepository.md) |

#### Defined in

[services/oidc-service/src/providers/oidc.provider.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/providers/oidc.provider.ts#L52)

## Properties

### authClientRepository

• `Private` **authClientRepository**: [`AuthClientRepository`](AuthClientRepository.md)

#### Defined in

[services/oidc-service/src/providers/oidc.provider.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/providers/oidc.provider.ts#L54)

___

### findAccountProvider

• `Private` **findAccountProvider**: [`FindAccountProvider`](FindAccountProvider.md)

#### Defined in

[services/oidc-service/src/providers/oidc.provider.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/providers/oidc.provider.ts#L56)

___

### userRepository

• `Protected` `Readonly` **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/oidc-service/src/providers/oidc.provider.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/providers/oidc.provider.ts#L58)

## Methods

### value

▸ **value**(): `Promise`<`default`\>

#### Returns

`Promise`<`default`\>

#### Implementation of

Provider.value

#### Defined in

[services/oidc-service/src/providers/oidc.provider.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/providers/oidc.provider.ts#L61)
