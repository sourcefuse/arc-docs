[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / VideoChatSessionRepository

# Class: VideoChatSessionRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`VideoChatSession`](VideoChatSession.md), `undefined` \| `number`, [`VideoChatSessionRelation`](../interfaces/VideoChatSessionRelation.md), `this`\> & `DefaultCrudRepository`<[`VideoChatSession`](VideoChatSession.md), `undefined` \| `number`, `object`, `this`\>

  ↳ **`VideoChatSessionRepository`**

## Table of contents

### Constructors

- [constructor](VideoChatSessionRepository.md#constructor)

### Properties

- [getAuditLogRepository](VideoChatSessionRepository.md#getauditlogrepository)
- [getCurrentUser](VideoChatSessionRepository.md#getcurrentuser)

## Constructors

### constructor

• **new VideoChatSessionRepository**(`dataSource`, `getCurrentUser`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    VideoChatSession,
    typeof VideoChatSession.prototype.id,
    VideoChatSessionRelation
  \&gt;,
  VideoChatSessionAuditOpts,
).constructor

#### Defined in

[services/video-conferencing-service/src/repositories/video-chat-session.repository.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/video-conferencing-service/src/repositories/video-chat-session.repository.ts#L34)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/video-conferencing-service/src/repositories/video-chat-session.repository.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/video-conferencing-service/src/repositories/video-chat-session.repository.ts#L40)

___

### getCurrentUser

• **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    VideoChatSession,
    typeof VideoChatSession.prototype.id,
    VideoChatSessionRelation
  \>,
  VideoChatSessionAuditOpts,
).getCurrentUser

#### Defined in

[services/video-conferencing-service/src/repositories/video-chat-session.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/video-conferencing-service/src/repositories/video-chat-session.repository.ts#L38)
