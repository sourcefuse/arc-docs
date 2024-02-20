[@sourceloop/in-mail-service](../README.md) / [Exports](../modules.md) / Message

# Class: Message

## Hierarchy

- `UserModifiableEntity`<[`Message`](Message.md)\>

  ↳ **`Message`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](Message.md#constructor)

### Properties

- [attachments](Message.md#attachments)
- [body](Message.md#body)
- [createdBy](Message.md#createdby)
- [createdOn](Message.md#createdon)
- [extId](Message.md#extid)
- [extMetadata](Message.md#extmetadata)
- [group](Message.md#group)
- [id](Message.md#id)
- [meta](Message.md#meta)
- [modifiedBy](Message.md#modifiedby)
- [modifiedOn](Message.md#modifiedon)
- [sender](Message.md#sender)
- [status](Message.md#status)
- [subject](Message.md#subject)
- [threadId](Message.md#threadid)

## Constructors

### constructor

• **new Message**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Message`](Message.md)\> |

#### Inherited from

UserModifiableEntity<Message\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### attachments

• **attachments**: [`Attachment`](Attachment.md)[]

#### Defined in

[services/in-mail-service/src/models/message.model.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/message.model.ts#L89)

___

### body

• **body**: `string`

#### Defined in

[services/in-mail-service/src/models/message.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/message.model.ts#L58)

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

### extId

• **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/in-mail-service/src/models/message.model.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/message.model.ts#L75)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/in-mail-service/src/models/message.model.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/message.model.ts#L82)

___

### group

• **group**: [`Group`](Group.md)[]

#### Defined in

[services/in-mail-service/src/models/message.model.ts:96](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/message.model.ts#L96)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/in-mail-service/src/models/message.model.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/message.model.ts#L40)

___

### meta

• **meta**: [`Meta`](Meta.md)[]

#### Defined in

[services/in-mail-service/src/models/message.model.ts:103](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/message.model.ts#L103)

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

### sender

• **sender**: `string`

#### Defined in

[services/in-mail-service/src/models/message.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/message.model.ts#L46)

___

### status

• **status**: `string`

#### Defined in

[services/in-mail-service/src/models/message.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/message.model.ts#L68)

___

### subject

• **subject**: `string`

#### Defined in

[services/in-mail-service/src/models/message.model.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/message.model.ts#L52)

___

### threadId

• **threadId**: `string`

#### Defined in

[services/in-mail-service/src/models/message.model.ts:114](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/message.model.ts#L114)
