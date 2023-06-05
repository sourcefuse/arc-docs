[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / AttachmentRepository

# Class: AttachmentRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Attachment`](Attachment.md), `undefined` \| `string`, [`AttachmentRelations`](../interfaces/AttachmentRelations.md), `this`\> & `DefaultCrudRepository`<[`Attachment`](Attachment.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`AttachmentRepository`**

## Table of contents

### Constructors

- [constructor](AttachmentRepository.md#constructor)

### Properties

- [event](AttachmentRepository.md#event)
- [eventRepositoryGetter](AttachmentRepository.md#eventrepositorygetter)
- [getAuditLogRepository](AttachmentRepository.md#getauditlogrepository)
- [getCurrentUser](AttachmentRepository.md#getcurrentuser)

## Constructors

### constructor

• **new AttachmentRepository**(`dataSource`, `getCurrentUser`, `eventRepositoryGetter`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `eventRepositoryGetter` | `Getter`<[`EventRepository`](EventRepository.md)\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    Attachment,
    typeof Attachment.prototype.id,
    AttachmentRelations
  \&gt;,
  AttachementAuditOpts,
).constructor

#### Defined in

[services/scheduler-service/src/repositories/attachment.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/repositories/attachment.repository.ts#L38)

## Properties

### event

• `Readonly` **event**: `BelongsToAccessor`<[`Event`](Event.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/attachment.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/repositories/attachment.repository.ts#L33)

___

### eventRepositoryGetter

• `Protected` **eventRepositoryGetter**: `Getter`<[`EventRepository`](EventRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/attachment.repository.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/repositories/attachment.repository.ts#L46)

___

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/attachment.repository.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/repositories/attachment.repository.ts#L48)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    Attachment,
    typeof Attachment.prototype.id,
    AttachmentRelations
  \>,
  AttachementAuditOpts,
).getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/attachment.repository.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/repositories/attachment.repository.ts#L42)
