[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / EventAttendeeViewRepository

# Class: EventAttendeeViewRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`EventAttendeeView`](EventAttendeeView.md), `undefined` \| `string`, [`EventAttendeeView`](EventAttendeeView.md), `this`\> & `DefaultCrudRepository`<[`EventAttendeeView`](EventAttendeeView.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`EventAttendeeViewRepository`**

## Table of contents

### Constructors

- [constructor](EventAttendeeViewRepository.md#constructor)

### Properties

- [getAuditLogRepository](EventAttendeeViewRepository.md#getauditlogrepository)
- [getCurrentUser](EventAttendeeViewRepository.md#getcurrentuser)

## Constructors

### constructor

• **new EventAttendeeViewRepository**(`dataSource`, `getCurrentUser`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    EventAttendeeView,
    typeof EventAttendeeView.prototype.id,
    EventAttendeeView
  \&gt;,
  EventAttendeeViewAuditOpts,
).constructor

#### Defined in

[services/scheduler-service/src/repositories/event-attendee-view.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/repositories/event-attendee-view.repository.ts#L32)

## Properties

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/event-attendee-view.repository.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/repositories/event-attendee-view.repository.ts#L40)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    EventAttendeeView,
    typeof EventAttendeeView.prototype.id,
    EventAttendeeView
  \>,
  EventAttendeeViewAuditOpts,
).getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/event-attendee-view.repository.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/repositories/event-attendee-view.repository.ts#L36)
