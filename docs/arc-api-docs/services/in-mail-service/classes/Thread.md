[@sourceloop/in-mail-service](../README.md) / [Exports](../modules.md) / Thread

# Class: Thread

## Hierarchy

- `UserModifiableEntity`<[`Thread`](Thread.md)\>

  ↳ **`Thread`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](Thread.md#constructor)

### Properties

- [createdBy](Thread.md#createdby)
- [createdOn](Thread.md#createdon)
- [extId](Thread.md#extid)
- [extMetadata](Thread.md#extmetadata)
- [groups](Thread.md#groups)
- [id](Thread.md#id)
- [messageCounts](Thread.md#messagecounts)
- [messages](Thread.md#messages)
- [modifiedBy](Thread.md#modifiedby)
- [modifiedOn](Thread.md#modifiedon)
- [subject](Thread.md#subject)

## Constructors

### constructor

• **new Thread**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Thread`](Thread.md)\> |

#### Inherited from

UserModifiableEntity<Thread\>.constructor

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

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/in-mail-service/src/models/thread.model.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread.model.ts#L47)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/in-mail-service/src/models/thread.model.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread.model.ts#L54)

___

### groups

• **groups**: [`Group`](Group.md)[]

#### Defined in

[services/in-mail-service/src/models/thread.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread.model.ts#L68)

___

### id

• **id**: `string`

#### Defined in

[services/in-mail-service/src/models/thread.model.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread.model.ts#L27)

___

### messageCounts

• **messageCounts**: `number`

#### Defined in

[services/in-mail-service/src/models/thread.model.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread.model.ts#L40)

___

### messages

• **messages**: [`Message`](Message.md)[]

#### Defined in

[services/in-mail-service/src/models/thread.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread.model.ts#L61)

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

### subject

• **subject**: `string`

#### Defined in

[services/in-mail-service/src/models/thread.model.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread.model.ts#L33)
