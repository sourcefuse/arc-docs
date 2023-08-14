[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / Job

# Class: Job

## Hierarchy

- `CoreEntity`<[`Job`](Job.md)\>

  ↳ **`Job`**

## Table of contents

### Constructors

- [constructor](Job.md#constructor)

### Properties

- [filterUsed](Job.md#filterused)
- [id](Job.md#id)
- [operation](Job.md#operation)
- [result](Job.md#result)
- [status](Job.md#status)

## Constructors

### constructor

• **new Job**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Job`](Job.md)\> |

#### Inherited from

CoreEntity<Job\>.constructor

#### Defined in

packages/core/dist/models/core-entity.d.ts:3

## Properties

### filterUsed

• **filterUsed**: `Object`

#### Defined in

[services/audit-service/src/models/job.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/audit-service/src/models/job.model.ts#L34)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/audit-service/src/models/job.model.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/audit-service/src/models/job.model.ts#L17)

___

### operation

• **operation**: `OperationKey`

#### Defined in

[services/audit-service/src/models/job.model.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/audit-service/src/models/job.model.ts#L28)

___

### result

• **result**: `string`

#### Defined in

[services/audit-service/src/models/job.model.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/audit-service/src/models/job.model.ts#L39)

___

### status

• **status**: `string`

#### Defined in

[services/audit-service/src/models/job.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/audit-service/src/models/job.model.ts#L23)
