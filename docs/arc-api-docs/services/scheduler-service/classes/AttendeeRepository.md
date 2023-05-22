[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / AttendeeRepository

# Class: AttendeeRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Attendee`](Attendee.md), `undefined` \| `string`, [`AttendeeRelations`](../interfaces/AttendeeRelations.md), `this`\> & `DefaultCrudRepository`<[`Attendee`](Attendee.md), `undefined` \| `string`, `object`, `this`\>

  ↳ **`AttendeeRepository`**

## Table of contents

### Constructors

- [constructor](AttendeeRepository.md#constructor)

### Properties

- [event](AttendeeRepository.md#event)
- [eventRepositoryGetter](AttendeeRepository.md#eventrepositorygetter)
- [getAuditLogRepository](AttendeeRepository.md#getauditlogrepository)
- [getCurrentUser](AttendeeRepository.md#getcurrentuser)

## Constructors

### constructor

• **new AttendeeRepository**(`dataSource`, `getCurrentUser`, `eventRepositoryGetter`, `getAuditLogRepository`)

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
    Attendee,
    typeof Attendee.prototype.id,
    AttendeeRelations
  \&gt;,
  AttendeeAuditOpts,
).constructor

#### Defined in

[services/scheduler-service/src/repositories/attendee.repository.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/scheduler-service/src/repositories/attendee.repository.ts#L34)

## Properties

### event

• `Readonly` **event**: `BelongsToAccessor`<[`Event`](Event.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/attendee.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/scheduler-service/src/repositories/attendee.repository.ts#L32)

___

### eventRepositoryGetter

• `Protected` **eventRepositoryGetter**: `Getter`<[`EventRepository`](EventRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/attendee.repository.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/scheduler-service/src/repositories/attendee.repository.ts#L42)

___

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/attendee.repository.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/scheduler-service/src/repositories/attendee.repository.ts#L44)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    Attendee,
    typeof Attendee.prototype.id,
    AttendeeRelations
  \>,
  AttendeeAuditOpts,
).getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/attendee.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/scheduler-service/src/repositories/attendee.repository.ts#L38)
