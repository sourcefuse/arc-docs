[@sourceloop/ctrl-plane-subscription-service](README.md) / Exports

# @sourceloop/ctrl-plane-subscription-service

## Table of contents

### Namespaces

- [SubscriptionServiceBindings](modules/SubscriptionServiceBindings.md)

### Enumerations

- [BillingCycleDuration](enums/BillingCycleDuration.md)
- [SubscriptionStatus](enums/SubscriptionStatus.md)

### Classes

- [AddressDto](classes/AddressDto.md)
- [BillingCustomer](classes/BillingCustomer.md)
- [BillingCustomerRepository](classes/BillingCustomerRepository.md)
- [BillingCustomerService](classes/BillingCustomerService.md)
- [BillingCycle](classes/BillingCycle.md)
- [BillingCycleRepository](classes/BillingCycleRepository.md)
- [BillingInvoiceService](classes/BillingInvoiceService.md)
- [BillingPaymentSourceService](classes/BillingPaymentSourceService.md)
- [ChargeDto](classes/ChargeDto.md)
- [Currency](classes/Currency.md)
- [CurrencyRepository](classes/CurrencyRepository.md)
- [CustomerDto](classes/CustomerDto.md)
- [Invoice](classes/Invoice.md)
- [InvoiceDto](classes/InvoiceDto.md)
- [InvoiceRepository](classes/InvoiceRepository.md)
- [PaymentSourceDto](classes/PaymentSourceDto.md)
- [Plan](classes/Plan.md)
- [PlanFeaturesService](classes/PlanFeaturesService.md)
- [PlanRepository](classes/PlanRepository.md)
- [PlanSizes](classes/PlanSizes.md)
- [PlanSizesRepository](classes/PlanSizesRepository.md)
- [Resource](classes/Resource.md)
- [ResourceRepository](classes/ResourceRepository.md)
- [Service](classes/Service.md)
- [ServiceRepository](classes/ServiceRepository.md)
- [Subscription](classes/Subscription.md)
- [SubscriptionRepository](classes/SubscriptionRepository.md)
- [SubscriptionSequelizeServiceComponent](classes/SubscriptionSequelizeServiceComponent.md)
- [SubscriptionService](classes/SubscriptionService.md)
- [SubscriptionServiceApplication](classes/SubscriptionServiceApplication.md)
- [SubscriptionServiceComponent](classes/SubscriptionServiceComponent.md)

### Interfaces

- [ICard](interfaces/ICard.md)
- [IContent](interfaces/IContent.md)
- [IPayload](interfaces/IPayload.md)
- [ISubscriptionServiceConfig](interfaces/ISubscriptionServiceConfig.md)
- [PlanRelations](interfaces/PlanRelations.md)
- [PlanSizesRelations](interfaces/PlanSizesRelations.md)
- [ResourceRelations](interfaces/ResourceRelations.md)
- [ServiceRelations](interfaces/ServiceRelations.md)
- [SubscriptionRelations](interfaces/SubscriptionRelations.md)

### Type Aliases

- [BaseUser](modules.md#baseuser)
- [InvoiceStatus](modules.md#invoicestatus)
- [LeadUser](modules.md#leaduser)
- [LeadUserWithToken](modules.md#leaduserwithtoken)
- [PlanSizesWithRelations](modules.md#plansizeswithrelations)
- [PlanWithRelations](modules.md#planwithrelations)
- [ResourceWithRelations](modules.md#resourcewithrelations)
- [ServiceWithRelations](modules.md#servicewithrelations)
- [SubscriptionWithRelations](modules.md#subscriptionwithrelations)

### Variables

- [LEAD\_TOKEN\_VERIFIER](modules.md#lead_token_verifier)
- [SYSTEM\_USER](modules.md#system_user)
- [SubscriptionDbSourceName](modules.md#subscriptiondbsourcename)
- [WEBHOOK\_VERIFIER](modules.md#webhook_verifier)

## Type Aliases

### BaseUser

Ƭ **BaseUser**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `id` | `string` |

#### Defined in

[services/subscription-service/src/types.ts:8](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/types.ts#L8)

___

### InvoiceStatus

Ƭ **InvoiceStatus**: ``"paid"`` \| ``"posted"`` \| ``"payment_due"`` \| ``"not_paid"`` \| ``"voided"`` \| ``"pending"``

#### Defined in

[services/subscription-service/src/types.ts:24](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/types.ts#L24)

___

### LeadUser

Ƭ **LeadUser**: { `email`: `string` ; `userTenantId`: `string`  } & [`BaseUser`](modules.md#baseuser)

#### Defined in

[services/subscription-service/src/types.ts:12](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/types.ts#L12)

___

### LeadUserWithToken

Ƭ **LeadUserWithToken**: { `token`: `string`  } & [`LeadUser`](modules.md#leaduser)

#### Defined in

[services/subscription-service/src/types.ts:17](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/types.ts#L17)

___

### PlanSizesWithRelations

Ƭ **PlanSizesWithRelations**: [`PlanSizes`](classes/PlanSizes.md)

#### Defined in

[services/subscription-service/src/models/plan-sizes.model.ts:33](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/plan-sizes.model.ts#L33)

___

### PlanWithRelations

Ƭ **PlanWithRelations**: [`Plan`](classes/Plan.md)

#### Defined in

[services/subscription-service/src/models/plan.model.ts:79](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/plan.model.ts#L79)

___

### ResourceWithRelations

Ƭ **ResourceWithRelations**: [`Resource`](classes/Resource.md)

#### Defined in

[services/subscription-service/src/models/resource.model.ts:38](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/resource.model.ts#L38)

___

### ServiceWithRelations

Ƭ **ServiceWithRelations**: [`Service`](classes/Service.md)

#### Defined in

[services/subscription-service/src/models/service.model.ts:31](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/service.model.ts#L31)

___

### SubscriptionWithRelations

Ƭ **SubscriptionWithRelations**: [`Subscription`](classes/Subscription.md) & [`SubscriptionRelations`](interfaces/SubscriptionRelations.md)

#### Defined in

[services/subscription-service/src/models/subscription.model.ts:72](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/subscription.model.ts#L72)

## Variables

### LEAD\_TOKEN\_VERIFIER

• `Const` **LEAD\_TOKEN\_VERIFIER**: `BindingKey`<`BearerFn`<`AnyObject`\>\>

Binding key for the lead token verifier.

#### Defined in

[services/subscription-service/src/keys.ts:21](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/keys.ts#L21)

___

### SYSTEM\_USER

• `Const` **SYSTEM\_USER**: `BindingKey`<`IAuthUser` & `AnyObject`\>

Binding key for the system user.

#### Defined in

[services/subscription-service/src/keys.ts:28](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/keys.ts#L28)

___

### SubscriptionDbSourceName

• `Const` **SubscriptionDbSourceName**: ``"SubscriptionDB"``

#### Defined in

[services/subscription-service/src/types.ts:21](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/types.ts#L21)

___

### WEBHOOK\_VERIFIER

• `Const` **WEBHOOK\_VERIFIER**: `BindingKey`<`Interceptor`\>

#### Defined in

[services/subscription-service/src/keys.ts:14](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/keys.ts#L14)
