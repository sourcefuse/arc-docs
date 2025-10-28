[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / ClientAuthRequest

# Class: ClientAuthRequest

## Hierarchy

- `CoreModel`<[`ClientAuthRequest`](ClientAuthRequest.md)\>

  ↳ **`ClientAuthRequest`**

## Table of contents

### Constructors

- [constructor](ClientAuthRequest.md#constructor)

### Properties

- [client\_id](ClientAuthRequest.md#client_id)
- [client\_secret](ClientAuthRequest.md#client_secret)
- [state](ClientAuthRequest.md#state)

## Constructors

### constructor

• **new ClientAuthRequest**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`ClientAuthRequest`](ClientAuthRequest.md)\> |

#### Inherited from

CoreModel<ClientAuthRequest\>.constructor

#### Defined in

packages/core/dist/models/core-model.d.ts:3

## Properties

### client\_id

• **client\_id**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/client-auth-request.dto.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/models/client-auth-request.dto.ts#L20)

___

### client\_secret

• **client\_secret**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/client-auth-request.dto.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/models/client-auth-request.dto.ts#L27)

___

### state

• `Optional` **state**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/client-auth-request.dto.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/models/client-auth-request.dto.ts#L32)
