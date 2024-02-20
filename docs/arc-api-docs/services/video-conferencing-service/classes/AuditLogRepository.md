[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / AuditLogRepository

# Class: AuditLogRepository

Audit Log Repository for `@sourceloop/audit-log`.

**`Remarks`**

This will only be used, if the audit log flag is set in the environment variable. (More details provided in README.md)

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

[services/video-conferencing-service/src/repositories/audit.repository.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/repositories/audit.repository.ts#L16)
