[@sourceloop/audit-service](README.md) / Exports

# @sourceloop/audit-service

## Table of contents

### Namespaces

- [AWSS3Bindings](modules/AWSS3Bindings.md)
- [AuditLogExportServiceBindings](modules/AuditLogExportServiceBindings.md)
- [AuditServiceBindings](modules/AuditServiceBindings.md)
- [ColumnBuilderServiceBindings](modules/ColumnBuilderServiceBindings.md)
- [ExportHandlerServiceBindings](modules/ExportHandlerServiceBindings.md)
- [ExportToCsvServiceBindings](modules/ExportToCsvServiceBindings.md)
- [QuerySelectedFilesServiceBindings](modules/QuerySelectedFilesServiceBindings.md)

### Enumerations

- [FileStatusKey](enums/FileStatusKey.md)
- [PermissionKey](enums/PermissionKey.md)

### Classes

- [AuditLog](classes/AuditLog.md)
- [AuditLogExportProvider](classes/AuditLogExportProvider.md)
- [AuditLogRepository](classes/AuditLogRepository.md)
- [AuditServiceComponent](classes/AuditServiceComponent.md)
- [ColumnBuilderProvider](classes/ColumnBuilderProvider.md)
- [CustomFilter](classes/CustomFilter.md)
- [ExportHandlerProvider](classes/ExportHandlerProvider.md)
- [ExportToCsvProvider](classes/ExportToCsvProvider.md)
- [Job](classes/Job.md)
- [JobProcessingService](classes/JobProcessingService.md)
- [JobRepository](classes/JobRepository.md)
- [MappingLog](classes/MappingLog.md)
- [MappingLogRepository](classes/MappingLogRepository.md)
- [QuerySelectedFilesProvider](classes/QuerySelectedFilesProvider.md)

### Interfaces

- [ArchiveOutput](interfaces/ArchiveOutput.md)
- [AwsS3Config](interfaces/AwsS3Config.md)
- [ExportResponse](interfaces/ExportResponse.md)
- [IAuditServiceConfig](interfaces/IAuditServiceConfig.md)

### Type Aliases

- [AuditLogExportFn](modules.md#auditlogexportfn)
- [ColumnBuilderFn](modules.md#columnbuilderfn)
- [CustomFilterWithRelations](modules.md#customfilterwithrelations)
- [ExportHandlerFn](modules.md#exporthandlerfn)
- [ExportToCsvFn](modules.md#exporttocsvfn)
- [JobWithRelations](modules.md#jobwithrelations)
- [MappingLogsWithRelations](modules.md#mappinglogswithrelations)
- [QuerySelectedFilesFn](modules.md#queryselectedfilesfn)

### Variables

- [AuditSourceName](modules.md#auditsourcename)

## Type Aliases

### AuditLogExportFn

Ƭ **AuditLogExportFn**: (`data`: `AnyObject`[]) => `Promise`<`void`\>

#### Type declaration

▸ (`data`): `Promise`<`void`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `AnyObject`[] |

##### Returns

`Promise`<`void`\>

#### Defined in

[services/audit-service/src/types.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/types.ts#L23)

___

### ColumnBuilderFn

Ƭ **ColumnBuilderFn**: (`auditLogs`: [`AuditLog`](classes/AuditLog.md)[]) => `Promise`<`AnyObject`[]\>

#### Type declaration

▸ (`auditLogs`): `Promise`<`AnyObject`[]\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `auditLogs` | [`AuditLog`](classes/AuditLog.md)[] |

##### Returns

`Promise`<`AnyObject`[]\>

#### Defined in

[services/audit-service/src/types.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/types.ts#L24)

___

### CustomFilterWithRelations

Ƭ **CustomFilterWithRelations**: [`CustomFilter`](classes/CustomFilter.md)

#### Defined in

[services/audit-service/src/models/custom-filter.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/models/custom-filter.model.ts#L44)

___

### ExportHandlerFn

Ƭ **ExportHandlerFn**: (`fileBuffer`: `Buffer`) => `Promise`<`void`\>

#### Type declaration

▸ (`fileBuffer`): `Promise`<`void`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `fileBuffer` | `Buffer` |

##### Returns

`Promise`<`void`\>

#### Defined in

[services/audit-service/src/types.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/types.ts#L22)

___

### ExportToCsvFn

Ƭ **ExportToCsvFn**: (`selectedAuditLogs`: [`AuditLog`](classes/AuditLog.md)[]) => `Promise`<`string`\>

#### Type declaration

▸ (`selectedAuditLogs`): `Promise`<`string`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `selectedAuditLogs` | [`AuditLog`](classes/AuditLog.md)[] |

##### Returns

`Promise`<`string`\>

#### Defined in

[services/audit-service/src/types.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/types.ts#L20)

___

### JobWithRelations

Ƭ **JobWithRelations**: [`Job`](classes/Job.md)

#### Defined in

[services/audit-service/src/models/job.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/models/job.model.ts#L49)

___

### MappingLogsWithRelations

Ƭ **MappingLogsWithRelations**: [`MappingLog`](classes/MappingLog.md)

#### Defined in

[services/audit-service/src/models/mapping-log.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/models/mapping-log.model.ts#L36)

___

### QuerySelectedFilesFn

Ƭ **QuerySelectedFilesFn**: (`fileName`: `string`, `filter`: `Filter`<[`AuditLog`](classes/AuditLog.md)\>) => `Promise`<[`AuditLog`](classes/AuditLog.md)[]\>

#### Type declaration

▸ (`fileName`, `filter`): `Promise`<[`AuditLog`](classes/AuditLog.md)[]\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `fileName` | `string` |
| `filter` | `Filter`<[`AuditLog`](classes/AuditLog.md)\> |

##### Returns

`Promise`<[`AuditLog`](classes/AuditLog.md)[]\>

#### Defined in

[services/audit-service/src/types.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/types.ts#L15)

## Variables

### AuditSourceName

• `Const` **AuditSourceName**: ``"AuditDB"``

#### Defined in

[services/audit-service/src/types.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/types.ts#L36)
