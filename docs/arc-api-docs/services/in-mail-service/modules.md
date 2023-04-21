[@sourceloop/in-mail-service](README.md) / Exports

# @sourceloop/in-mail-service

## Table of contents

### Namespaces

- [InMailBindings](modules/InMailBindings.md)

### Enumerations

- [PartyTypeMarker](enums/PartyTypeMarker.md)
- [PermissionsEnums](enums/PermissionsEnums.md)
- [StorageMarker](enums/StorageMarker.md)

### Classes

- [InMailServiceComponent](classes/InMailServiceComponent.md)

### Type Aliases

- [ComposeMailBody](modules.md#composemailbody)
- [ForwardMailBody](modules.md#forwardmailbody)

### Variables

- [InMailDatasourceName](modules.md#inmaildatasourcename)

## Type Aliases

### ComposeMailBody

Ƭ **ComposeMailBody**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `attachments` | `Partial`<`Attachment`\>[] |
| `body` | `string` |
| `extId?` | `string` |
| `extMetadata?` | `AnyObject` |
| `groups` | `Partial`<`Group`\>[] |
| `id?` | `string` |
| `isImportant?` | `boolean` |
| `meta` | `Partial`<`Meta`\>[] |
| `status` | [`draft`](enums/StorageMarker.md#draft) \| [`send`](enums/StorageMarker.md#send) |
| `subject` | `string` |
| `threadId?` | `string` |

#### Defined in

[types/compose-mail-body.type.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/in-mail-service/src/types/compose-mail-body.type.ts#L9)

___

### ForwardMailBody

Ƭ **ForwardMailBody**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `attachments` | `Partial`<`Attachment`\>[] |
| `body` | `string` |
| `groups` | `Partial`<`Group`\>[] |
| `meta` | `Partial`<`Meta`\>[] |
| `status` | [`draft`](enums/StorageMarker.md#draft) \| [`send`](enums/StorageMarker.md#send) |
| `subject` | `string` |

#### Defined in

[types/compose-mail-body.type.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/in-mail-service/src/types/compose-mail-body.type.ts#L23)

## Variables

### InMailDatasourceName

• `Const` **InMailDatasourceName**: ``"inmail"``

#### Defined in

[keys.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/in-mail-service/src/keys.ts#L15)
