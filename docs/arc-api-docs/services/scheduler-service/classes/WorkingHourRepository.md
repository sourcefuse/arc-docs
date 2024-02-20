[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / WorkingHourRepository

# Class: WorkingHourRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`WorkingHour`](WorkingHour.md), `undefined` \| `string`, [`WorkingHourRelations`](../interfaces/WorkingHourRelations.md), `this`\> & {}

  ↳ **`WorkingHourRepository`**

## Table of contents

### Constructors

- [constructor](WorkingHourRepository.md#constructor)

### Properties

- [calendar](WorkingHourRepository.md#calendar)
- [calendarRepositoryGetter](WorkingHourRepository.md#calendarrepositorygetter)
- [getAuditLogRepository](WorkingHourRepository.md#getauditlogrepository)
- [getCurrentUser](WorkingHourRepository.md#getcurrentuser)

### Methods

- [save](WorkingHourRepository.md#save)

## Constructors

### constructor

• **new WorkingHourRepository**(`dataSource`, `getCurrentUser`, `calendarRepositoryGetter`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `calendarRepositoryGetter` | `Getter`<[`CalendarRepository`](CalendarRepository.md)\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    WorkingHour,
    typeof WorkingHour.prototype.id,
    WorkingHourRelations
  \&gt;,
  WorkingHourAuditOpts,
).constructor

#### Defined in

[services/scheduler-service/src/repositories/working-hour.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/working-hour.repository.ts#L38)

## Properties

### calendar

• `Readonly` **calendar**: `BelongsToAccessor`<[`Calendar`](Calendar.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/working-hour.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/working-hour.repository.ts#L33)

___

### calendarRepositoryGetter

• `Protected` **calendarRepositoryGetter**: `Getter`<[`CalendarRepository`](CalendarRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/working-hour.repository.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/working-hour.repository.ts#L46)

___

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/working-hour.repository.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/working-hour.repository.ts#L48)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    WorkingHour,
    typeof WorkingHour.prototype.id,
    WorkingHourRelations
  \>,
  WorkingHourAuditOpts,
).getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/working-hour.repository.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/working-hour.repository.ts#L42)

## Methods

### save

▸ **save**(`entity`, `options?`): `Promise`<[`WorkingHour`](WorkingHour.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`WorkingHour`](WorkingHour.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`WorkingHour`](WorkingHour.md)\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    WorkingHour,
    typeof WorkingHour.prototype.id,
    WorkingHourRelations
  \>,
  WorkingHourAuditOpts,
).save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13
