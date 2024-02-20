[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / JWTAsymmetricVerifierProvider

# Class: JWTAsymmetricVerifierProvider<T\>

## Type parameters

| Name |
| :------ |
| `T` |

## Implements

- `Provider`<[`JWTVerifierFn`](../modules.md#jwtverifierfn)<`T`\>\>

## Table of contents

### Constructors

- [constructor](JWTAsymmetricVerifierProvider.md#constructor)

### Methods

- [value](JWTAsymmetricVerifierProvider.md#value)

## Constructors

### constructor

• **new JWTAsymmetricVerifierProvider**<`T`\>()

#### Type parameters

| Name |
| :------ |
| `T` |

## Methods

### value

▸ **value**(): [`JWTVerifierFn`](../modules.md#jwtverifierfn)<`T`\>

#### Returns

[`JWTVerifierFn`](../modules.md#jwtverifierfn)<`T`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/jwt-asymmetric-verifier.provider.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/jwt-asymmetric-verifier.provider.ts#L12)
