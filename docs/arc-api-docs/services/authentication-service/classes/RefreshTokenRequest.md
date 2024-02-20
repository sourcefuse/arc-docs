[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / RefreshTokenRequest

# Class: RefreshTokenRequest<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

## Hierarchy

- `CoreModel`<`T` & [`RefreshTokenRequest`](RefreshTokenRequest.md)\>

  ↳ **`RefreshTokenRequest`**

  ↳↳ [`ResetPassword`](ResetPassword.md)

## Table of contents

### Constructors

- [constructor](RefreshTokenRequest.md#constructor)

### Properties

- [refreshToken](RefreshTokenRequest.md#refreshtoken)

## Constructors

### constructor

• **new RefreshTokenRequest**<`T`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<`T` & [`RefreshTokenRequest`](RefreshTokenRequest.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

CoreModel<
  T & RefreshTokenRequest
\>.constructor

#### Defined in

packages/core/dist/models/core-model.d.ts:3

## Properties

### refreshToken

• **refreshToken**: `string`

#### Defined in

[services/authentication-service/src/models/refresh-token-request.model.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/refresh-token-request.model.ts#L16)
