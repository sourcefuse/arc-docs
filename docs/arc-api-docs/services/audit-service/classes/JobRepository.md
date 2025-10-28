[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / JobRepository

# Class: JobRepository

## Hierarchy

- `DefaultCrudRepository`<`Job`, typeof [`id`](Job.md#id)\>

  ↳ **`JobRepository`**

## Table of contents

### Constructors

- [constructor](JobRepository.md#constructor)

### Properties

- [job](JobRepository.md#job)

## Constructors

### constructor

• **new JobRepository**(`dataSource`, `job`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `job` | typeof `Entity` & { `prototype`: `Job`  } |

#### Overrides

DefaultCrudRepository&lt;
  Job,
  typeof Job.prototype.id
\&gt;.constructor

#### Defined in

[services/audit-service/src/repositories/job.repository.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/repositories/job.repository.ts#L13)

## Properties

### job

• `Private` `Readonly` **job**: typeof `Entity` & { `prototype`: `Job`  }

#### Defined in

[services/audit-service/src/repositories/job.repository.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/audit-service/src/repositories/job.repository.ts#L16)
