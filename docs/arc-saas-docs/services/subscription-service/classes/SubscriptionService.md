[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / SubscriptionService

# Class: SubscriptionService

## Table of contents

### Constructors

- [constructor](SubscriptionService.md#constructor)

### Properties

- [billingCycleRepository](SubscriptionService.md#billingcyclerepository)
- [planRepository](SubscriptionService.md#planrepository)
- [subscriptionRepository](SubscriptionService.md#subscriptionrepository)

### Methods

- [\_unitMap](SubscriptionService.md#_unitmap)
- [createSubscription](SubscriptionService.md#createsubscription)
- [getExpireSoonSubscriptions](SubscriptionService.md#getexpiresoonsubscriptions)
- [handleExpiredSubscriptions](SubscriptionService.md#handleexpiredsubscriptions)

## Constructors

### constructor

• **new SubscriptionService**(`subscriptionRepository`, `planRepository`, `billingCycleRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `subscriptionRepository` | [`SubscriptionRepository`](SubscriptionRepository.md)<[`Subscription`](Subscription.md)\> |
| `planRepository` | [`PlanRepository`](PlanRepository.md)<[`Plan`](Plan.md)\> |
| `billingCycleRepository` | [`BillingCycleRepository`](BillingCycleRepository.md)<[`BillingCycle`](BillingCycle.md)\> |

#### Defined in

[services/subscription-service/src/services/subscription.service.ts:14](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/subscription.service.ts#L14)

## Properties

### billingCycleRepository

• `Private` `Readonly` **billingCycleRepository**: [`BillingCycleRepository`](BillingCycleRepository.md)<[`BillingCycle`](BillingCycle.md)\>

#### Defined in

[services/subscription-service/src/services/subscription.service.ts:20](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/subscription.service.ts#L20)

___

### planRepository

• `Private` `Readonly` **planRepository**: [`PlanRepository`](PlanRepository.md)<[`Plan`](Plan.md)\>

#### Defined in

[services/subscription-service/src/services/subscription.service.ts:18](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/subscription.service.ts#L18)

___

### subscriptionRepository

• `Private` `Readonly` **subscriptionRepository**: [`SubscriptionRepository`](SubscriptionRepository.md)<[`Subscription`](Subscription.md)\>

#### Defined in

[services/subscription-service/src/services/subscription.service.ts:16](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/subscription.service.ts#L16)

## Methods

### \_unitMap

▸ `Private` **_unitMap**(`durationUnit`): `DurationConstructor`

#### Parameters

| Name | Type |
| :------ | :------ |
| `durationUnit` | `string` |

#### Returns

`DurationConstructor`

#### Defined in

[services/subscription-service/src/services/subscription.service.ts:42](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/subscription.service.ts#L42)

___

### createSubscription

▸ **createSubscription**(`subscription`): `Promise`<[`Subscription`](Subscription.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `subscription` | `Omit`<[`Subscription`](Subscription.md), ``"id"`` \| ``"startDate"`` \| ``"endDate"``\> |

#### Returns

`Promise`<[`Subscription`](Subscription.md)\>

#### Defined in

[services/subscription-service/src/services/subscription.service.ts:22](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/subscription.service.ts#L22)

___

### getExpireSoonSubscriptions

▸ **getExpireSoonSubscriptions**(): `Promise`<{ `daysRemainingToExpiry`: `number` ; `id`: `string` ; `subscriberId`: `string`  }[]\>

#### Returns

`Promise`<{ `daysRemainingToExpiry`: `number` ; `id`: `string` ; `subscriberId`: `string`  }[]\>

#### Defined in

[services/subscription-service/src/services/subscription.service.ts:55](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/subscription.service.ts#L55)

___

### handleExpiredSubscriptions

▸ **handleExpiredSubscriptions**(`dayCount`): `Promise`<{ `subscriberId`: `string` ; `subscriptionId`: `string`  }[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `dayCount` | `number` |

#### Returns

`Promise`<{ `subscriberId`: `string` ; `subscriptionId`: `string`  }[]\>

#### Defined in

[services/subscription-service/src/services/subscription.service.ts:76](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/subscription.service.ts#L76)
