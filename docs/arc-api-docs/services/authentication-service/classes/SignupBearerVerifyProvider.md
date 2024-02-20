[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / SignupBearerVerifyProvider

# Class: SignupBearerVerifyProvider

## Implements

- `Provider`<`VerifyFunction.BearerFn`<[`SignupRequest`](SignupRequest.md)\>\>

## Table of contents

### Constructors

- [constructor](SignupBearerVerifyProvider.md#constructor)

### Properties

- [logger](SignupBearerVerifyProvider.md#logger)

### Methods

- [value](SignupBearerVerifyProvider.md#value)

## Constructors

### constructor

• **new SignupBearerVerifyProvider**(`logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `logger` | `ILogger` |

#### Defined in

[services/authentication-service/src/providers/bearer-verify.provider.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/bearer-verify.provider.ts#L15)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/providers/bearer-verify.provider.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/bearer-verify.provider.ts#L15)

## Methods

### value

▸ **value**(): `BearerFn`<[`SignupRequest`](SignupRequest.md)\>

#### Returns

`BearerFn`<[`SignupRequest`](SignupRequest.md)\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/bearer-verify.provider.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/bearer-verify.provider.ts#L17)
