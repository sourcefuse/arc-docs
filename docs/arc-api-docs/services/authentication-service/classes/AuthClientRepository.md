[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / AuthClientRepository

# Class: AuthClientRepository

## Hierarchy

- `DefaultSoftCrudRepository`<[`AuthClient`](AuthClient.md), typeof [`id`](AuthClient.md#id)\>

  ↳ **`AuthClientRepository`**

## Table of contents

### Constructors

- [constructor](AuthClientRepository.md#constructor)

## Constructors

### constructor

• **new AuthClientRepository**(`dataSource`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |

#### Overrides

DefaultSoftCrudRepository&lt;
  AuthClient,
  typeof AuthClient.prototype.id
\&gt;.constructor

#### Defined in

[services/authentication-service/src/repositories/auth-client.repository.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/authentication-service/src/repositories/auth-client.repository.ts#L16)
