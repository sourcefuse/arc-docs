[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / AuditLogs

# Class: AuditLogs

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

[services/video-conferencing-service/src/models/audit-logs.model.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/models/audit-logs.model.ts#L79)

## Properties

### actedAt

• `Optional` **actedAt**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/models/audit-logs.model.ts#L44)

___

### actedEntity

• **actedEntity**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/models/audit-logs.model.ts#L50)

___

### action

• **action**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/models/audit-logs.model.ts#L26)

___

### actionType

• **actionType**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/models/audit-logs.model.ts#L33)

___

### actor

• `Optional` **actor**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/models/audit-logs.model.ts#L38)

___

### after

• `Optional` **after**: `object`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/models/audit-logs.model.ts#L60)

___

### before

• `Optional` **before**: `object`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/models/audit-logs.model.ts#L55)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/models/audit-logs.model.ts#L71)

___

### extMetadata

• `Optional` **extMetadata**: `object`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/models/audit-logs.model.ts#L77)

___

### id

• `Optional` **id**: `number`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/models/audit-logs.model.ts#L20)

___

### reference

• `Optional` **reference**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit-logs.model.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/models/audit-logs.model.ts#L65)
