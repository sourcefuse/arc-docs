[@sourceloop/ctrl-plane-subscription-service](README.md) / Exports

# @sourceloop/ctrl-plane-subscription-service

## Table of contents

### Namespaces

- [SubscriptionServiceBindings](modules/SubscriptionServiceBindings.md)

### Enumerations

- [BillingCycleDuration](enums/BillingCycleDuration.md)
- [SubscriptionStatus](enums/SubscriptionStatus.md)

### Classes

- [BillingCycle](classes/BillingCycle.md)
- [BillingCycleRepository](classes/BillingCycleRepository.md)
- [Currency](classes/Currency.md)
- [CurrencyRepository](classes/CurrencyRepository.md)
- [Plan](classes/Plan.md)
- [PlanRepository](classes/PlanRepository.md)
- [PlanSizes](classes/PlanSizes.md)
- [PlanSizesRepository](classes/PlanSizesRepository.md)
- [Resource](classes/Resource.md)
- [ResourceRepository](classes/ResourceRepository.md)
- [Service](classes/Service.md)
- [ServiceRepository](classes/ServiceRepository.md)
- [Subscription](classes/Subscription.md)
- [SubscriptionRepository](classes/SubscriptionRepository.md)
- [SubscriptionServiceApplication](classes/SubscriptionServiceApplication.md)
- [SubscriptionServiceComponent](classes/SubscriptionServiceComponent.md)

### Interfaces

- [ISubscriptionServiceConfig](interfaces/ISubscriptionServiceConfig.md)
- [PlanRelations](interfaces/PlanRelations.md)
- [PlanSizesRelations](interfaces/PlanSizesRelations.md)
- [ResourceRelations](interfaces/ResourceRelations.md)
- [ServiceRelations](interfaces/ServiceRelations.md)
- [SubscriptionRelations](interfaces/SubscriptionRelations.md)

### Type Aliases

- [BaseUser](modules.md#baseuser)
- [LeadUser](modules.md#leaduser)
- [LeadUserWithToken](modules.md#leaduserwithtoken)
- [PlanSizesWithRelations](modules.md#plansizeswithrelations)
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

[services/subscription-service/src/types.ts:12](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/types.ts#L12)

___

### LeadUser

Ƭ **LeadUser**: { `email`: `string` ; `userTenantId`: `string`  } & [`BaseUser`](modules.md#baseuser)

#### Defined in

[services/subscription-service/src/types.ts:16](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/types.ts#L16)

___

### LeadUserWithToken

Ƭ **LeadUserWithToken**: { `token`: `string`  } & [`LeadUser`](modules.md#leaduser)

#### Defined in

[services/subscription-service/src/types.ts:21](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/types.ts#L21)

___

### PlanSizesWithRelations

Ƭ **PlanSizesWithRelations**: [`PlanSizes`](classes/PlanSizes.md)

#### Defined in

[services/subscription-service/src/models/plan-sizes.model.ts:33](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/models/plan-sizes.model.ts#L33)

___

### PlanWithRelations

Ƭ **PlanWithRelations**: [`Plan`](classes/Plan.md)

#### Defined in

[services/subscription-service/src/models/plan.model.ts:79](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/models/plan.model.ts#L79)

___

### ResourceWithRelations

Ƭ **ResourceWithRelations**: [`Resource`](classes/Resource.md)

#### Defined in

[services/subscription-service/src/models/resource.model.ts:38](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/models/resource.model.ts#L38)

___

### ServiceWithRelations

Ƭ **ServiceWithRelations**: [`Service`](classes/Service.md)

#### Defined in

[services/subscription-service/src/models/service.model.ts:31](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/models/service.model.ts#L31)

___

### SubscriptionWithRelations

Ƭ **SubscriptionWithRelations**: [`Subscription`](classes/Subscription.md) & [`SubscriptionRelations`](interfaces/SubscriptionRelations.md)

#### Defined in

[services/subscription-service/src/models/subscription.model.ts:65](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/models/subscription.model.ts#L65)

## Variables

### LEAD\_TOKEN\_VERIFIER

• `Const` **LEAD\_TOKEN\_VERIFIER**: `BindingKey`<`BearerFn`<`AnyObject`\>\>

#### Defined in

[services/subscription-service/src/keys.ts:13](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/keys.ts#L13)

___

### SubscriptionDbSourceName

• `Const` **SubscriptionDbSourceName**: ``"SubscriptionDB"``

#### Defined in

[services/subscription-service/src/types.ts:25](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/types.ts#L25)
