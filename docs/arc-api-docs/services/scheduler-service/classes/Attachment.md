[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / Attachment

# Class: Attachment

## Hierarchy

- `UserModifiableEntity`<[`Attachment`](Attachment.md)\>

  ↳ **`Attachment`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](Attachment.md#constructor)

### Properties

- [createdBy](Attachment.md#createdby)
- [createdOn](Attachment.md#createdon)
- [eventId](Attachment.md#eventid)
- [extId](Attachment.md#extid)
- [extMetadata](Attachment.md#extmetadata)
- [fileUrl](Attachment.md#fileurl)
- [iconLink](Attachment.md#iconlink)
- [id](Attachment.md#id)
- [mimeType](Attachment.md#mimetype)
- [modifiedBy](Attachment.md#modifiedby)
- [modifiedOn](Attachment.md#modifiedon)
- [title](Attachment.md#title)

## Constructors

### constructor

• **new Attachment**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Attachment`](Attachment.md)\> |

#### Inherited from

UserModifiableEntity<Attachment\>.constructor

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

[services/scheduler-service/src/models/attachment.model.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attachment.model.ts#L63)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/scheduler-service/src/models/attachment.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attachment.model.ts#L69)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/scheduler-service/src/models/attachment.model.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attachment.model.ts#L75)

___

### fileUrl

• **fileUrl**: `string`

#### Defined in

[services/scheduler-service/src/models/attachment.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attachment.model.ts#L30)

___

### iconLink

• `Optional` **iconLink**: `string`

#### Defined in

[services/scheduler-service/src/models/attachment.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attachment.model.ts#L36)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/scheduler-service/src/models/attachment.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attachment.model.ts#L23)

___

### mimeType

• `Optional` **mimeType**: `string`

#### Defined in

[services/scheduler-service/src/models/attachment.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attachment.model.ts#L45)

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

### title

• `Optional` **title**: `string`

#### Defined in

[services/scheduler-service/src/models/attachment.model.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/attachment.model.ts#L53)
