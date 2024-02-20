[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / ForgetPasswordResponseDto

# Class: ForgetPasswordResponseDto

## Hierarchy

- `CoreModel`<[`ForgetPasswordResponseDto`](ForgetPasswordResponseDto.md)\>

  ↳ **`ForgetPasswordResponseDto`**

## Table of contents

### Constructors

- [constructor](ForgetPasswordResponseDto.md#constructor)

### Properties

- [code](ForgetPasswordResponseDto.md#code)
- [email](ForgetPasswordResponseDto.md#email)
- [expiry](ForgetPasswordResponseDto.md#expiry)
- [user](ForgetPasswordResponseDto.md#user)

## Constructors

### constructor

• **new ForgetPasswordResponseDto**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`ForgetPasswordResponseDto`](ForgetPasswordResponseDto.md)\> |

#### Inherited from

CoreModel<ForgetPasswordResponseDto\>.constructor

#### Defined in

packages/core/dist/models/core-model.d.ts:3

## Properties

### code

• **code**: `string`

#### Defined in

[services/authentication-service/src/models/forget-password-response-dto.model.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/forget-password-response-dto.model.ts#L15)

___

### email

• **email**: `string`

#### Defined in

[services/authentication-service/src/models/forget-password-response-dto.model.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/forget-password-response-dto.model.ts#L27)

___

### expiry

• **expiry**: `number`

#### Defined in

[services/authentication-service/src/models/forget-password-response-dto.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/forget-password-response-dto.model.ts#L21)

___

### user

• **user**: [`User`](User.md)<`DataObject`<`Model`\>\>

#### Defined in

[services/authentication-service/src/models/forget-password-response-dto.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/forget-password-response-dto.model.ts#L32)
