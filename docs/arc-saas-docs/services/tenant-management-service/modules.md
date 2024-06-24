[@sourceloop/ctrl-plane-tenant-management-service](README.md) / Exports

# @sourceloop/ctrl-plane-tenant-management-service

## Table of contents

### Namespaces

- [TenantManagementServiceBindings](modules/TenantManagementServiceBindings.md)

### Enumerations

- [InvoiceStatus](enums/InvoiceStatus.md)
- [NotificationType](enums/NotificationType.md)
- [PlanTier](enums/PlanTier.md)
- [ResourceTypes](enums/ResourceTypes.md)
- [SubscriptionStatus](enums/SubscriptionStatus.md)
- [TenantStatus](enums/TenantStatus.md)
- [WebhookStatus](enums/WebhookStatus.md)
- [WebhookType](enums/WebhookType.md)

### Classes

- [Address](classes/Address.md)
- [AddressRepository](classes/AddressRepository.md)
- [CodeBuildService](classes/CodeBuildService.md)
- [CodebuildClientProvider](classes/CodebuildClientProvider.md)
- [Contact](classes/Contact.md)
- [ContactRepository](classes/ContactRepository.md)
- [CreateLeadDTO](classes/CreateLeadDTO.md)
- [CryptoHelperService](classes/CryptoHelperService.md)
- [Invoice](classes/Invoice.md)
- [InvoicePDFGenerator](classes/InvoicePDFGenerator.md)
- [InvoiceRepository](classes/InvoiceRepository.md)
- [Lead](classes/Lead.md)
- [LeadAuthenticator](classes/LeadAuthenticator.md)
- [LeadRepository](classes/LeadRepository.md)
- [LeadToken](classes/LeadToken.md)
- [LeadTokenRepository](classes/LeadTokenRepository.md)
- [LeadTokenVerifierProvider](classes/LeadTokenVerifierProvider.md)
- [NotificationService](classes/NotificationService.md)
- [OnboardingService](classes/OnboardingService.md)
- [ProvisioningDTO](classes/ProvisioningDTO.md)
- [ProvisioningService](classes/ProvisioningService.md)
- [Resource](classes/Resource.md)
- [ResourceRepository](classes/ResourceRepository.md)
- [SubscriptionDTO](classes/SubscriptionDTO.md)
- [SystemUserProvider](classes/SystemUserProvider.md)
- [Tenant](classes/Tenant.md)
- [TenantManagementServiceComponent](classes/TenantManagementServiceComponent.md)
- [TenantMgmtServiceApplication](classes/TenantMgmtServiceApplication.md)
- [TenantOnboardDTO](classes/TenantOnboardDTO.md)
- [TenantRepository](classes/TenantRepository.md)
- [VerifyLeadResponseDTO](classes/VerifyLeadResponseDTO.md)
- [WebhookDTO](classes/WebhookDTO.md)
- [WebhookSecret](classes/WebhookSecret.md)
- [WebhookSecretRepository](classes/WebhookSecretRepository.md)
- [WebhookTenantManagementServiceComponent](classes/WebhookTenantManagementServiceComponent.md)
- [WebhookVerifierProvider](classes/WebhookVerifierProvider.md)

### Interfaces

- [ContactRelations](interfaces/ContactRelations.md)
- [IBillingCycle](interfaces/IBillingCycle.md)
- [ICurrency](interfaces/ICurrency.md)
- [IMetaData](interfaces/IMetaData.md)
- [IPlan](interfaces/IPlan.md)
- [IPlanItem](interfaces/IPlanItem.md)
- [IProvisioningService](interfaces/IProvisioningService.md)
- [ISubscription](interfaces/ISubscription.md)
- [ITenantManagementServiceConfig](interfaces/ITenantManagementServiceConfig.md)
- [IValue](interfaces/IValue.md)
- [IWebhookHandler](interfaces/IWebhookHandler.md)
- [InvoiceRelations](interfaces/InvoiceRelations.md)
- [LeadRelations](interfaces/LeadRelations.md)
- [ResourceRelations](interfaces/ResourceRelations.md)
- [TenantRelations](interfaces/TenantRelations.md)
- [WebhookNotificationServiceType](interfaces/WebhookNotificationServiceType.md)

### Type Aliases

- [BaseUser](modules.md#baseuser)
- [BucketResourceType](modules.md#bucketresourcetype)
- [ContactWithRelations](modules.md#contactwithrelations)
- [InvoiceWithRelations](modules.md#invoicewithrelations)
- [LeadUser](modules.md#leaduser)
- [LeadUserWithToken](modules.md#leaduserwithtoken)
- [LeadWithRelations](modules.md#leadwithrelations)
- [ResourceData](modules.md#resourcedata)
- [ResourceProvisionedWebhookPayload](modules.md#resourceprovisionedwebhookpayload)
- [ResourceWithRelations](modules.md#resourcewithrelations)
- [SubscriptionCreationType](modules.md#subscriptioncreationtype)
- [SubscriptionUpdationType](modules.md#subscriptionupdationtype)
- [TenantWithRelations](modules.md#tenantwithrelations)
- [WebhookConfig](modules.md#webhookconfig)
- [WebhookPayload](modules.md#webhookpayload)
- [WebhookRequest](modules.md#webhookrequest)

### Variables

- [AWS\_CODEBUILD\_CLIENT](modules.md#aws_codebuild_client)
- [LEAD\_TOKEN\_VERIFIER](modules.md#lead_token_verifier)
- [PIPELINES](modules.md#pipelines)
- [SYSTEM\_USER](modules.md#system_user)
- [TenantManagementCacheSourceName](modules.md#tenantmanagementcachesourcename)
- [TenantManagementDbSourceName](modules.md#tenantmanagementdbsourcename)
- [WEBHOOK\_CONFIG](modules.md#webhook_config)
- [WEBHOOK\_VERIFIER](modules.md#webhook_verifier)
- [WebhookHandlerEP](modules.md#webhookhandlerep)
- [WebhookNotificationService](modules.md#webhooknotificationservice)

### Functions

- [asWebhookHandler](modules.md#aswebhookhandler)
- [webhookHandler](modules.md#webhookhandler)

## Type Aliases

### BaseUser

Ƭ **BaseUser**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `id` | `string` |

#### Defined in

[services/tenant-management-service/src/types/index.ts:9](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/types/index.ts#L9)

___

### BucketResourceType

Ƭ **BucketResourceType**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `externalIdentifier` | `string` |
| `metadata` | { `bucket`: `string` ; `path`: `string`  } |
| `metadata.bucket` | `string` |
| `metadata.path` | `string` |
| `type` | [`BUCKET`](enums/ResourceTypes.md#bucket) |

#### Defined in

[services/tenant-management-service/src/types/resource.type.ts:13](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/types/resource.type.ts#L13)

___

### ContactWithRelations

Ƭ **ContactWithRelations**: [`Contact`](classes/Contact.md) & [`ContactRelations`](interfaces/ContactRelations.md)

#### Defined in

[services/tenant-management-service/src/models/contact.model.ts:75](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/models/contact.model.ts#L75)

___

### InvoiceWithRelations

Ƭ **InvoiceWithRelations**: [`Invoice`](classes/Invoice.md) & [`InvoiceRelations`](interfaces/InvoiceRelations.md)

#### Defined in

[services/tenant-management-service/src/models/invoice.model.ts:96](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/models/invoice.model.ts#L96)

___

### LeadUser

Ƭ **LeadUser**: { `email`: `string` ; `userTenantId`: `string`  } & [`BaseUser`](modules.md#baseuser)

#### Defined in

[services/tenant-management-service/src/types/index.ts:13](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/types/index.ts#L13)

___

### LeadUserWithToken

Ƭ **LeadUserWithToken**: { `token`: `string`  } & [`LeadUser`](modules.md#leaduser)

#### Defined in

[services/tenant-management-service/src/types/index.ts:18](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/types/index.ts#L18)

___

### LeadWithRelations

Ƭ **LeadWithRelations**: [`Lead`](classes/Lead.md) & [`LeadRelations`](interfaces/LeadRelations.md)

#### Defined in

[services/tenant-management-service/src/models/lead.model.ts:78](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/models/lead.model.ts#L78)

___

### ResourceData

Ƭ **ResourceData**: [`BucketResourceType`](modules.md#bucketresourcetype)

Represents the data of a resource.

#### Defined in

[services/tenant-management-service/src/types/resource.type.ts:4](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/types/resource.type.ts#L4)

___

### ResourceProvisionedWebhookPayload

Ƭ **ResourceProvisionedWebhookPayload**: `Object`

Represents the payload for a resource provisioned webhook.

#### Type declaration

| Name | Type | Description |
| :------ | :------ | :------ |
| `data` | { `appPlaneUrl`: `string` ; `resources`: `AnyObject`[] ; `status`: [`SUCCESS`](enums/WebhookStatus.md#success) \| [`FAILURE`](enums/WebhookStatus.md#failure)  } | The data of the webhook. |
| `data.appPlaneUrl` | `string` | - |
| `data.resources` | `AnyObject`[] | - |
| `data.status` | [`SUCCESS`](enums/WebhookStatus.md#success) \| [`FAILURE`](enums/WebhookStatus.md#failure) | - |
| `initiatorId` | `string` | The ID of the initiator. |
| `type` | [`RESOURCES_PROVISIONED`](enums/WebhookType.md#resources_provisioned) | The type of the webhook. |

#### Defined in

[services/tenant-management-service/src/types/webhook-payload.type.ts:17](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/types/webhook-payload.type.ts#L17)

___

### ResourceWithRelations

Ƭ **ResourceWithRelations**<`T`\>: [`Resource`](classes/Resource.md)<`T`\> & [`ResourceRelations`](interfaces/ResourceRelations.md)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`ResourceData`](modules.md#resourcedata)[``"metadata"``] |

#### Defined in

[services/tenant-management-service/src/models/resource.model.ts:68](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/models/resource.model.ts#L68)

___

### SubscriptionCreationType

Ƭ **SubscriptionCreationType**: `Omit`<[`ISubscription`](interfaces/ISubscription.md), ``"id"`` \| ``"deleted"`` \| ``"deletedOn"`` \| ``"deletedBy"`` \| ``"createdOn"`` \| ``"modifiedOn"`` \| ``"createdBy"`` \| ``"modifiedBy"`` \| ``"plan"``\>

#### Defined in

[services/tenant-management-service/src/types/i-subscription.interface.ts:26](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/types/i-subscription.interface.ts#L26)

___

### SubscriptionUpdationType

Ƭ **SubscriptionUpdationType**: `Partial`<`Omit`<[`ISubscription`](interfaces/ISubscription.md), ``"id"`` \| ``"deleted"`` \| ``"deletedOn"`` \| ``"deletedBy"`` \| ``"createdOn"`` \| ``"modifiedOn"`` \| ``"createdBy"`` \| ``"modifiedBy"`` \| ``"plan"``\>\>

#### Defined in

[services/tenant-management-service/src/types/i-subscription.interface.ts:39](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/types/i-subscription.interface.ts#L39)

___

### TenantWithRelations

Ƭ **TenantWithRelations**: [`Tenant`](classes/Tenant.md) & [`TenantRelations`](interfaces/TenantRelations.md)

#### Defined in

[services/tenant-management-service/src/models/tenant.model.ts:108](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/models/tenant.model.ts#L108)

___

### WebhookConfig

Ƭ **WebhookConfig**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `signatureHeaderName` | `string` |
| `timestampHeaderName` | `string` |
| `timestampTolerance` | `number` |

#### Defined in

[services/tenant-management-service/src/types/index.ts:26](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/types/index.ts#L26)

___

### WebhookPayload

Ƭ **WebhookPayload**: [`ResourceProvisionedWebhookPayload`](modules.md#resourceprovisionedwebhookpayload)

Represents the payload for a webhook.

#### Defined in

[services/tenant-management-service/src/types/webhook-payload.type.ts:12](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/types/webhook-payload.type.ts#L12)

___

### WebhookRequest

Ƭ **WebhookRequest**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `initiaterId` | `string` |

#### Defined in

[services/tenant-management-service/src/types/index.ts:22](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/types/index.ts#L22)

## Variables

### AWS\_CODEBUILD\_CLIENT

• `Const` **AWS\_CODEBUILD\_CLIENT**: `BindingKey`<`CodeBuildClient`\>

#### Defined in

[services/tenant-management-service/src/services/aws/keys.ts:3](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/services/aws/keys.ts#L3)

___

### LEAD\_TOKEN\_VERIFIER

• `Const` **LEAD\_TOKEN\_VERIFIER**: `BindingKey`<`BearerFn`<[`LeadUser`](modules.md#leaduser)\>\>

Binding key for the lead token verifier.

#### Defined in

[services/tenant-management-service/src/keys.ts:29](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/keys.ts#L29)

___

### PIPELINES

• `Const` **PIPELINES**: `BindingKey`<`Record`<`string`, `string`\>\>

#### Defined in

[services/tenant-management-service/src/keys.ts:33](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/keys.ts#L33)

___

### SYSTEM\_USER

• `Const` **SYSTEM\_USER**: `BindingKey`<`IAuthUser` & `AnyObject`\>

Binding key for the system user.

#### Defined in

[services/tenant-management-service/src/keys.ts:40](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/keys.ts#L40)

___

### TenantManagementCacheSourceName

• `Const` **TenantManagementCacheSourceName**: ``"TenantManagementCacheDB"``

#### Defined in

[services/tenant-management-service/src/types/index.ts:34](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/types/index.ts#L34)

___

### TenantManagementDbSourceName

• `Const` **TenantManagementDbSourceName**: ``"TenantManagementDB"``

#### Defined in

[services/tenant-management-service/src/types/index.ts:32](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/types/index.ts#L32)

___

### WEBHOOK\_CONFIG

• `Const` **WEBHOOK\_CONFIG**: `BindingKey`<[`WebhookConfig`](modules.md#webhookconfig)\>

Binding key for the webhook configuration.

#### Defined in

[services/tenant-management-service/src/keys.ts:47](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/keys.ts#L47)

___

### WEBHOOK\_VERIFIER

• `Const` **WEBHOOK\_VERIFIER**: `BindingKey`<`Interceptor`\>

Binding key for the webhook verifier.

#### Defined in

[services/tenant-management-service/src/keys.ts:53](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/keys.ts#L53)

___

### WebhookHandlerEP

• `Const` **WebhookHandlerEP**: `BindingKey`<`WebhookController`<`never`\>\>

Binding key for the webhook handler extension point.

#### Defined in

[services/tenant-management-service/src/keys.ts:60](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/keys.ts#L60)

___

### WebhookNotificationService

• `Const` **WebhookNotificationService**: `BindingKey`<[`WebhookNotificationServiceType`](interfaces/WebhookNotificationServiceType.md)\>

#### Defined in

[services/tenant-management-service/src/keys.ts:72](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/keys.ts#L72)

## Functions

### asWebhookHandler

▸ **asWebhookHandler**(`binding`): `void`

Binding template for the webhook handler.

#### Parameters

| Name | Type |
| :------ | :------ |
| `binding` | `Binding`<`unknown`\> |

#### Returns

`void`

#### Defined in

node_modules/@loopback/context/dist/binding.d.ts:202

___

### webhookHandler

▸ **webhookHandler**(): `ClassDecorator`

#### Returns

`ClassDecorator`

#### Defined in

[services/tenant-management-service/src/decorators/webhook-handler.decorator.ts:4](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/decorators/webhook-handler.decorator.ts#L4)
