[@sourceloop/core](../README.md) / [Exports](../modules.md) / HttpAuthenticationVerifierProvider

# Class: HttpAuthenticationVerifierProvider

## Implements

- `Provider`<[`HttpAuthenticationVerifier`](../modules.md#httpauthenticationverifier)\>

## Table of contents

### Constructors

- [constructor](HttpAuthenticationVerifierProvider.md#constructor)

### Properties

- [coreConfig](HttpAuthenticationVerifierProvider.md#coreconfig)

### Methods

- [value](HttpAuthenticationVerifierProvider.md#value)

## Constructors

### constructor

• **new HttpAuthenticationVerifierProvider**(`coreConfig`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `coreConfig` | [`CoreConfig`](../interfaces/CoreConfig.md) |

#### Defined in

[src/components/swagger-authentication/providers/http-authentication.verifier.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/packages/core/src/components/swagger-authentication/providers/http-authentication.verifier.ts#L13)

## Properties

### coreConfig

• `Private` `Readonly` **coreConfig**: [`CoreConfig`](../interfaces/CoreConfig.md)

#### Defined in

[src/components/swagger-authentication/providers/http-authentication.verifier.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/packages/core/src/components/swagger-authentication/providers/http-authentication.verifier.ts#L15)

## Methods

### value

▸ **value**(): [`HttpAuthenticationVerifier`](../modules.md#httpauthenticationverifier)

#### Returns

[`HttpAuthenticationVerifier`](../modules.md#httpauthenticationverifier)

#### Implementation of

Provider.value

#### Defined in

[src/components/swagger-authentication/providers/http-authentication.verifier.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/packages/core/src/components/swagger-authentication/providers/http-authentication.verifier.ts#L17)