[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / ResetPassword

# Class: ResetPassword

## Hierarchy

- [`RefreshTokenRequest`](RefreshTokenRequest.md)<[`ResetPassword`](ResetPassword.md)\>

  ↳ **`ResetPassword`**

## Table of contents

### Constructors

- [constructor](ResetPassword.md#constructor)

### Properties

- [oldPassword](ResetPassword.md#oldpassword)
- [password](ResetPassword.md#password)
- [refreshToken](ResetPassword.md#refreshtoken)
- [username](ResetPassword.md#username)

## Constructors

### constructor

• **new ResetPassword**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`ResetPassword`](ResetPassword.md) & [`RefreshTokenRequest`](RefreshTokenRequest.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

[RefreshTokenRequest](RefreshTokenRequest.md).[constructor](RefreshTokenRequest.md#constructor)

#### Defined in

packages/core/dist/models/core-model.d.ts:3

## Properties

### oldPassword

• `Optional` **oldPassword**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/reset-password.dto.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/reset-password.dto.ts#L32)

___

### password

• **password**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/reset-password.dto.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/reset-password.dto.ts#L26)

___

### refreshToken

• **refreshToken**: `string`

#### Inherited from

[RefreshTokenRequest](RefreshTokenRequest.md).[refreshToken](RefreshTokenRequest.md#refreshtoken)

#### Defined in

[services/authentication-service/src/models/refresh-token-request.model.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/refresh-token-request.model.ts#L16)

___

### username

• **username**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/reset-password.dto.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/modules/auth/models/reset-password.dto.ts#L19)
