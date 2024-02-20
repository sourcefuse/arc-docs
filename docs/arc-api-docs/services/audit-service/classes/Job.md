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
- [tenantId](Job.md#tenantid)

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

[services/audit-service/src/models/job.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/models/job.model.ts#L41)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/audit-service/src/models/job.model.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/models/job.model.ts#L17)

___

### operation

• **operation**: `OperationKey`

#### Defined in

[services/audit-service/src/models/job.model.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/models/job.model.ts#L28)

___

### result

• **result**: `string`

#### Defined in

[services/audit-service/src/models/job.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/models/job.model.ts#L46)

___

### status

• **status**: `string`

#### Defined in

[services/audit-service/src/models/job.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/models/job.model.ts#L23)

___

### tenantId

• **tenantId**: `string`

#### Defined in

[services/audit-service/src/models/job.model.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/models/job.model.ts#L35)
