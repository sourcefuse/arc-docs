[@sourceloop/in-mail-service](README.md) / Exports

# @sourceloop/in-mail-service

## Table of contents

### Namespaces

- [InMailBindings](modules/InMailBindings.md)

### Enumerations

- [PartyTypeMarker](enums/PartyTypeMarker.md)
- [PermissionsEnums](enums/PermissionsEnums.md)
- [StatusMarker](enums/StatusMarker.md)
- [StorageMarker](enums/StorageMarker.md)
- [VisibilityMarker](enums/VisibilityMarker.md)

### Classes

- [Attachment](classes/Attachment.md)
- [AttachmentRepository](classes/AttachmentRepository.md)
- [Group](classes/Group.md)
- [GroupRepository](classes/GroupRepository.md)
- [IdArrays](classes/IdArrays.md)
- [IdResponse](classes/IdResponse.md)
- [InMailServiceComponent](classes/InMailServiceComponent.md)
- [Message](classes/Message.md)
- [MessageRepository](classes/MessageRepository.md)
- [Meta](classes/Meta.md)
- [MetaRepository](classes/MetaRepository.md)
- [Thread](classes/Thread.md)
- [ThreadRepository](classes/ThreadRepository.md)
- [ThreadView](classes/ThreadView.md)
- [ThreadViewRepository](classes/ThreadViewRepository.md)

### Interfaces

- [IInMailServiceConfig](interfaces/IInMailServiceConfig.md)
- [MessageRelations](interfaces/MessageRelations.md)

### Type Aliases

- [ComposeMailBody](modules.md#composemailbody)
- [ForwardMailBody](modules.md#forwardmailbody)
- [MessageWithRelations](modules.md#messagewithrelations)

### Variables

- [InMailDatasourceName](modules.md#inmaildatasourcename)

## Type Aliases

### ComposeMailBody

Ƭ **ComposeMailBody**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `attachments` | `Partial`<[`Attachment`](classes/Attachment.md)\>[] |
| `body` | `string` |
| `extId?` | `string` |
| `extMetadata?` | `AnyObject` |
| `groups` | `Partial`<[`Group`](classes/Group.md)\>[] |
| `id?` | `string` |
| `isImportant?` | `boolean` |
| `meta` | `Partial`<[`Meta`](classes/Meta.md)\>[] |
| `status` | [`draft`](enums/StorageMarker.md#draft) \| [`send`](enums/StorageMarker.md#send) |
| `subject` | `string` |
| `threadId?` | `string` |

#### Defined in

[services/in-mail-service/src/types/compose-mail-body.type.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/types/compose-mail-body.type.ts#L9)

___

### ForwardMailBody

Ƭ **ForwardMailBody**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `attachments` | `Partial`<[`Attachment`](classes/Attachment.md)\>[] |
| `body` | `string` |
| `groups` | `Partial`<[`Group`](classes/Group.md)\>[] |
| `meta` | `Partial`<[`Meta`](classes/Meta.md)\>[] |
| `status` | [`draft`](enums/StorageMarker.md#draft) \| [`send`](enums/StorageMarker.md#send) |
| `subject` | `string` |

#### Defined in

[services/in-mail-service/src/types/compose-mail-body.type.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/types/compose-mail-body.type.ts#L23)

___

### MessageWithRelations

Ƭ **MessageWithRelations**: [`Message`](classes/Message.md) & [`MessageRelations`](interfaces/MessageRelations.md)

#### Defined in

[services/in-mail-service/src/models/message.model.ts:123](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/message.model.ts#L123)

## Variables

### InMailDatasourceName

• `Const` **InMailDatasourceName**: ``"inmail"``

#### Defined in

[services/in-mail-service/src/keys.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/keys.ts#L15)
