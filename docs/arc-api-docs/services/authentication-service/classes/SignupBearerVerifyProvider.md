[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / SignupBearerVerifyProvider

# Class: SignupBearerVerifyProvider

## Implements

- `Provider`<`VerifyFunction.BearerFn`<[`SignupRequest`](SignupRequest.md)\>\>

## Table of contents

### Constructors

- [constructor](SignupBearerVerifyProvider.md#constructor)

### Properties

- [authConfig](SignupBearerVerifyProvider.md#authconfig)
- [jwtKeysRepo](SignupBearerVerifyProvider.md#jwtkeysrepo)
- [logger](SignupBearerVerifyProvider.md#logger)

### Methods

- [value](SignupBearerVerifyProvider.md#value)

## Constructors

### constructor

• **new SignupBearerVerifyProvider**(`jwtKeysRepo`, `logger`, `authConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `jwtKeysRepo` | `JwtKeysRepository` |
| `logger` | `ILogger` |
| `authConfig?` | [`IAuthServiceConfig`](../interfaces/IAuthServiceConfig.md) |

#### Defined in

[services/authentication-service/src/providers/bearer-verify.provider.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/bearer-verify.provider.ts#L19)

## Properties

### authConfig

• `Private` `Optional` `Readonly` **authConfig**: [`IAuthServiceConfig`](../interfaces/IAuthServiceConfig.md)

#### Defined in

[services/authentication-service/src/providers/bearer-verify.provider.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/bearer-verify.provider.ts#L24)

___

### jwtKeysRepo

• **jwtKeysRepo**: `JwtKeysRepository`

#### Defined in

[services/authentication-service/src/providers/bearer-verify.provider.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/bearer-verify.provider.ts#L21)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/providers/bearer-verify.provider.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/bearer-verify.provider.ts#L22)

## Methods

### value

▸ **value**(): `BearerFn`<[`SignupRequest`](SignupRequest.md)\>

#### Returns

`BearerFn`<[`SignupRequest`](SignupRequest.md)\>

#### Implementation of

Provider.value

#### Defined in

[services/authentication-service/src/providers/bearer-verify.provider.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/bearer-verify.provider.ts#L27)
