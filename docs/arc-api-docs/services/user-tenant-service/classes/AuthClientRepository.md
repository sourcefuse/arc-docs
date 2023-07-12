[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / AuthClientRepository

# Class: AuthClientRepository

## Hierarchy

- `DefaultCrudRepository`<[`AuthClient`](AuthClient.md), `undefined` \| `number`, {}, `this`\>

  ↳ **`AuthClientRepository`**

## Table of contents

### Constructors

- [constructor](AuthClientRepository.md#constructor)

### Properties

- [getAuditLogRepository](AuthClientRepository.md#getauditlogrepository)

## Constructors

### constructor

• **new AuthClientRepository**(`dataSource`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultCrudRepository&lt;AuthClient, typeof AuthClient.prototype.id\&gt;,
  AuthClientAuditOpts,
).constructor

#### Defined in

[services/user-tenant-service/src/repositories/auth-client.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/user-tenant-service/src/repositories/auth-client.repository.ts#L23)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/auth-client.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/user-tenant-service/src/repositories/auth-client.repository.ts#L27)
