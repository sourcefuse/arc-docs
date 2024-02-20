[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / Attendee

# Class: Attendee

## Hierarchy

- `UserModifiableEntity`<[`Attendee`](Attendee.md)\>

  ↳ **`Attendee`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](Attendee.md#constructor)

### Properties

- [createdBy](Attendee.md#createdby)
- [createdOn](Attendee.md#createdon)
- [eventId](Attendee.md#eventid)
- [extId](Attendee.md#extid)
- [extMetadata](Attendee.md#extmetadata)
- [id](Attendee.md#id)
- [identifier](Attendee.md#identifier)
- [isOptional](Attendee.md#isoptional)
- [isOrganizer](Attendee.md#isorganizer)
- [messages](Attendee.md#messages)
- [modifiedBy](Attendee.md#modifiedby)
- [modifiedOn](Attendee.md#modifiedon)
- [responseStatus](Attendee.md#responsestatus)

## Constructors

### constructor

• **new Attendee**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Attendee`](Attendee.md)\> |

#### Inherited from

UserModifiableEntity<Attendee\>.constructor

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

### eventId

• **eventId**: `string`

#### Defined in

[services/scheduler-service/src/models/attendee.model.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attendee.model.ts#L78)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/scheduler-service/src/models/attendee.model.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attendee.model.ts#L84)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/scheduler-service/src/models/attendee.model.ts:90](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attendee.model.ts#L90)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/scheduler-service/src/models/attendee.model.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attendee.model.ts#L24)

___

### identifier

• **identifier**: `string`

#### Defined in

[services/scheduler-service/src/models/attendee.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attendee.model.ts#L34)

___

### isOptional

• `Optional` **isOptional**: `boolean`

#### Defined in

[services/scheduler-service/src/models/attendee.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attendee.model.ts#L41)

___

### isOrganizer

• `Optional` **isOrganizer**: `boolean`

#### Defined in

[services/scheduler-service/src/models/attendee.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attendee.model.ts#L48)

___

### messages

• `Optional` **messages**: `string`

#### Defined in

[services/scheduler-service/src/models/attendee.model.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attendee.model.ts#L53)

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

### responseStatus

• `Optional` **responseStatus**: [`ResponseStatusType`](../enums/ResponseStatusType.md)

#### Defined in

[services/scheduler-service/src/models/attendee.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attendee.model.ts#L68)
