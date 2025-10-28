[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / JobProcessingService

# Class: JobProcessingService

## Table of contents

### Constructors

- [constructor](JobProcessingService.md#constructor)

### Properties

- [auditLogExportService](JobProcessingService.md#auditlogexportservice)
- [auditLogRepository](JobProcessingService.md#auditlogrepository)
- [columnBuilder](JobProcessingService.md#columnbuilder)
- [jobRepository](JobProcessingService.md#jobrepository)
- [mappingLogRepository](JobProcessingService.md#mappinglogrepository)
- [querySelectedFiles](JobProcessingService.md#queryselectedfiles)

### Methods

- [buildCustomFilter](JobProcessingService.md#buildcustomfilter)
- [getFilter](JobProcessingService.md#getfilter)
- [haveCommonElements](JobProcessingService.md#havecommonelements)
- [start](JobProcessingService.md#start)

## Constructors

### constructor

• **new JobProcessingService**(`querySelectedFiles`, `auditLogExportService`, `columnBuilder`, `mappingLogRepository`, `jobRepository`, `auditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `querySelectedFiles` | [`QuerySelectedFilesFn`](../modules.md#queryselectedfilesfn) |
| `auditLogExportService` | [`AuditLogExportFn`](../modules.md#auditlogexportfn) |
| `columnBuilder` | [`ColumnBuilderFn`](../modules.md#columnbuilderfn) |
| `mappingLogRepository` | `EntityCrudRepository`<`MappingLog`, `string`, {}\> |
| `jobRepository` | `EntityCrudRepository`<`Job`, `string`, {}\> |
| `auditLogRepository` | `EntityCrudRepository`<`AuditLog`, `string`, {}\> |

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/job-processing.service.ts#L40)

## Properties

### auditLogExportService

• **auditLogExportService**: [`AuditLogExportFn`](../modules.md#auditlogexportfn)

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/job-processing.service.ts#L44)

___

### auditLogRepository

• **auditLogRepository**: `EntityCrudRepository`<`AuditLog`, `string`, {}\>

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/job-processing.service.ts#L52)

___

### columnBuilder

• **columnBuilder**: [`ColumnBuilderFn`](../modules.md#columnbuilderfn)

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/job-processing.service.ts#L46)

___

### jobRepository

• **jobRepository**: `EntityCrudRepository`<`Job`, `string`, {}\>

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/job-processing.service.ts#L50)

___

### mappingLogRepository

• **mappingLogRepository**: `EntityCrudRepository`<`MappingLog`, `string`, {}\>

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/job-processing.service.ts#L48)

___

### querySelectedFiles

• **querySelectedFiles**: [`QuerySelectedFilesFn`](../modules.md#queryselectedfilesfn)

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/job-processing.service.ts#L42)

## Methods

### buildCustomFilter

▸ **buildCustomFilter**(`andArray`, `customFilter`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `andArray` | `AnyObject`[] |
| `customFilter` | [`CustomFilter`](CustomFilter.md) |

#### Returns

`void`

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:110](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/job-processing.service.ts#L110)

___

### getFilter

▸ **getFilter**(`inquiredFilter`): `string`[]

#### Parameters

| Name | Type |
| :------ | :------ |
| `inquiredFilter` | `string` \| `AnyObject` |

#### Returns

`string`[]

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:100](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/job-processing.service.ts#L100)

___

### haveCommonElements

▸ **haveCommonElements**(`arr1`, `arr2`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `arr1` | `string`[] |
| `arr2` | `string`[] |

#### Returns

`boolean`

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:106](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/job-processing.service.ts#L106)

___

### start

▸ **start**(`jobId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `jobId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/audit-service/src/services/job-processing.service.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/job-processing.service.ts#L55)
