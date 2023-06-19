[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / ExportToCsvProvider

# Class: ExportToCsvProvider

## Implements

- `Provider`<[`ExportToCsvFn`](../modules.md#exporttocsvfn)\>

## Table of contents

### Constructors

- [constructor](ExportToCsvProvider.md#constructor)

### Properties

- [auditLogRepository](ExportToCsvProvider.md#auditlogrepository)

### Methods

- [exportToCsv](ExportToCsvProvider.md#exporttocsv)
- [value](ExportToCsvProvider.md#value)

## Constructors

### constructor

• **new ExportToCsvProvider**(`auditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `auditLogRepository` | `AuditLogRepository` |

#### Defined in

[services/audit-service/src/services/export-to-csv.service.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/audit-service/src/services/export-to-csv.service.ts#L10)

## Properties

### auditLogRepository

• **auditLogRepository**: `AuditLogRepository`

#### Defined in

[services/audit-service/src/services/export-to-csv.service.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/audit-service/src/services/export-to-csv.service.ts#L12)

## Methods

### exportToCsv

▸ **exportToCsv**(`selectedAuditLogs`): `Promise`<`SendData`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `selectedAuditLogs` | `AuditLog`[] |

#### Returns

`Promise`<`SendData`\>

#### Defined in

[services/audit-service/src/services/export-to-csv.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/audit-service/src/services/export-to-csv.service.ts#L19)

___

### value

▸ **value**(): [`ExportToCsvFn`](../modules.md#exporttocsvfn)

#### Returns

[`ExportToCsvFn`](../modules.md#exporttocsvfn)

#### Implementation of

Provider.value

#### Defined in

[services/audit-service/src/services/export-to-csv.service.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/audit-service/src/services/export-to-csv.service.ts#L14)
