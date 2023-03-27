[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / AuditLog

# Class: AuditLog

## Hierarchy

- `Entity`

  ↳ **`AuditLog`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](AuditLog.md#constructor)

### Properties

- [actionBy](AuditLog.md#actionby)
- [after](AuditLog.md#after)
- [before](AuditLog.md#before)
- [entityId](AuditLog.md#entityid)
- [extId](AuditLog.md#extid)
- [extMetadata](AuditLog.md#extmetadata)
- [id](AuditLog.md#id)
- [logType](AuditLog.md#logtype)
- [operationName](AuditLog.md#operationname)
- [operationTime](AuditLog.md#operationtime)
- [tableName](AuditLog.md#tablename)

## Constructors

### constructor

• **new AuditLog**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`AuditLog`](AuditLog.md)\> |

#### Overrides

Entity.constructor

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:95](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/models/audit-log.model.ts#L95)

## Properties

### actionBy

• `Optional` **actionBy**: `string`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/models/audit-log.model.ts#L27)

___

### after

• `Optional` **after**: `object`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/models/audit-log.model.ts#L32)

___

### before

• `Optional` **before**: `object`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/models/audit-log.model.ts#L37)

___

### entityId

• `Optional` **entityId**: `string`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/models/audit-log.model.ts#L43)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/models/audit-log.model.ts#L87)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/models/audit-log.model.ts#L93)

___

### id

• **id**: `string`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/models/audit-log.model.ts#L21)

___

### logType

• `Optional` **logType**: `string`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/models/audit-log.model.ts#L53)

___

### operationName

• **operationName**: `string`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/models/audit-log.model.ts#L63)

___

### operationTime

• **operationTime**: `string`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/models/audit-log.model.ts#L71)

___

### tableName

• **tableName**: `string`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/models/audit-log.model.ts#L81)
