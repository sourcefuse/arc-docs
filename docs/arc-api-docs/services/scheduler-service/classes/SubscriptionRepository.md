[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / SubscriptionRepository

# Class: SubscriptionRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Subscription`](Subscription.md), typeof [`id`](Subscription.md#id), [`SubscriptionRelations`](../interfaces/SubscriptionRelations.md)\>

  ↳ **`SubscriptionRepository`**

## Table of contents

### Constructors

- [constructor](SubscriptionRepository.md#constructor)

### Properties

- [calendar](SubscriptionRepository.md#calendar)
- [calendarRepositoryGetter](SubscriptionRepository.md#calendarrepositorygetter)
- [getCurrentUser](SubscriptionRepository.md#getcurrentuser)

### Methods

- [create](SubscriptionRepository.md#create)
- [createAll](SubscriptionRepository.md#createall)
- [replaceById](SubscriptionRepository.md#replacebyid)
- [save](SubscriptionRepository.md#save)
- [update](SubscriptionRepository.md#update)
- [updateAll](SubscriptionRepository.md#updateall)
- [updateById](SubscriptionRepository.md#updatebyid)

## Constructors

### constructor

• **new SubscriptionRepository**(`dataSource`, `getCurrentUser`, `calendarRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `calendarRepositoryGetter` | `Getter`<[`CalendarRepository`](CalendarRepository.md)\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Subscription,
  typeof Subscription.prototype.id,
  SubscriptionRelations
\&gt;.constructor

#### Defined in

[services/scheduler-service/src/repositories/subscription.repository.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/subscription.repository.ts#L26)

## Properties

### calendar

• `Readonly` **calendar**: `BelongsToAccessor`<[`Calendar`](Calendar.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/subscription.repository.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/subscription.repository.ts#L21)

___

### calendarRepositoryGetter

• `Protected` **calendarRepositoryGetter**: `Getter`<[`CalendarRepository`](CalendarRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/subscription.repository.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/subscription.repository.ts#L34)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/subscription.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/subscription.repository.ts#L30)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Subscription`](Subscription.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Subscription`](Subscription.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Subscription`](Subscription.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Subscription`](Subscription.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Subscription`](Subscription.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Subscription`](Subscription.md)[]\>

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
| `data` | `DataObject`<[`Subscription`](Subscription.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

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

DefaultUserModifyCrudRepository.save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13

___

### update

▸ **update**(`entity`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Subscription`](Subscription.md) |
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
| `data` | `DataObject`<[`Subscription`](Subscription.md)\> |
| `where?` | `Where`<[`Subscription`](Subscription.md)\> |
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
| `data` | `DataObject`<[`Subscription`](Subscription.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
