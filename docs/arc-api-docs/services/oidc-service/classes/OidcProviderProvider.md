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

[services/oidc-service/src/providers/oidc.provider.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/oidc-service/src/providers/oidc.provider.ts#L51)

## Properties

### authClientRepository

• `Private` **authClientRepository**: [`AuthClientRepository`](AuthClientRepository.md)

#### Defined in

[services/oidc-service/src/providers/oidc.provider.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/oidc-service/src/providers/oidc.provider.ts#L53)

___

### findAccountProvider

• `Private` **findAccountProvider**: [`FindAccountProvider`](FindAccountProvider.md)

#### Defined in

[services/oidc-service/src/providers/oidc.provider.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/oidc-service/src/providers/oidc.provider.ts#L55)

___

### userRepository

• `Protected` `Readonly` **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/oidc-service/src/providers/oidc.provider.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/oidc-service/src/providers/oidc.provider.ts#L57)

## Methods

### value

▸ **value**(): `Promise`<`default`\>

#### Returns

`Promise`<`default`\>

#### Implementation of

Provider.value

#### Defined in

[services/oidc-service/src/providers/oidc.provider.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/oidc-service/src/providers/oidc.provider.ts#L60)
