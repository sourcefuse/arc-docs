[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / AuditLogRepository

# Class: AuditLogRepository

## Hierarchy

- `DefaultCrudRepository`<`AuditLog`, typeof [`id`](AuditLog.md#id)\>

  ↳ **`AuditLogRepository`**

## Table of contents

### Constructors

- [constructor](AuditLogRepository.md#constructor)

### Properties

- [auditLog](AuditLogRepository.md#auditlog)

## Constructors

### constructor

• **new AuditLogRepository**(`dataSource`, `auditLog`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `auditLog` | typeof `Entity` & { `prototype`: `AuditLog`  } |

#### Overrides

DefaultCrudRepository&lt;
  AuditLog,
  typeof AuditLog.prototype.id
\&gt;.constructor

#### Defined in

[services/audit-service/src/repositories/audit-log.repository.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/repositories/audit-log.repository.ts#L18)

## Properties

### auditLog

• `Private` `Readonly` **auditLog**: typeof `Entity` & { `prototype`: `AuditLog`  }

#### Defined in

[services/audit-service/src/repositories/audit-log.repository.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/repositories/audit-log.repository.ts#L21)
