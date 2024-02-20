[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / Widget

# Class: Widget

## Hierarchy

- `UserModifiableEntity`

  ↳ **`Widget`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](Widget.md#constructor)

### Properties

- [createdBy](Widget.md#createdby)
- [createdOn](Widget.md#createdon)
- [datasetId](Widget.md#datasetid)
- [extId](Widget.md#extid)
- [extMetadata](Widget.md#extmetadata)
- [id](Widget.md#id)
- [modifiedBy](Widget.md#modifiedby)
- [modifiedOn](Widget.md#modifiedon)
- [name](Widget.md#name)
- [visualizationType](Widget.md#visualizationtype)

## Constructors

### constructor

• **new Widget**(`data?`)

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

### datasetId

• **datasetId**: `string`

#### Defined in

[services/reporting-service/src/models/widget.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/widget.model.ts#L36)

___

### extId

• **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/reporting-service/src/models/widget.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/widget.model.ts#L50)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/reporting-service/src/models/widget.model.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/widget.model.ts#L57)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/reporting-service/src/models/widget.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/widget.model.ts#L21)

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

[services/reporting-service/src/models/widget.model.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/widget.model.ts#L28)

___

### visualizationType

• **visualizationType**: `string`

#### Defined in

[services/reporting-service/src/models/widget.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/widget.model.ts#L43)
