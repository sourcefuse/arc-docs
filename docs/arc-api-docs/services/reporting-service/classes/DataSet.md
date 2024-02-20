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

• **dataSetQuery**: [`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md)

#### Defined in

[services/reporting-service/src/models/data-set.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/data-set.model.ts#L36)

___

### dataSetQueryHash

• `Optional` **dataSetQueryHash**: `string`

#### Defined in

[services/reporting-service/src/models/data-set.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/data-set.model.ts#L43)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/reporting-service/src/models/data-set.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/data-set.model.ts#L49)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/reporting-service/src/models/data-set.model.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/data-set.model.ts#L56)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/reporting-service/src/models/data-set.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/data-set.model.ts#L21)

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

[services/reporting-service/src/models/data-set.model.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/data-set.model.ts#L28)
