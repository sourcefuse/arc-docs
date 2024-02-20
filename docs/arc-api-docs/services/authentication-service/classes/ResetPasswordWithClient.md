[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / ResetPasswordWithClient

# Class: ResetPasswordWithClient

## Hierarchy

- `CoreModel`<[`ResetPasswordWithClient`](ResetPasswordWithClient.md)\>

  ↳ **`ResetPasswordWithClient`**

## Implements

- [`IAuthClientDTO`](../interfaces/IAuthClientDTO.md)

## Table of contents

### Constructors

- [constructor](ResetPasswordWithClient.md#constructor)

### Properties

- [client\_id](ResetPasswordWithClient.md#client_id)
- [client\_secret](ResetPasswordWithClient.md#client_secret)
- [password](ResetPasswordWithClient.md#password)
- [token](ResetPasswordWithClient.md#token)

## Constructors

### constructor

• **new ResetPasswordWithClient**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`ResetPasswordWithClient`](ResetPasswordWithClient.md)\> |

#### Inherited from

CoreModel<ResetPasswordWithClient\>.constructor

#### Defined in

packages/core/dist/models/core-model.d.ts:3

## Properties

### client\_id

• **client\_id**: `string`

#### Implementation of

[IAuthClientDTO](../interfaces/IAuthClientDTO.md).[client_id](../interfaces/IAuthClientDTO.md#client_id)

#### Defined in

[services/authentication-service/src/models/reset-password-with-client.model.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/reset-password-with-client.model.ts#L33)

___

### client\_secret

• **client\_secret**: `string`

#### Implementation of

[IAuthClientDTO](../interfaces/IAuthClientDTO.md).[client_secret](../interfaces/IAuthClientDTO.md#client_secret)

#### Defined in

[services/authentication-service/src/models/reset-password-with-client.model.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/reset-password-with-client.model.ts#L39)

___

### password

• **password**: `string`

#### Defined in

[services/authentication-service/src/models/reset-password-with-client.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/reset-password-with-client.model.ts#L26)

___

### token

• **token**: `string`

#### Defined in

[services/authentication-service/src/models/reset-password-with-client.model.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/reset-password-with-client.model.ts#L20)
