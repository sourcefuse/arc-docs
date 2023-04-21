[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / LocalPreSignupProvider

# Class: LocalPreSignupProvider

## Implements

- `Provider`<[`PreSignupFn`](../interfaces/PreSignupFn.md)<[`SignupRequestDto`](SignupRequestDto.md), { `email`: `string`  }\>\>

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

▸ **value**(): [`PreSignupFn`](../interfaces/PreSignupFn.md)<[`SignupRequestDto`](SignupRequestDto.md)<`AnyObject`\>, { `email`: `string`  }\>

#### Returns

[`PreSignupFn`](../interfaces/PreSignupFn.md)<[`SignupRequestDto`](SignupRequestDto.md)<`AnyObject`\>, { `email`: `string`  }\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/local-presignup.provider.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/authentication-service/src/providers/local-presignup.provider.ts#L12)
