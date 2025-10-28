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

### Properties

- [jwtKeysRepo](JWTAsymmetricVerifierProvider.md#jwtkeysrepo)

### Methods

- [value](JWTAsymmetricVerifierProvider.md#value)

## Constructors

### constructor

• **new JWTAsymmetricVerifierProvider**<`T`\>(`jwtKeysRepo`)

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `jwtKeysRepo` | `JwtKeysRepository` |

#### Defined in

[services/authentication-service/src/providers/jwt-asymmetric-verifier.provider.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/jwt-asymmetric-verifier.provider.ts#L15)

## Properties

### jwtKeysRepo

• **jwtKeysRepo**: `JwtKeysRepository`

#### Defined in

[services/authentication-service/src/providers/jwt-asymmetric-verifier.provider.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/jwt-asymmetric-verifier.provider.ts#L17)

## Methods

### value

▸ **value**(): [`JWTVerifierFn`](../modules.md#jwtverifierfn)<`T`\>

#### Returns

[`JWTVerifierFn`](../modules.md#jwtverifierfn)<`T`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/jwt-asymmetric-verifier.provider.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/jwt-asymmetric-verifier.provider.ts#L19)
