[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / JobProcessingService

# Class: JobProcessingService

## Table of contents

### Constructors

- [constructor](JobProcessingService.md#constructor)

### Properties

- [auditLogRepository](JobProcessingService.md#auditlogrepository)
- [jobRepository](JobProcessingService.md#jobrepository)
- [mappingLogRepository](JobProcessingService.md#mappinglogrepository)
- [querySelectedFiles](JobProcessingService.md#queryselectedfiles)

### Methods

- [start](JobProcessingService.md#start)

## Constructors

### constructor

• **new JobProcessingService**(`querySelectedFiles`, `mappingLogRepository`, `jobRepository`, `auditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `querySelectedFiles` | [`QuerySelectedFilesFn`](../modules.md#queryselectedfilesfn) |
| `mappingLogRepository` | [`MappingLogRepository`](MappingLogRepository.md) |
| `jobRepository` | [`JobRepository`](JobRepository.md) |
| `auditLogRepository` | `AuditLogRepository` |

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/services/job-processing.service.ts#L13)

## Properties

### auditLogRepository

• **auditLogRepository**: `AuditLogRepository`

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/services/job-processing.service.ts#L21)

___

### jobRepository

• **jobRepository**: [`JobRepository`](JobRepository.md)

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/services/job-processing.service.ts#L19)

___

### mappingLogRepository

• **mappingLogRepository**: [`MappingLogRepository`](MappingLogRepository.md)

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/services/job-processing.service.ts#L17)

___

### querySelectedFiles

• **querySelectedFiles**: [`QuerySelectedFilesFn`](../modules.md#queryselectedfilesfn)

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/services/job-processing.service.ts#L15)

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

[services/audit-service/src/services/job-processing.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/services/job-processing.service.ts#L24)
