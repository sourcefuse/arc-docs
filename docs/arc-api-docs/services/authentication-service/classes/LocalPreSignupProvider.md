[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / LocalPreSignupProvider

# Class: LocalPreSignupProvider

## Implements

- `Provider`<[`PreSignupFn`](../modules.md#presignupfn)<[`SignupRequestDto`](SignupRequestDto.md), { `email`: `string`  }\>\>

## Table of contents

### Constructors

- [constructor](LocalPreSignupProvider.md#constructor)

### Methods

- [value](LocalPreSignupProvider.md#value)

## Constructors

### constructor

• **new LocalPreSignupProvider**()

## Methods

### value

▸ **value**(): [`PreSignupFn`](../modules.md#presignupfn)<[`SignupRequestDto`](SignupRequestDto.md)<`AnyObject`\>, { `email`: `string`  }\>

#### Returns

[`PreSignupFn`](../modules.md#presignupfn)<[`SignupRequestDto`](SignupRequestDto.md)<`AnyObject`\>, { `email`: `string`  }\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/local-presignup.provider.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/local-presignup.provider.ts#L12)
