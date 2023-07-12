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

#### Defined in

[services/audit-service/src/services/column-builder.service.ts:8](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/services/column-builder.service.ts#L8)

## Methods

### columnBuilder

▸ **columnBuilder**(`auditLogs`): `Promise`<`AnyObject`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `auditLogs` | `AuditLog`[] |

#### Returns

`Promise`<`AnyObject`[]\>

#### Defined in

[services/audit-service/src/services/column-builder.service.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/services/column-builder.service.ts#L15)

___

### value

▸ **value**(): [`ColumnBuilderFn`](../modules.md#columnbuilderfn)

#### Returns

[`ColumnBuilderFn`](../modules.md#columnbuilderfn)

#### Implementation of

Provider.value

#### Defined in

[services/audit-service/src/services/column-builder.service.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/services/column-builder.service.ts#L12)
