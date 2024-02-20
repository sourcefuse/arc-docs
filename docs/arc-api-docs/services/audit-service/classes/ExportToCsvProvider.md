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
| `auditLogRepository` | `EntityCrudRepository`<`AuditLog`, `string`, {}\> |

#### Defined in

[services/audit-service/src/services/export-to-csv.service.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/export-to-csv.service.ts#L11)

## Properties

### auditLogRepository

• **auditLogRepository**: `EntityCrudRepository`<`AuditLog`, `string`, {}\>

#### Defined in

[services/audit-service/src/services/export-to-csv.service.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/export-to-csv.service.ts#L15)

___

### config

• `Private` `Readonly` **config**: [`AwsS3Config`](../interfaces/AwsS3Config.md)

#### Defined in

[services/audit-service/src/services/export-to-csv.service.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/export-to-csv.service.ts#L13)

## Methods

### exportToCsv

▸ **exportToCsv**(`selectedAuditLogs`): `Promise`<`string`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `selectedAuditLogs` | `AuditLog`[] |

#### Returns

`Promise`<`string`\>

#### Defined in

[services/audit-service/src/services/export-to-csv.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/export-to-csv.service.ts#L22)

___

### value

▸ **value**(): [`ExportToCsvFn`](../modules.md#exporttocsvfn)

#### Returns

[`ExportToCsvFn`](../modules.md#exporttocsvfn)

#### Implementation of

Provider.value

#### Defined in

[services/audit-service/src/services/export-to-csv.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/export-to-csv.service.ts#L17)
