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

### Methods

- [value](JWTAsymmetricSignerProvider.md#value)

## Constructors

### constructor

• **new JWTAsymmetricSignerProvider**<`T`\>()

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `string` \| `object` \| `Buffer` |

## Methods

### value

▸ **value**(): [`JWTSignerFn`](../modules.md#jwtsignerfn)<`T`\>

#### Returns

[`JWTSignerFn`](../modules.md#jwtsignerfn)<`T`\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/jwt-asymmetric-signer.provider.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/jwt-asymmetric-signer.provider.ts#L13)
