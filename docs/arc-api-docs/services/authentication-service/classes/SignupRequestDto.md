[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / SignupRequestDto

# Class: SignupRequestDto<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `AnyObject` |

## Hierarchy

- `CoreModel`<[`SignupRequestDto`](SignupRequestDto.md)<`T`\>\>

  ↳ **`SignupRequestDto`**

## Table of contents

### Constructors

- [constructor](SignupRequestDto.md#constructor)

### Properties

- [data](SignupRequestDto.md#data)
- [email](SignupRequestDto.md#email)

## Constructors

### constructor

• **new SignupRequestDto**<`T`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `AnyObject` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`SignupRequestDto`](SignupRequestDto.md)<`T`\>\> |

#### Inherited from

CoreModel<
  SignupRequestDto<T\>
\>.constructor

#### Defined in

packages/core/dist/models/core-model.d.ts:3

## Properties

### data

• `Optional` **data**: `T`

#### Defined in

[services/authentication-service/src/models/signup-request-dto.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/signup-request-dto.model.ts#L22)

___

### email

• **email**: `string`

#### Defined in

[services/authentication-service/src/models/signup-request-dto.model.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/signup-request-dto.model.ts#L16)
