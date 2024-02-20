[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / JWTSymmetricVerifierProvider

# Class: JWTSymmetricVerifierProvider<T\>

## Type parameters

| Name |
| :------ |
| `T` |

## Implements

- `Provider`<[`JWTVerifierFn`](../modules.md#jwtverifierfn)<`T`\>\>

## Table of contents

### Constructors

- [constructor](JWTSymmetricVerifierProvider.md#constructor)

### Methods

- [value](JWTSymmetricVerifierProvider.md#value)

## Constructors

### constructor

• **new JWTSymmetricVerifierProvider**<`T`\>()

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

[services/authentication-service/src/providers/jwt-symmetric-verifier.provider.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/jwt-symmetric-verifier.provider.ts#L11)
