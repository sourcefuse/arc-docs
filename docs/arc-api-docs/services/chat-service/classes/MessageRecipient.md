[@sourceloop/chat-service](../README.md) / [Exports](../modules.md) / MessageRecipient

# Class: MessageRecipient

## Hierarchy

- `UserModifiableEntity`<[`MessageRecipient`](MessageRecipient.md)\>

  ↳ **`MessageRecipient`**

## Table of contents

### Constructors

- [constructor](MessageRecipient.md#constructor)

### Properties

- [channelId](MessageRecipient.md#channelid)
- [createdBy](MessageRecipient.md#createdby)
- [createdOn](MessageRecipient.md#createdon)
- [forwardedBy](MessageRecipient.md#forwardedby)
- [id](MessageRecipient.md#id)
- [isFavorite](MessageRecipient.md#isfavorite)
- [isForwarded](MessageRecipient.md#isforwarded)
- [isRead](MessageRecipient.md#isread)
- [messageId](MessageRecipient.md#messageid)
- [modifiedBy](MessageRecipient.md#modifiedby)
- [modifiedOn](MessageRecipient.md#modifiedon)
- [recipientId](MessageRecipient.md#recipientid)

## Constructors

### constructor

• **new MessageRecipient**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`MessageRecipient`](MessageRecipient.md)\> |

#### Inherited from

UserModifiableEntity<MessageRecipient\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### channelId

• **channelId**: `string`

#### Defined in

[services/chat-service/src/models/message-recipient.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message-recipient.model.ts#L25)

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

### forwardedBy

• `Optional` **forwardedBy**: `string`

#### Defined in

[services/chat-service/src/models/message-recipient.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message-recipient.model.ts#L31)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/chat-service/src/models/message-recipient.model.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message-recipient.model.ts#L18)

___

### isFavorite

• `Optional` **isFavorite**: `boolean`

#### Defined in

[services/chat-service/src/models/message-recipient.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message-recipient.model.ts#L38)

___

### isForwarded

• `Optional` **isForwarded**: `boolean`

#### Defined in

[services/chat-service/src/models/message-recipient.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message-recipient.model.ts#L45)

___

### isRead

• `Optional` **isRead**: `boolean`

#### Defined in

[services/chat-service/src/models/message-recipient.model.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message-recipient.model.ts#L52)

___

### messageId

• **messageId**: `string`

#### Defined in

[services/chat-service/src/models/message-recipient.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message-recipient.model.ts#L66)

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

### recipientId

• **recipientId**: `string`

#### Defined in

[services/chat-service/src/models/message-recipient.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message-recipient.model.ts#L59)
