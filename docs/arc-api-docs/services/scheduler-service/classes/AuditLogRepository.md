[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / AuditLogRepository

# Class: AuditLogRepository

Audit Log Repository for `@sourceloop/audit-log`.

**`Remarks`**

This will only be used, if the audit log flag is set in the environment variable. (More details provided in README.md)

## Hierarchy

- `DefaultCrudRepository`<[`ConditionalAuditLog`](ConditionalAuditLog.md), typeof [`id`](ConditionalAuditLog.md#id)\>

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
  ConditionalAuditLog,
  typeof ConditionalAuditLog.prototype.id
\&gt;.constructor

#### Defined in

[services/scheduler-service/src/repositories/audit.repository.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/audit.repository.ts#L16)
