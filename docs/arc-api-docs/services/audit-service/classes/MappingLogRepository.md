[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / MappingLogRepository

# Class: MappingLogRepository

## Hierarchy

- `DefaultCrudRepository`<`MappingLog`, typeof [`id`](MappingLog.md#id)\>

  ↳ **`MappingLogRepository`**

## Table of contents

### Constructors

- [constructor](MappingLogRepository.md#constructor)

### Properties

- [mappingLog](MappingLogRepository.md#mappinglog)

## Constructors

### constructor

• **new MappingLogRepository**(`dataSource`, `mappingLog`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `mappingLog` | typeof `Entity` & { `prototype`: `MappingLog`  } |

#### Overrides

DefaultCrudRepository&lt;
  MappingLog,
  typeof MappingLog.prototype.id
\&gt;.constructor

#### Defined in

[services/audit-service/src/repositories/mapping-log.repository.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/repositories/mapping-log.repository.ts#L13)

## Properties

### mappingLog

• `Private` `Readonly` **mappingLog**: typeof `Entity` & { `prototype`: `MappingLog`  }

#### Defined in

[services/audit-service/src/repositories/mapping-log.repository.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/repositories/mapping-log.repository.ts#L16)
