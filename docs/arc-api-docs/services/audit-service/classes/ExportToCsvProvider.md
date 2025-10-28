[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / ExportToCsvProvider

# Class: ExportToCsvProvider

## Implements

- `Provider`<[`ExportToCsvFn`](../modules.md#exporttocsvfn)\>

## Table of contents

### Constructors

- [constructor](ExportToCsvProvider.md#constructor)

### Properties

- [auditLogRepository](ExportToCsvProvider.md#auditlogrepository)
- [config](ExportToCsvProvider.md#config)

### Methods

- [exportToCsv](ExportToCsvProvider.md#exporttocsv)
- [value](ExportToCsvProvider.md#value)

## Constructors

### constructor

• **new ExportToCsvProvider**(`config`, `auditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `config` | [`AwsS3Config`](../interfaces/AwsS3Config.md) |
| `auditLogRepository` | `EntityCrudRepository`<[`AuditLog`](AuditLog.md), `string`, {}\> |

#### Defined in

[services/audit-service/src/services/export-to-csv.service.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/export-to-csv.service.ts#L12)

## Properties

### auditLogRepository

• **auditLogRepository**: `EntityCrudRepository`<[`AuditLog`](AuditLog.md), `string`, {}\>

#### Defined in

[services/audit-service/src/services/export-to-csv.service.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/export-to-csv.service.ts#L16)

___

### config

• `Private` `Readonly` **config**: [`AwsS3Config`](../interfaces/AwsS3Config.md)

#### Defined in

[services/audit-service/src/services/export-to-csv.service.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/export-to-csv.service.ts#L14)

## Methods

### exportToCsv

▸ **exportToCsv**(`selectedAuditLogs`): `Promise`<`string`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `selectedAuditLogs` | [`AuditLog`](AuditLog.md)[] |

#### Returns

`Promise`<`string`\>

#### Defined in

[services/audit-service/src/services/export-to-csv.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/export-to-csv.service.ts#L23)

___

### value

▸ **value**(): [`ExportToCsvFn`](../modules.md#exporttocsvfn)

#### Returns

[`ExportToCsvFn`](../modules.md#exporttocsvfn)

#### Implementation of

Provider.value

#### Defined in

[services/audit-service/src/services/export-to-csv.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/export-to-csv.service.ts#L18)
