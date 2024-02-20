[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / SessionAttendeesRepository

# Class: SessionAttendeesRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`SessionAttendees`](SessionAttendees.md), `undefined` \| `number`, {}, `this`\> & {}

  ↳ **`SessionAttendeesRepository`**

## Table of contents

### Constructors

- [constructor](SessionAttendeesRepository.md#constructor)

### Properties

- [getAuditLogRepository](SessionAttendeesRepository.md#getauditlogrepository)
- [getCurrentUser](SessionAttendeesRepository.md#getcurrentuser)

### Methods

- [save](SessionAttendeesRepository.md#save)

## Constructors

### constructor

• **new SessionAttendeesRepository**(`dataSource`, `getCurrentUser`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`\>\> |
| `getAuditLogRepository` | `Getter`<`AuditLogRepository`\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    SessionAttendees,
    typeof SessionAttendees.prototype.id,
    {}
  \&gt;,
  SessionAttendeesAuditOpts,
).constructor

#### Defined in

[services/video-conferencing-service/src/repositories/session-attendees.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/repositories/session-attendees.repository.ts#L30)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<`AuditLogRepository`\>

#### Defined in

[services/video-conferencing-service/src/repositories/session-attendees.repository.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/repositories/session-attendees.repository.ts#L36)

___

### getCurrentUser

• **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    SessionAttendees,
    typeof SessionAttendees.prototype.id,
    {}
  \>,
  SessionAttendeesAuditOpts,
).getCurrentUser

#### Defined in

[services/video-conferencing-service/src/repositories/session-attendees.repository.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/repositories/session-attendees.repository.ts#L34)

## Methods

### save

▸ **save**(`entity`, `options?`): `Promise`<[`SessionAttendees`](SessionAttendees.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`SessionAttendees`](SessionAttendees.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`SessionAttendees`](SessionAttendees.md)\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    SessionAttendees,
    typeof SessionAttendees.prototype.id,
    {}
  \>,
  SessionAttendeesAuditOpts,
).save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13
