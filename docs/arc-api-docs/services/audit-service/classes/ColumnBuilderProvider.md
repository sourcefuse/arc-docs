[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / ColumnBuilderProvider

# Class: ColumnBuilderProvider

## Implements

- `Provider`<[`ColumnBuilderFn`](../modules.md#columnbuilderfn)\>

## Table of contents

### Constructors

- [constructor](ColumnBuilderProvider.md#constructor)

### Methods

- [columnBuilder](ColumnBuilderProvider.md#columnbuilder)
- [value](ColumnBuilderProvider.md#value)

## Constructors

### constructor

• **new ColumnBuilderProvider**()

## Methods

### columnBuilder

▸ **columnBuilder**(`auditLogs`): `Promise`<`AnyObject`[]\>

The columnBuilder function in TypeScript returns an array of AuditLog objects asynchronously.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `auditLogs` | [`AuditLog`](AuditLog.md)[] | An array of AuditLog objects. |

#### Returns

`Promise`<`AnyObject`[]\>

The `columnBuilder` function is returning a Promise that resolves to an array of
`AuditLog` objects.

#### Defined in

[services/audit-service/src/services/column-builder.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/column-builder.service.ts#L18)

___

### value

▸ **value**(): [`ColumnBuilderFn`](../modules.md#columnbuilderfn)

#### Returns

[`ColumnBuilderFn`](../modules.md#columnbuilderfn)

#### Implementation of

Provider.value

#### Defined in

[services/audit-service/src/services/column-builder.service.ts:8](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/services/column-builder.service.ts#L8)
