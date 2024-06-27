[@sourceloop/ctrl-plane-subscription-service](README.md) / Exports

# @sourceloop/ctrl-plane-subscription-service

## Table of contents

### Namespaces

- [SubscriptionServiceBindings](modules/SubscriptionServiceBindings.md)

### Enumerations

- [BillingCycleDuration](enums/BillingCycleDuration.md)
- [PlanTier](enums/PlanTier.md)
- [SubscriptionStatus](enums/SubscriptionStatus.md)

### Classes

- [BillingCycle](classes/BillingCycle.md)
- [BillingCycleRepository](classes/BillingCycleRepository.md)
- [Currency](classes/Currency.md)
- [CurrencyRepository](classes/CurrencyRepository.md)
- [Plan](classes/Plan.md)
- [PlanItem](classes/PlanItem.md)
- [PlanItemRepository](classes/PlanItemRepository.md)
- [PlanRepository](classes/PlanRepository.md)
- [Resource](classes/Resource.md)
- [ResourceRepository](classes/ResourceRepository.md)
- [Service](classes/Service.md)
- [ServiceRepository](classes/ServiceRepository.md)
- [Subscription](classes/Subscription.md)
- [SubscriptionRepository](classes/SubscriptionRepository.md)
- [SubscriptionServiceApplication](classes/SubscriptionServiceApplication.md)
- [SubscriptionServiceComponent](classes/SubscriptionServiceComponent.md)

### Interfaces

- [BillingCycleRelations](interfaces/BillingCycleRelations.md)
- [CurrencyRelations](interfaces/CurrencyRelations.md)
- [ISubscriptionServiceConfig](interfaces/ISubscriptionServiceConfig.md)
- [PlanItemRelations](interfaces/PlanItemRelations.md)
- [PlanRelations](interfaces/PlanRelations.md)
- [ResourceRelations](interfaces/ResourceRelations.md)
- [ServiceRelations](interfaces/ServiceRelations.md)
- [SubscriptionRelations](interfaces/SubscriptionRelations.md)

### Type Aliases

- [BaseUser](modules.md#baseuser)
- [BillingCycleWithRelations](modules.md#billingcyclewithrelations)
- [CurrencyWithRelations](modules.md#currencywithrelations)
- [LeadUser](modules.md#leaduser)
- [LeadUserWithToken](modules.md#leaduserwithtoken)
- [PlanItemWithRelations](modules.md#planitemwithrelations)
- [PlanWithRelations](modules.md#planwithrelations)
- [ResourceWithRelations](modules.md#resourcewithrelations)
- [ServiceWithRelations](modules.md#servicewithrelations)
- [SubscriptionWithRelations](modules.md#subscriptionwithrelations)

### Variables

- [LEAD\_TOKEN\_VERIFIER](modules.md#lead_token_verifier)
- [SubscriptionDbSourceName](modules.md#subscriptiondbsourcename)

## Type Aliases

### BaseUser

Ƭ **BaseUser**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `id` | `string` |

#### Defined in

[services/subscription-service/src/types.ts:12](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/types.ts#L12)

___

### BillingCycleWithRelations

Ƭ **BillingCycleWithRelations**: [`BillingCycle`](classes/BillingCycle.md) & [`BillingCycleRelations`](interfaces/BillingCycleRelations.md)

#### Defined in

[services/subscription-service/src/models/billing-cycle.model.ts:49](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/billing-cycle.model.ts#L49)

___

### CurrencyWithRelations

Ƭ **CurrencyWithRelations**: [`Currency`](classes/Currency.md) & [`CurrencyRelations`](interfaces/CurrencyRelations.md)

#### Defined in

[services/subscription-service/src/models/currency.model.ts:49](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/currency.model.ts#L49)

___

### LeadUser

Ƭ **LeadUser**: { `email`: `string` ; `userTenantId`: `string`  } & [`BaseUser`](modules.md#baseuser)

#### Defined in

[services/subscription-service/src/types.ts:16](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/types.ts#L16)

___

### LeadUserWithToken

Ƭ **LeadUserWithToken**: { `token`: `string`  } & [`LeadUser`](modules.md#leaduser)

#### Defined in

[services/subscription-service/src/types.ts:21](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/types.ts#L21)

___

### PlanItemWithRelations

Ƭ **PlanItemWithRelations**: [`PlanItem`](classes/PlanItem.md) & [`PlanItemRelations`](interfaces/PlanItemRelations.md)

#### Defined in

[services/subscription-service/src/models/plan-item.model.ts:53](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/plan-item.model.ts#L53)

___

### PlanWithRelations

Ƭ **PlanWithRelations**: [`Plan`](classes/Plan.md) & [`PlanRelations`](interfaces/PlanRelations.md)

#### Defined in

[services/subscription-service/src/models/plan.model.ts:84](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/plan.model.ts#L84)

___

### ResourceWithRelations

Ƭ **ResourceWithRelations**: [`Resource`](classes/Resource.md)

#### Defined in

[services/subscription-service/src/models/resource.model.ts:38](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/resource.model.ts#L38)

___

### ServiceWithRelations

Ƭ **ServiceWithRelations**: [`Service`](classes/Service.md)

#### Defined in

[services/subscription-service/src/models/service.model.ts:31](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/service.model.ts#L31)

___

### SubscriptionWithRelations

Ƭ **SubscriptionWithRelations**: [`Subscription`](classes/Subscription.md) & [`SubscriptionRelations`](interfaces/SubscriptionRelations.md)

#### Defined in

[services/subscription-service/src/models/subscription.model.ts:65](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/subscription.model.ts#L65)

## Variables

### LEAD\_TOKEN\_VERIFIER

• `Const` **LEAD\_TOKEN\_VERIFIER**: `BindingKey`<`BearerFn`<`AnyObject`\>\>

#### Defined in

[services/subscription-service/src/keys.ts:14](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/keys.ts#L14)

___

### SubscriptionDbSourceName

• `Const` **SubscriptionDbSourceName**: ``"SubscriptionDB"``

#### Defined in

[services/subscription-service/src/types.ts:25](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/types.ts#L25)
