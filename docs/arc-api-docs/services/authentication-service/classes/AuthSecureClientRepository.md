[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / AuthSecureClientRepository

# Class: AuthSecureClientRepository

## Hierarchy

- `DefaultSoftCrudRepository`<[`AuthSecureClient`](AuthSecureClient.md), typeof [`id`](AuthClient.md#id)\>

  ↳ **`AuthSecureClientRepository`**

## Table of contents

### Constructors

- [constructor](AuthSecureClientRepository.md#constructor)

## Constructors

### constructor

• **new AuthSecureClientRepository**(`dataSource`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |

#### Overrides

DefaultSoftCrudRepository&lt;
  AuthSecureClient,
  typeof AuthSecureClient.prototype.id
\&gt;.constructor

#### Defined in

[services/authentication-service/src/repositories/auth-secure-client.repository.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/authentication-service/src/repositories/auth-secure-client.repository.ts#L16)
