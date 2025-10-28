[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / JWTAsymmetricSignerProvider

# Class: JWTAsymmetricSignerProvider<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `string` \| `object` \| `Buffer` |

## Implements

- `Provider`<[`JWTSignerFn`](../modules.md#jwtsignerfn)<`T`\>\>

## Table of contents

### Constructors

- [constructor](JWTAsymmetricSignerProvider.md#constructor)

### Properties

- [jwtKeysRepo](JWTAsymmetricSignerProvider.md#jwtkeysrepo)

### Methods

- [value](JWTAsymmetricSignerProvider.md#value)

## Constructors

### constructor

• **new JWTAsymmetricSignerProvider**<`T`\>(`jwtKeysRepo`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `string` \| `object` \| `Buffer` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `jwtKeysRepo` | `JwtKeysRepository` |

#### Defined in

[services/authentication-service/src/providers/jwt-asymmetric-signer.provider.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/jwt-asymmetric-signer.provider.ts#L15)

## Properties

### jwtKeysRepo

• **jwtKeysRepo**: `JwtKeysRepository`

#### Defined in

[services/authentication-service/src/providers/jwt-asymmetric-signer.provider.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/jwt-asymmetric-signer.provider.ts#L17)

## Methods

### value

▸ **value**(): [`JWTSignerFn`](../modules.md#jwtsignerfn)<`T`\>

#### Returns

[`JWTSignerFn`](../modules.md#jwtsignerfn)<`T`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/jwt-asymmetric-signer.provider.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/jwt-asymmetric-signer.provider.ts#L20)
