[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / WorkingHour

# Class: WorkingHour

## Hierarchy

- `UserModifiableEntity`<[`WorkingHour`](WorkingHour.md)\>

  ↳ **`WorkingHour`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](WorkingHour.md#constructor)

### Properties

- [calendarId](WorkingHour.md#calendarid)
- [createdBy](WorkingHour.md#createdby)
- [createdOn](WorkingHour.md#createdon)
- [dayOfWeek](WorkingHour.md#dayofweek)
- [end](WorkingHour.md#end)
- [extId](WorkingHour.md#extid)
- [extMetadata](WorkingHour.md#extmetadata)
- [id](WorkingHour.md#id)
- [modifiedBy](WorkingHour.md#modifiedby)
- [modifiedOn](WorkingHour.md#modifiedon)
- [start](WorkingHour.md#start)

## Constructors

### constructor

• **new WorkingHour**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`WorkingHour`](WorkingHour.md)\> |

#### Inherited from

UserModifiableEntity<WorkingHour\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### calendarId

• **calendarId**: `string`

#### Defined in

[services/scheduler-service/src/models/working-hour.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/working-hour.model.ts#L61)

___

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

### dayOfWeek

• `Optional` **dayOfWeek**: [`DayOfWeekType`](../enums/DayOfWeekType.md)

#### Defined in

[services/scheduler-service/src/models/working-hour.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/working-hour.model.ts#L41)

___

### end

• `Optional` **end**: `string`

#### Defined in

[services/scheduler-service/src/models/working-hour.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/working-hour.model.ts#L46)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/scheduler-service/src/models/working-hour.model.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/working-hour.model.ts#L67)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/scheduler-service/src/models/working-hour.model.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/working-hour.model.ts#L73)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/scheduler-service/src/models/working-hour.model.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/working-hour.model.ts#L24)

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

### start

• `Optional` **start**: `string`

#### Defined in

[services/scheduler-service/src/models/working-hour.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/working-hour.model.ts#L51)
