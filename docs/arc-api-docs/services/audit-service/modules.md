[@sourceloop/audit-service](README.md) / Exports

# @sourceloop/audit-service

## Table of contents

### Namespaces

- [AuditServiceBindings](modules/AuditServiceBindings.md)
- [ExportToCsvServiceBindings](modules/ExportToCsvServiceBindings.md)
- [QuerySelectedFilesServiceBindings](modules/QuerySelectedFilesServiceBindings.md)

### Enumerations

- [FileStatusKey](enums/FileStatusKey.md)
- [PermissionKey](enums/PermissionKey.md)

### Classes

- [AuditLog](classes/AuditLog.md)
- [AuditLogRepository](classes/AuditLogRepository.md)
- [AuditServiceComponent](classes/AuditServiceComponent.md)
- [CustomFilter](classes/CustomFilter.md)
- [ExportToCsvProvider](classes/ExportToCsvProvider.md)
- [Job](classes/Job.md)
- [JobProcessingService](classes/JobProcessingService.md)
- [JobRepository](classes/JobRepository.md)
- [MappingLog](classes/MappingLog.md)
- [MappingLogRepository](classes/MappingLogRepository.md)
- [QuerySelectedFilesProvider](classes/QuerySelectedFilesProvider.md)

### Interfaces

- [ArchiveOutput](interfaces/ArchiveOutput.md)
- [IAuditServiceConfig](interfaces/IAuditServiceConfig.md)
- [IColumnHandler](interfaces/IColumnHandler.md)

### Type Aliases

- [CustomFilterWithRelations](modules.md#customfilterwithrelations)
- [ExportToCsvFn](modules.md#exporttocsvfn)
- [JobWithRelations](modules.md#jobwithrelations)
- [MappingLogsWithRelations](modules.md#mappinglogswithrelations)
- [QuerySelectedFilesFn](modules.md#queryselectedfilesfn)

### Variables

- [AuditSourceName](modules.md#auditsourcename)

## Type Aliases

### CustomFilterWithRelations

Ƭ **CustomFilterWithRelations**: [`CustomFilter`](classes/CustomFilter.md)

#### Defined in

[services/audit-service/src/models/custom-filter.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/audit-service/src/models/custom-filter.model.ts#L45)

___

### ExportToCsvFn

Ƭ **ExportToCsvFn**: (`selectedAuditLogs`: [`AuditLog`](classes/AuditLog.md)[]) => `Promise`<`AWS.S3.ManagedUpload.SendData`\>

#### Type declaration

▸ (`selectedAuditLogs`): `Promise`<`AWS.S3.ManagedUpload.SendData`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `selectedAuditLogs` | [`AuditLog`](classes/AuditLog.md)[] |

##### Returns

`Promise`<`AWS.S3.ManagedUpload.SendData`\>

#### Defined in

[services/audit-service/src/types.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/audit-service/src/types.ts#L20)

___

### JobWithRelations

Ƭ **JobWithRelations**: [`Job`](classes/Job.md)

#### Defined in

[services/audit-service/src/models/job.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/audit-service/src/models/job.model.ts#L38)

___

### MappingLogsWithRelations

Ƭ **MappingLogsWithRelations**: [`MappingLog`](classes/MappingLog.md)

#### Defined in

[services/audit-service/src/models/mapping-log.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/audit-service/src/models/mapping-log.model.ts#L32)

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

[services/audit-service/src/types.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/audit-service/src/types.ts#L15)

## Variables

### AuditSourceName

• `Const` **AuditSourceName**: ``"AuditDB"``

#### Defined in

[services/audit-service/src/types.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/services/audit-service/src/types.ts#L31)
