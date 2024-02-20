[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / ForgetPasswordDto

# Class: ForgetPasswordDto

## Hierarchy

- `CoreModel`<[`ForgetPasswordDto`](ForgetPasswordDto.md)\>

  ↳ **`ForgetPasswordDto`**

## Implements

- [`IAuthClientDTO`](../interfaces/IAuthClientDTO.md)

## Table of contents

### Constructors

- [constructor](ForgetPasswordDto.md#constructor)

### Properties

- [client\_id](ForgetPasswordDto.md#client_id)
- [client\_secret](ForgetPasswordDto.md#client_secret)
- [username](ForgetPasswordDto.md#username)

## Constructors

### constructor

• **new ForgetPasswordDto**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`ForgetPasswordDto`](ForgetPasswordDto.md)\> |

#### Inherited from

CoreModel<ForgetPasswordDto\>.constructor

#### Defined in

packages/core/dist/models/core-model.d.ts:3

## Properties

### client\_id

• **client\_id**: `string`

#### Implementation of

[IAuthClientDTO](../interfaces/IAuthClientDTO.md).[client_id](../interfaces/IAuthClientDTO.md#client_id)

#### Defined in

[services/authentication-service/src/models/forget-password-dto.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/forget-password-dto.model.ts#L26)

___

### client\_secret

• **client\_secret**: `string`

#### Implementation of

[IAuthClientDTO](../interfaces/IAuthClientDTO.md).[client_secret](../interfaces/IAuthClientDTO.md#client_secret)

#### Defined in

[services/authentication-service/src/models/forget-password-dto.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/forget-password-dto.model.ts#L32)

___

### username

• **username**: `string`

#### Defined in

[services/authentication-service/src/models/forget-password-dto.model.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/forget-password-dto.model.ts#L19)
