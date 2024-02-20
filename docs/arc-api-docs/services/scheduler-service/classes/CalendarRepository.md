[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / CalendarRepository

# Class: CalendarRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Calendar`](Calendar.md), `undefined` \| `string`, [`CalendarRelations`](../interfaces/CalendarRelations.md), `this`\> & {}

  ↳ **`CalendarRepository`**

## Table of contents

### Constructors

- [constructor](CalendarRepository.md#constructor)

### Properties

- [SubscriptionRepositoryGetter](CalendarRepository.md#subscriptionrepositorygetter)
- [eventRepositoryGetter](CalendarRepository.md#eventrepositorygetter)
- [events](CalendarRepository.md#events)
- [getAuditLogRepository](CalendarRepository.md#getauditlogrepository)
- [getCurrentUser](CalendarRepository.md#getcurrentuser)
- [subscriptions](CalendarRepository.md#subscriptions)
- [workingHourRepositoryGetter](CalendarRepository.md#workinghourrepositorygetter)
- [workingHours](CalendarRepository.md#workinghours)

### Methods

- [save](CalendarRepository.md#save)

## Constructors

### constructor

• **new CalendarRepository**(`dataSource`, `getCurrentUser`, `eventRepositoryGetter`, `workingHourRepositoryGetter`, `SubscriptionRepositoryGetter`, `getAuditLogRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `eventRepositoryGetter` | `Getter`<[`EventRepository`](EventRepository.md)\> |
| `workingHourRepositoryGetter` | `Getter`<[`WorkingHourRepository`](WorkingHourRepository.md)\> |
| `SubscriptionRepositoryGetter` | `Getter`<[`SubscriptionRepository`](SubscriptionRepository.md)\> |
| `getAuditLogRepository` | `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\> |

#### Overrides

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository&lt;
    Calendar,
    typeof Calendar.prototype.id,
    CalendarRelations
  \&gt;,
  CalenderAuditOpts,
).constructor

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/calendar.repository.ts#L60)

## Properties

### SubscriptionRepositoryGetter

• `Protected` **SubscriptionRepositoryGetter**: `Getter`<[`SubscriptionRepository`](SubscriptionRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/calendar.repository.ts#L72)

___

### eventRepositoryGetter

• `Protected` **eventRepositoryGetter**: `Getter`<[`EventRepository`](EventRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/calendar.repository.ts#L68)

___

### events

• `Readonly` **events**: `HasManyRepositoryFactory`<[`Event`](Event.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/calendar.repository.ts#L45)

___

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/calendar.repository.ts#L74)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    Calendar,
    typeof Calendar.prototype.id,
    CalendarRelations
  \>,
  CalenderAuditOpts,
).getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/calendar.repository.ts#L64)

___

### subscriptions

• `Readonly` **subscriptions**: `HasManyRepositoryFactory`<[`Subscription`](Subscription.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/calendar.repository.ts#L55)

___

### workingHourRepositoryGetter

• `Protected` **workingHourRepositoryGetter**: `Getter`<[`WorkingHourRepository`](WorkingHourRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/calendar.repository.ts#L70)

___

### workingHours

• `Readonly` **workingHours**: `HasManyRepositoryFactory`<[`WorkingHour`](WorkingHour.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/calendar.repository.ts#L50)

## Methods

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Calendar`](Calendar.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Calendar`](Calendar.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Calendar`](Calendar.md)\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    Calendar,
    typeof Calendar.prototype.id,
    CalendarRelations
  \>,
  CalenderAuditOpts,
).save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13
