[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / AuditLogRepository

# Class: AuditLogRepository

## Hierarchy

- `DefaultCrudRepository`<[`AuditLog`](AuditLog.md), typeof [`id`](AuditLog.md#id)\>

  ↳ **`AuditLogRepository`**

## Table of contents

### Constructors

- [constructor](AuditLogRepository.md#constructor)

## Constructors

### constructor

• **new AuditLogRepository**(`dataSource`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |

#### Overrides

DefaultCrudRepository&lt;
  AuditLog,
  typeof AuditLog.prototype.id
\&gt;.constructor

#### Defined in

[services/audit-service/src/repositories/audit-log.repository.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/repositories/audit-log.repository.ts#L18)
