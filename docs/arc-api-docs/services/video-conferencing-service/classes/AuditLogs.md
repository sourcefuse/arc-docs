[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / AuditLogs

# Class: AuditLogs

Audit Logs Model

**`Deprecated`**

Use the [AuditLog](AuditLog.md) instead.
eg.
```ts
class AuditLogRepository extends DefaultCrudRepository<
AuditLog,
typeof AuditLog.prototype.id
>
{
   // ...
}
```

## Hierarchy

- `Entity`

  ↳ **`AuditLogs`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](AuditLogs.md#constructor)

### Properties

- [actedAt](AuditLogs.md#actedat)
- [actedEntity](AuditLogs.md#actedentity)
- [action](AuditLogs.md#action)
- [actionType](AuditLogs.md#actiontype)
- [actor](AuditLogs.md#actor)
- [after](AuditLogs.md#after)
- [before](AuditLogs.md#before)
- [extId](AuditLogs.md#extid)
- [extMetadata](AuditLogs.md#extmetadata)
- [id](AuditLogs.md#id)
- [reference](AuditLogs.md#reference)

## Constructors

### constructor

• **new AuditLogs**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`AuditLogs`](AuditLogs.md)\> |

#### Overrides

Entity.constructor

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/models/audit-logs.model.ts#L94)

## Properties

### actedAt

• `Optional` **actedAt**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/models/audit-logs.model.ts#L59)

___

### actedEntity

• **actedEntity**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/models/audit-logs.model.ts#L65)

___

### action

• **action**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/models/audit-logs.model.ts#L41)

___

### actionType

• **actionType**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/models/audit-logs.model.ts#L48)

___

### actor

• `Optional` **actor**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/models/audit-logs.model.ts#L53)

___

### after

• `Optional` **after**: `object`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/models/audit-logs.model.ts#L75)

___

### before

• `Optional` **before**: `object`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/models/audit-logs.model.ts#L70)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:86](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/models/audit-logs.model.ts#L86)

___

### extMetadata

• `Optional` **extMetadata**: `object`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:92](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/models/audit-logs.model.ts#L92)

___

### id

• `Optional` **id**: `number`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/models/audit-logs.model.ts#L35)

___

### reference

• `Optional` **reference**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:80](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/models/audit-logs.model.ts#L80)
