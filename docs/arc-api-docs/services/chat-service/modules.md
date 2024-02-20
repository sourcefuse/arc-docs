[@sourceloop/chat-service](README.md) / Exports

# @sourceloop/chat-service

## Table of contents

### Namespaces

- [ChatServiceBindings](modules/ChatServiceBindings.md)

### Enumerations

- [PermissionKey](enums/PermissionKey.md)

### Classes

- [AttachmentFile](classes/AttachmentFile.md)
- [AttachmentFileDto](classes/AttachmentFileDto.md)
- [AttachmentFileRepository](classes/AttachmentFileRepository.md)
- [ChatServiceComponent](classes/ChatServiceComponent.md)
- [Message](classes/Message.md)
- [MessageRecipient](classes/MessageRecipient.md)
- [MessageRecipientRepository](classes/MessageRecipientRepository.md)
- [MessageRepository](classes/MessageRepository.md)

### Interfaces

- [AttachmentFileRelations](interfaces/AttachmentFileRelations.md)
- [IChatServiceConfig](interfaces/IChatServiceConfig.md)
- [MessageRecipientRelations](interfaces/MessageRecipientRelations.md)
- [MessageRelations](interfaces/MessageRelations.md)

### Type Aliases

- [AttachmentFilesWithRelations](modules.md#attachmentfileswithrelations)
- [MessageRecipientWithRelations](modules.md#messagerecipientwithrelations)
- [MessageWithRelations](modules.md#messagewithrelations)

## Type Aliases

### AttachmentFilesWithRelations

Ƭ **AttachmentFilesWithRelations**: [`AttachmentFile`](classes/AttachmentFile.md) & [`AttachmentFileRelations`](interfaces/AttachmentFileRelations.md)

#### Defined in

[services/chat-service/src/models/attachment-file.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/attachment-file.model.ts#L50)

___

### MessageRecipientWithRelations

Ƭ **MessageRecipientWithRelations**: [`MessageRecipient`](classes/MessageRecipient.md) & [`MessageRecipientRelations`](interfaces/MessageRecipientRelations.md)

#### Defined in

[services/chat-service/src/models/message-recipient.model.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message-recipient.model.ts#L73)

___

### MessageWithRelations

Ƭ **MessageWithRelations**: [`Message`](classes/Message.md) & [`MessageRelations`](interfaces/MessageRelations.md)

#### Defined in

[services/chat-service/src/models/message.model.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/models/message.model.ts#L83)
