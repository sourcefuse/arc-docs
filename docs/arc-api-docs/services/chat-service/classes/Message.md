[@sourceloop/chat-service](../README.md) / [Exports](../modules.md) / Message

# Class: Message

## Hierarchy

- `UserModifiableEntity`

  ↳ **`Message`**

## Table of contents

### Constructors

- [constructor](Message.md#constructor)

### Properties

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

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/chat-service/src/models/message.model.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/models/message.model.ts#L70)

## Properties

### body

• **body**: `string`

#### Defined in

[services/chat-service/src/models/message.model.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/models/message.model.ts#L24)

___

### channelId

• **channelId**: `string`

#### Defined in

[services/chat-service/src/models/message.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/models/message.model.ts#L31)

___

### channelType

• **channelType**: `string`

#### Defined in

[services/chat-service/src/models/message.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/models/message.model.ts#L38)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:3

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:3

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/chat-service/src/models/message.model.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/models/message.model.ts#L18)

___

### messageRecipients

• **messageRecipients**: [`MessageRecipient`](MessageRecipient.md)[]

#### Defined in

[services/chat-service/src/models/message.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/models/message.model.ts#L58)

___

### messages

• **messages**: [`Message`](Message.md)[]

#### Defined in

[services/chat-service/src/models/message.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/models/message.model.ts#L68)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### parentMessageId

• **parentMessageId**: `string`

#### Defined in

[services/chat-service/src/models/message.model.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/models/message.model.ts#L65)

___

### status

• `Optional` **status**: `number`

#### Defined in

[services/chat-service/src/models/message.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/models/message.model.ts#L44)

___

### subject

• `Optional` **subject**: `string`

#### Defined in

[services/chat-service/src/models/message.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/models/message.model.ts#L49)

___

### toUserId

• `Optional` **toUserId**: `string`

#### Defined in

[services/chat-service/src/models/message.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/chat-service/src/models/message.model.ts#L55)
