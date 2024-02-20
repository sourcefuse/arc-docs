[@sourceloop/chat-service](../README.md) / [Exports](../modules.md) / Message

# Class: Message

## Hierarchy

- `UserModifiableEntity`<[`Message`](Message.md)\>

  ↳ **`Message`**

## Table of contents

### Constructors

- [constructor](Message.md#constructor)

### Properties

- [attachmentFiles](Message.md#attachmentfiles)
- [body](Message.md#body)
- [channelId](Message.md#channelid)
- [channelType](Message.md#channeltype)
- [createdBy](Message.md#createdby)
- [createdOn](Message.md#createdon)
- [id](Message.md#id)
- [messageRecipients](Message.md#messagerecipients)
- [messages](Message.md#messages)
- [modifiedBy](Message.md#modifiedby)
- [modifiedOn](Message.md#modifiedon)
- [parentMessageId](Message.md#parentmessageid)
- [status](Message.md#status)
- [subject](Message.md#subject)
- [toUserId](Message.md#touserid)

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

### attachmentFiles

• **attachmentFiles**: [`AttachmentFile`](AttachmentFile.md)[]

#### Defined in

[services/chat-service/src/models/message.model.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message.model.ts#L64)

___

### body

• **body**: `string`

#### Defined in

[services/chat-service/src/models/message.model.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message.model.ts#L28)

___

### channelId

• **channelId**: `string`

#### Defined in

[services/chat-service/src/models/message.model.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message.model.ts#L35)

___

### channelType

• **channelType**: `string`

#### Defined in

[services/chat-service/src/models/message.model.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message.model.ts#L42)

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

### id

• `Optional` **id**: `string`

#### Defined in

[services/chat-service/src/models/message.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message.model.ts#L22)

___

### messageRecipients

• **messageRecipients**: [`MessageRecipient`](MessageRecipient.md)[]

#### Defined in

[services/chat-service/src/models/message.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message.model.ts#L62)

___

### messages

• **messages**: [`Message`](Message.md)[]

#### Defined in

[services/chat-service/src/models/message.model.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message.model.ts#L73)

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

### parentMessageId

• **parentMessageId**: `string`

#### Defined in

[services/chat-service/src/models/message.model.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message.model.ts#L70)

___

### status

• `Optional` **status**: `number`

#### Defined in

[services/chat-service/src/models/message.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message.model.ts#L48)

___

### subject

• `Optional` **subject**: `string`

#### Defined in

[services/chat-service/src/models/message.model.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message.model.ts#L53)

___

### toUserId

• `Optional` **toUserId**: `string`

#### Defined in

[services/chat-service/src/models/message.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message.model.ts#L59)
