[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / SubscriptionRepository

# Class: SubscriptionRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Subscription`](Subscription.md), `undefined` \| `string`, [`SubscriptionRelations`](../interfaces/SubscriptionRelations.md), `this`\> & {}

  ↳ **`SubscriptionRepository`**

## Table of contents

### Constructors

- [constructor](SubscriptionRepository.md#constructor)

### Properties

- [calendar](SubscriptionRepository.md#calendar)
- [calendarRepositoryGetter](SubscriptionRepository.md#calendarrepositorygetter)
- [getAuditLogRepository](SubscriptionRepository.md#getauditlogrepository)
- [getCurrentUser](SubscriptionRepository.md#getcurrentuser)

### Methods

- [save](SubscriptionRepository.md#save)

## Constructors

### constructor

• **new SubscriptionRepository**(`dataSource`, `getCurrentUser`, `calendarRepositoryGetter`, `getAuditLogRepository`)

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
    Subscription,
    typeof Subscription.prototype.id,
    SubscriptionRelations
  \&gt;,
  SubscriptionAuditOpts,
).constructor

#### Defined in

[services/scheduler-service/src/repositories/subscription.repository.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/subscription.repository.ts#L37)

## Properties

### calendar

• `Readonly` **calendar**: `BelongsToAccessor`<[`Calendar`](Calendar.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/subscription.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/subscription.repository.ts#L32)

___

### calendarRepositoryGetter

• `Protected` **calendarRepositoryGetter**: `Getter`<[`CalendarRepository`](CalendarRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/subscription.repository.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/subscription.repository.ts#L45)

___

### getAuditLogRepository

• **getAuditLogRepository**: `Getter`<[`AuditLogRepository`](AuditLogRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/subscription.repository.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/subscription.repository.ts#L47)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    Subscription,
    typeof Subscription.prototype.id,
    SubscriptionRelations
  \>,
  SubscriptionAuditOpts,
).getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/subscription.repository.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/repositories/subscription.repository.ts#L41)

## Methods

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Subscription`](Subscription.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Subscription`](Subscription.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Subscription`](Subscription.md)\>

#### Inherited from

ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    Subscription,
    typeof Subscription.prototype.id,
    SubscriptionRelations
  \>,
  SubscriptionAuditOpts,
).save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13
