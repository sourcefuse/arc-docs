[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / JWTSymmetricSignerProvider

# Class: JWTSymmetricSignerProvider<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `string` \| `object` \| `Buffer` |

## Implements

- `Provider`<[`JWTSignerFn`](../modules.md#jwtsignerfn)<`T`\>\>

## Table of contents

### Constructors

- [constructor](JWTSymmetricSignerProvider.md#constructor)

### Methods

- [value](JWTSymmetricSignerProvider.md#value)

## Constructors

### constructor

• **new JWTSymmetricSignerProvider**<`T`\>()

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

[services/authentication-service/src/providers/jwt-symmetric-signer.provider.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/jwt-symmetric-signer.provider.ts#L11)
