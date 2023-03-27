[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / CalendarRepository

# Class: CalendarRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Calendar`](Calendar.md), typeof [`id`](Calendar.md#id), [`CalendarRelations`](../interfaces/CalendarRelations.md)\>

  ↳ **`CalendarRepository`**

## Table of contents

### Constructors

- [constructor](CalendarRepository.md#constructor)

### Properties

- [SubscriptionRepositoryGetter](CalendarRepository.md#subscriptionrepositorygetter)
- [eventRepositoryGetter](CalendarRepository.md#eventrepositorygetter)
- [events](CalendarRepository.md#events)
- [getCurrentUser](CalendarRepository.md#getcurrentuser)
- [subscriptions](CalendarRepository.md#subscriptions)
- [workingHourRepositoryGetter](CalendarRepository.md#workinghourrepositorygetter)
- [workingHours](CalendarRepository.md#workinghours)

### Methods

- [create](CalendarRepository.md#create)
- [createAll](CalendarRepository.md#createall)
- [replaceById](CalendarRepository.md#replacebyid)
- [save](CalendarRepository.md#save)
- [update](CalendarRepository.md#update)
- [updateAll](CalendarRepository.md#updateall)
- [updateById](CalendarRepository.md#updatebyid)

## Constructors

### constructor

• **new CalendarRepository**(`dataSource`, `getCurrentUser`, `eventRepositoryGetter`, `workingHourRepositoryGetter`, `SubscriptionRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `eventRepositoryGetter` | `Getter`<[`EventRepository`](EventRepository.md)\> |
| `workingHourRepositoryGetter` | `Getter`<[`WorkingHourRepository`](WorkingHourRepository.md)\> |
| `SubscriptionRepositoryGetter` | `Getter`<[`SubscriptionRepository`](SubscriptionRepository.md)\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Calendar,
  typeof Calendar.prototype.id,
  CalendarRelations
\&gt;.constructor

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/calendar.repository.ts#L48)

## Properties

### SubscriptionRepositoryGetter

• `Protected` **SubscriptionRepositoryGetter**: `Getter`<[`SubscriptionRepository`](SubscriptionRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/calendar.repository.ts#L60)

___

### eventRepositoryGetter

• `Protected` **eventRepositoryGetter**: `Getter`<[`EventRepository`](EventRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/calendar.repository.ts#L56)

___

### events

• `Readonly` **events**: `HasManyRepositoryFactory`<[`Event`](Event.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/calendar.repository.ts#L33)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/calendar.repository.ts#L52)

___

### subscriptions

• `Readonly` **subscriptions**: `HasManyRepositoryFactory`<[`Subscription`](Subscription.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/calendar.repository.ts#L43)

___

### workingHourRepositoryGetter

• `Protected` **workingHourRepositoryGetter**: `Getter`<[`WorkingHourRepository`](WorkingHourRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/calendar.repository.ts#L58)

___

### workingHours

• `Readonly` **workingHours**: `HasManyRepositoryFactory`<[`WorkingHour`](WorkingHour.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/calendar.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/calendar.repository.ts#L38)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Calendar`](Calendar.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Calendar`](Calendar.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Calendar`](Calendar.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Calendar`](Calendar.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Calendar`](Calendar.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Calendar`](Calendar.md)[]\>

#### Inherited from

DefaultUserModifyCrudRepository.createAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:12

___

### replaceById

▸ **replaceById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`Calendar`](Calendar.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

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

DefaultUserModifyCrudRepository.save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13

___

### update

▸ **update**(`entity`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Calendar`](Calendar.md) |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.update

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:14

___

### updateAll

▸ **updateAll**(`data`, `where?`, `options?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `DataObject`<[`Calendar`](Calendar.md)\> |
| `where?` | `Where`<[`Calendar`](Calendar.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`Count`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:15

___

### updateById

▸ **updateById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`Calendar`](Calendar.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
