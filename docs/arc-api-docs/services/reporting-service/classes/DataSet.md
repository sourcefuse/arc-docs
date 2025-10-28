[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / DataSet

# Class: DataSet

## Hierarchy

- `UserModifiableEntity`

  ↳ **`DataSet`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](DataSet.md#constructor)

### Properties

- [createdBy](DataSet.md#createdby)
- [createdOn](DataSet.md#createdon)
- [dataSetQuery](DataSet.md#datasetquery)
- [dataSetQueryHash](DataSet.md#datasetqueryhash)
- [dataSetQuerySQL](DataSet.md#datasetquerysql)
- [extId](DataSet.md#extid)
- [extMetadata](DataSet.md#extmetadata)
- [id](DataSet.md#id)
- [modifiedBy](DataSet.md#modifiedby)
- [modifiedOn](DataSet.md#modifiedon)
- [name](DataSet.md#name)

## Constructors

### constructor

• **new DataSet**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<`DataObject`<`Model`\>\> |

#### Inherited from

UserModifiableEntity.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### dataSetQuery

• `Optional` **dataSetQuery**: [`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md)

#### Defined in

[services/reporting-service/src/models/data-set.model.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/models/data-set.model.ts#L35)

___

### dataSetQueryHash

• `Optional` **dataSetQueryHash**: `string`

#### Defined in

[services/reporting-service/src/models/data-set.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/models/data-set.model.ts#L48)

___

### dataSetQuerySQL

• `Optional` **dataSetQuerySQL**: `string`

#### Defined in

[services/reporting-service/src/models/data-set.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/models/data-set.model.ts#L41)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/reporting-service/src/models/data-set.model.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/models/data-set.model.ts#L54)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/reporting-service/src/models/data-set.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/models/data-set.model.ts#L61)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/reporting-service/src/models/data-set.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/models/data-set.model.ts#L21)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### name

• **name**: `string`

#### Defined in

[services/reporting-service/src/models/data-set.model.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/models/data-set.model.ts#L28)
