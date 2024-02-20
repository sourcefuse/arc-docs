[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / JobProcessingService

# Class: JobProcessingService

## Table of contents

### Constructors

- [constructor](JobProcessingService.md#constructor)

### Properties

- [auditLogExport](JobProcessingService.md#auditlogexport)
- [auditLogRepository](JobProcessingService.md#auditlogrepository)
- [columnBuilder](JobProcessingService.md#columnbuilder)
- [jobRepository](JobProcessingService.md#jobrepository)
- [mappingLogRepository](JobProcessingService.md#mappinglogrepository)
- [querySelectedFiles](JobProcessingService.md#queryselectedfiles)

### Methods

- [start](JobProcessingService.md#start)

## Constructors

### constructor

• **new JobProcessingService**(`querySelectedFiles`, `auditLogExport`, `columnBuilder`, `mappingLogRepository`, `jobRepository`, `auditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `querySelectedFiles` | [`QuerySelectedFilesFn`](../modules.md#queryselectedfilesfn) |
| `auditLogExport` | [`AuditLogExportFn`](../modules.md#auditlogexportfn) |
| `columnBuilder` | [`ColumnBuilderFn`](../modules.md#columnbuilderfn) |
| `mappingLogRepository` | `EntityCrudRepository`<[`MappingLog`](MappingLog.md), `string`, {}\> |
| `jobRepository` | `EntityCrudRepository`<[`Job`](Job.md), `string`, {}\> |
| `auditLogRepository` | `EntityCrudRepository`<`AuditLog`, `string`, {}\> |

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/job-processing.service.ts#L22)

## Properties

### auditLogExport

• **auditLogExport**: [`AuditLogExportFn`](../modules.md#auditlogexportfn)

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/job-processing.service.ts#L26)

___

### auditLogRepository

• **auditLogRepository**: `EntityCrudRepository`<`AuditLog`, `string`, {}\>

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/job-processing.service.ts#L34)

___

### columnBuilder

• **columnBuilder**: [`ColumnBuilderFn`](../modules.md#columnbuilderfn)

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/job-processing.service.ts#L28)

___

### jobRepository

• **jobRepository**: `EntityCrudRepository`<[`Job`](Job.md), `string`, {}\>

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/job-processing.service.ts#L32)

___

### mappingLogRepository

• **mappingLogRepository**: `EntityCrudRepository`<[`MappingLog`](MappingLog.md), `string`, {}\>

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/job-processing.service.ts#L30)

___

### querySelectedFiles

• **querySelectedFiles**: [`QuerySelectedFilesFn`](../modules.md#queryselectedfilesfn)

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/job-processing.service.ts#L24)

## Methods

### start

▸ **start**(`jobId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `jobId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/job-processing.service.ts#L37)
