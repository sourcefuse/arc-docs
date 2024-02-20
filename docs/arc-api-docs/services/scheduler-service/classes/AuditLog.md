[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / AuditLog

# Class: AuditLog

Audit Logs Model

**`Deprecated`**

Use the [ConditionalAuditLog](ConditionalAuditLog.md) instead.
eg.
```ts
class AuditLogRepository extends DefaultCrudRepository<
ConditionalAuditLog,
typeof ConditionalAuditLog.prototype.id
>
{
   // ...
}
```

## Hierarchy

- `CoreEntity`<[`AuditLog`](AuditLog.md)\>

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

#### Inherited from

CoreEntity<AuditLog\>.constructor

#### Defined in

packages/core/dist/models/core-entity.d.ts:3

## Properties

### actionBy

• `Optional` **actionBy**: `string`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit-log.model.ts#L42)

___

### after

• `Optional` **after**: `object`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit-log.model.ts#L47)

___

### before

• `Optional` **before**: `object`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit-log.model.ts#L52)

___

### entityId

• `Optional` **entityId**: `string`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit-log.model.ts#L58)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:102](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit-log.model.ts#L102)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit-log.model.ts#L108)

___

### id

• **id**: `string`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit-log.model.ts#L36)

___

### logType

• `Optional` **logType**: `string`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit-log.model.ts#L68)

___

### operationName

• **operationName**: `string`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit-log.model.ts#L78)

___

### operationTime

• **operationTime**: `string`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:86](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit-log.model.ts#L86)

___

### tableName

• **tableName**: `string`

#### Defined in

[services/scheduler-service/src/models/audit-log.model.ts:96](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit-log.model.ts#L96)
