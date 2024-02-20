[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / AuditLogExportProvider

# Class: AuditLogExportProvider

## Implements

- `Provider`<[`AuditLogExportFn`](../modules.md#auditlogexportfn)\>

## Table of contents

### Constructors

- [constructor](AuditLogExportProvider.md#constructor)

### Properties

- [exportHandler](AuditLogExportProvider.md#exporthandler)

### Methods

- [auditLogExport](AuditLogExportProvider.md#auditlogexport)
- [value](AuditLogExportProvider.md#value)

## Constructors

### constructor

• **new AuditLogExportProvider**(`exportHandler`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `exportHandler` | [`ExportHandlerFn`](../modules.md#exporthandlerfn) |

#### Defined in

[services/audit-service/src/services/audit-log-export.service.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/audit-log-export.service.ts#L9)

## Properties

### exportHandler

• **exportHandler**: [`ExportHandlerFn`](../modules.md#exporthandlerfn)

#### Defined in

[services/audit-service/src/services/audit-log-export.service.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/audit-log-export.service.ts#L11)

## Methods

### auditLogExport

▸ **auditLogExport**(`data`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `AnyObject`[] |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/audit-service/src/services/audit-log-export.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/audit-log-export.service.ts#L18)

___

### value

▸ **value**(): [`AuditLogExportFn`](../modules.md#auditlogexportfn)

#### Returns

[`AuditLogExportFn`](../modules.md#auditlogexportfn)

#### Implementation of

Provider.value

#### Defined in

[services/audit-service/src/services/audit-log-export.service.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/services/audit-log-export.service.ts#L14)
