[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / SubscriptionRepository

# Class: SubscriptionRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Subscription`](Subscription.md), typeof [`id`](Subscription.md#id), [`SubscriptionRelations`](../interfaces/SubscriptionRelations.md)\>

  ↳ **`SubscriptionRepository`**

## Table of contents

### Constructors

- [constructor](SubscriptionRepository.md#constructor)

### Properties

- [getCurrentUser](SubscriptionRepository.md#getcurrentuser)
- [plan](SubscriptionRepository.md#plan)
- [planRepositoryGetter](SubscriptionRepository.md#planrepositorygetter)

## Constructors

### constructor

• **new SubscriptionRepository**(`dataSource`, `getCurrentUser`, `planRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `planRepositoryGetter` | `Getter`<[`PlanRepository`](PlanRepository.md)\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Subscription,
  typeof Subscription.prototype.id,
  SubscriptionRelations
\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/subscription.repository.ts:22](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/subscription.repository.ts#L22)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/subscription.repository.ts:26](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/subscription.repository.ts#L26)

___

### plan

• `Readonly` **plan**: `BelongsToAccessor`<[`Plan`](Plan.md), `string`\>

#### Defined in

[services/subscription-service/src/repositories/subscription.repository.ts:17](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/subscription.repository.ts#L17)

___

### planRepositoryGetter

• `Protected` **planRepositoryGetter**: `Getter`<[`PlanRepository`](PlanRepository.md)\>

#### Defined in

[services/subscription-service/src/repositories/subscription.repository.ts:28](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/subscription.repository.ts#L28)
