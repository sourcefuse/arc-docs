[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / Dashboard

# Class: Dashboard

## Hierarchy

- `UserModifiableEntity`

  ↳ **`Dashboard`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](Dashboard.md#constructor)

### Properties

- [createdBy](Dashboard.md#createdby)
- [createdOn](Dashboard.md#createdon)
- [description](Dashboard.md#description)
- [extId](Dashboard.md#extid)
- [extMetadata](Dashboard.md#extmetadata)
- [id](Dashboard.md#id)
- [layout](Dashboard.md#layout)
- [modifiedBy](Dashboard.md#modifiedby)
- [modifiedOn](Dashboard.md#modifiedon)
- [name](Dashboard.md#name)
- [widgets](Dashboard.md#widgets)

## Constructors

### constructor

• **new Dashboard**(`data?`)

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

### description

• **description**: `string`

#### Defined in

[services/reporting-service/src/models/dashboard.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/dashboard.model.ts#L36)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/reporting-service/src/models/dashboard.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/dashboard.model.ts#L58)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/reporting-service/src/models/dashboard.model.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/dashboard.model.ts#L65)

___

### id

• **id**: `string`

#### Defined in

[services/reporting-service/src/models/dashboard.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/dashboard.model.ts#L23)

___

### layout

• **layout**: `Object`

#### Defined in

[services/reporting-service/src/models/dashboard.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/dashboard.model.ts#L51)

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

[services/reporting-service/src/models/dashboard.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/dashboard.model.ts#L30)

___

### widgets

• **widgets**: [`Widget`](Widget.md)[]

#### Defined in

[services/reporting-service/src/models/dashboard.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/models/dashboard.model.ts#L45)
