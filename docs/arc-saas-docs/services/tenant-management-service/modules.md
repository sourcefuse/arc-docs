[@sourceloop/ctrl-plane-tenant-management-service](README.md) / Exports

# @sourceloop/ctrl-plane-tenant-management-service

## Table of contents

### Namespaces

- [TenantManagementServiceBindings](modules/TenantManagementServiceBindings.md)

### Enumerations

- [EventTypes](enums/EventTypes.md)
- [IdPKey](enums/IdPKey.md)
- [InvoiceStatus](enums/InvoiceStatus.md)
- [NotificationType](enums/NotificationType.md)
- [ResourceTypes](enums/ResourceTypes.md)
- [SubscriptionStatus](enums/SubscriptionStatus.md)
- [TenantStatus](enums/TenantStatus.md)
- [WebhookStatus](enums/WebhookStatus.md)
- [WebhookType](enums/WebhookType.md)

### Classes

- [Address](classes/Address.md)
- [AddressRepository](classes/AddressRepository.md)
- [CallbackVerifierProvider](classes/CallbackVerifierProvider.md)
- [Contact](classes/Contact.md)
- [ContactRepository](classes/ContactRepository.md)
- [CreateLeadDTO](classes/CreateLeadDTO.md)
- [CryptoHelperService](classes/CryptoHelperService.md)
- [EventConnector](classes/EventConnector.md)
- [IdpHelperService](classes/IdpHelperService.md)
- [Invoice](classes/Invoice.md)
- [InvoiceHelperService](classes/InvoiceHelperService.md)
- [InvoiceRepository](classes/InvoiceRepository.md)
- [Lead](classes/Lead.md)
- [LeadAuthenticator](classes/LeadAuthenticator.md)
- [LeadHelperService](classes/LeadHelperService.md)
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
- [SaasTenantRepository](classes/SaasTenantRepository.md)
- [SubscriptionDTO](classes/SubscriptionDTO.md)
- [SystemUserProvider](classes/SystemUserProvider.md)
- [Tenant](classes/Tenant.md)
- [TenantManagementSequelizeServiceComponent](classes/TenantManagementSequelizeServiceComponent.md)
- [TenantManagementServiceComponent](classes/TenantManagementServiceComponent.md)
- [TenantMgmtConfig](classes/TenantMgmtConfig.md)
- [TenantMgmtConfigRepository](classes/TenantMgmtConfigRepository.md)
- [TenantMgmtServiceApplication](classes/TenantMgmtServiceApplication.md)
- [TenantOnboardDTO](classes/TenantOnboardDTO.md)
- [TenantRepository](classes/TenantRepository.md)
- [VerifyLeadResponseDTO](classes/VerifyLeadResponseDTO.md)
- [WebhookDTO](classes/WebhookDTO.md)
- [WebhookHelperService](classes/WebhookHelperService.md)
- [WebhookSecret](classes/WebhookSecret.md)
- [WebhookSecretRepository](classes/WebhookSecretRepository.md)
- [WebhookTenantManagementServiceComponent](classes/WebhookTenantManagementServiceComponent.md)
- [WebhookVerifierProvider](classes/WebhookVerifierProvider.md)

### Interfaces

- [IBillingCycle](interfaces/IBillingCycle.md)
- [ICurrency](interfaces/ICurrency.md)
- [IEventConnector](interfaces/IEventConnector.md)
- [IMetaData](interfaces/IMetaData.md)
- [IPlan](interfaces/IPlan.md)
- [IPostWebhookHandlerService](interfaces/IPostWebhookHandlerService.md)
- [IProvisioningService](interfaces/IProvisioningService.md)
- [ISubscription](interfaces/ISubscription.md)
- [ITenantManagementServiceConfig](interfaces/ITenantManagementServiceConfig.md)
- [IWebhookHandler](interfaces/IWebhookHandler.md)
- [IdpDetails](interfaces/IdpDetails.md)
- [IdpResp](interfaces/IdpResp.md)
- [InvoiceRelations](interfaces/InvoiceRelations.md)
- [LeadRelations](interfaces/LeadRelations.md)
- [ResourceRelations](interfaces/ResourceRelations.md)
- [TenantRelations](interfaces/TenantRelations.md)
- [WebhookNotificationServiceType](interfaces/WebhookNotificationServiceType.md)

### Type Aliases

- [BaseUser](modules.md#baseuser)
- [ConfigureIdpFunc](modules.md#configureidpfunc)
- [InvoiceWithRelations](modules.md#invoicewithrelations)
- [LeadUser](modules.md#leaduser)
- [LeadUserWithToken](modules.md#leaduserwithtoken)
- [LeadWithRelations](modules.md#leadwithrelations)
- [ResourceData](modules.md#resourcedata)
- [ResourceProvisionedWebhookPayload](modules.md#resourceprovisionedwebhookpayload)
- [ResourceWithRelations](modules.md#resourcewithrelations)
- [SubscriptionCreationType](modules.md#subscriptioncreationtype)
- [SubscriptionUpdationType](modules.md#subscriptionupdationtype)
- [TempUser](modules.md#tempuser)
- [TenantWithRelations](modules.md#tenantwithrelations)
- [WebhookConfig](modules.md#webhookconfig)
- [WebhookPayload](modules.md#webhookpayload)
- [WebhookRequest](modules.md#webhookrequest)

### Variables

- [CALLABCK\_VERIFIER](modules.md#callabck_verifier)
- [DEFAULT\_SIGNATURE\_HEADER](modules.md#default_signature_header)
- [DEFAULT\_TIMESTAMP\_HEADER](modules.md#default_timestamp_header)
- [DEFAULT\_TIMESTAMP\_TOLERANCE](modules.md#default_timestamp_tolerance)
- [EventConnectorBinding](modules.md#eventconnectorbinding)
- [FIVE\_SECONDS](modules.md#five_seconds)
- [LEAD\_TOKEN\_VERIFIER](modules.md#lead_token_verifier)
- [ONE\_HOUR](modules.md#one_hour)
- [PermissionKey](modules.md#permissionkey)
- [PostWebhookHandlerServiceKey](modules.md#postwebhookhandlerservicekey)
- [SYSTEM\_USER](modules.md#system_user)
- [TenantManagementCacheSourceName](modules.md#tenantmanagementcachesourcename)
- [TenantManagementDbSourceName](modules.md#tenantmanagementdbsourcename)
- [WEBHOOK\_CONFIG](modules.md#webhook_config)
- [WEBHOOK\_VERIFIER](modules.md#webhook_verifier)
- [WebhookHandlerEP](modules.md#webhookhandlerep)
- [WebhookNotificationService](modules.md#webhooknotificationservice)

### Functions

- [asWebhookHandler](modules.md#aswebhookhandler)
- [hasAnyOf](modules.md#hasanyof)
- [numericEnumValues](modules.md#numericenumvalues)
- [weakEqual](modules.md#weakequal)
- [webhookHandler](modules.md#webhookhandler)

## Type Aliases

### BaseUser

Ƭ **BaseUser**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `id` | `string` |

#### Defined in

[services/tenant-management-service/src/types/index.ts:9](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/types/index.ts#L9)

___

### ConfigureIdpFunc

Ƭ **ConfigureIdpFunc**<`T`\>: (`payload`: [`IdpDetails`](interfaces/IdpDetails.md)) => `Promise`<`T`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Type declaration

▸ (`payload`): `Promise`<`T`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `payload` | [`IdpDetails`](interfaces/IdpDetails.md) |

##### Returns

`Promise`<`T`\>

#### Defined in

[services/tenant-management-service/src/types/i-idp.interface.ts:9](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/types/i-idp.interface.ts#L9)

___

### InvoiceWithRelations

Ƭ **InvoiceWithRelations**: [`Invoice`](classes/Invoice.md) & [`InvoiceRelations`](interfaces/InvoiceRelations.md)

#### Defined in

[services/tenant-management-service/src/models/invoice.model.ts:97](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/models/invoice.model.ts#L97)

___

### LeadUser

Ƭ **LeadUser**: { `email`: `string` ; `userTenantId`: `string`  } & [`BaseUser`](modules.md#baseuser)

#### Defined in

[services/tenant-management-service/src/types/index.ts:13](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/types/index.ts#L13)

___

### LeadUserWithToken

Ƭ **LeadUserWithToken**: { `token`: `string`  } & [`LeadUser`](modules.md#leaduser)

#### Defined in

[services/tenant-management-service/src/types/index.ts:18](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/types/index.ts#L18)

___

### LeadWithRelations

Ƭ **LeadWithRelations**: [`Lead`](classes/Lead.md) & [`LeadRelations`](interfaces/LeadRelations.md)

#### Defined in

[services/tenant-management-service/src/models/lead.model.ts:78](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/models/lead.model.ts#L78)

___

### ResourceData

Ƭ **ResourceData**: `Object`

Represents the data of a resource.

#### Type declaration

| Name | Type |
| :------ | :------ |
| `externalIdentifier` | `string` |
| `metadata` | { `bucket`: `string` ; `path`: `string`  } |
| `metadata.bucket` | `string` |
| `metadata.path` | `string` |
| `type` | [`BUCKET`](enums/ResourceTypes.md#bucket) |

#### Defined in

[services/tenant-management-service/src/types/resource.type.ts:4](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/types/resource.type.ts#L4)

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

[services/tenant-management-service/src/types/webhook-payload.type.ts:18](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/types/webhook-payload.type.ts#L18)

___

### ResourceWithRelations

Ƭ **ResourceWithRelations**<`T`\>: [`Resource`](classes/Resource.md)<`T`\> & [`ResourceRelations`](interfaces/ResourceRelations.md)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`ResourceData`](modules.md#resourcedata)[``"metadata"``] |

#### Defined in

[services/tenant-management-service/src/models/resource.model.ts:68](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/models/resource.model.ts#L68)

___

### SubscriptionCreationType

Ƭ **SubscriptionCreationType**: `Omit`<[`ISubscription`](interfaces/ISubscription.md), ``"id"`` \| ``"deleted"`` \| ``"deletedOn"`` \| ``"deletedBy"`` \| ``"createdOn"`` \| ``"modifiedOn"`` \| ``"createdBy"`` \| ``"modifiedBy"`` \| ``"plan"``\>

#### Defined in

[services/tenant-management-service/src/types/i-subscription.interface.ts:27](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/types/i-subscription.interface.ts#L27)

___

### SubscriptionUpdationType

Ƭ **SubscriptionUpdationType**: `Partial`<`Omit`<[`ISubscription`](interfaces/ISubscription.md), ``"id"`` \| ``"deleted"`` \| ``"deletedOn"`` \| ``"deletedBy"`` \| ``"createdOn"`` \| ``"modifiedOn"`` \| ``"createdBy"`` \| ``"modifiedBy"`` \| ``"plan"``\>\>

#### Defined in

[services/tenant-management-service/src/types/i-subscription.interface.ts:40](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/types/i-subscription.interface.ts#L40)

___

### TempUser

Ƭ **TempUser**: { `tenantId?`: `string` ; `tenantType`: `string` ; `userTenantId`: `string`  } & `IAuthUser`

#### Defined in

[services/tenant-management-service/src/interceptors/callback-verifier.interceptor.ts:96](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/interceptors/callback-verifier.interceptor.ts#L96)

___

### TenantWithRelations

Ƭ **TenantWithRelations**: [`Tenant`](classes/Tenant.md) & [`TenantRelations`](interfaces/TenantRelations.md)

#### Defined in

[services/tenant-management-service/src/models/tenant.model.ts:108](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/models/tenant.model.ts#L108)

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

[services/tenant-management-service/src/types/index.ts:26](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/types/index.ts#L26)

___

### WebhookPayload

Ƭ **WebhookPayload**: [`ResourceProvisionedWebhookPayload`](modules.md#resourceprovisionedwebhookpayload)

Represents the payload for a webhook.

#### Defined in

[services/tenant-management-service/src/types/webhook-payload.type.ts:13](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/types/webhook-payload.type.ts#L13)

___

### WebhookRequest

Ƭ **WebhookRequest**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `initiaterId` | `string` |

#### Defined in

[services/tenant-management-service/src/types/index.ts:22](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/types/index.ts#L22)

## Variables

### CALLABCK\_VERIFIER

• `Const` **CALLABCK\_VERIFIER**: `BindingKey`<`Interceptor`\>

#### Defined in

[services/tenant-management-service/src/keys.ts:67](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/keys.ts#L67)

___

### DEFAULT\_SIGNATURE\_HEADER

• `Const` **DEFAULT\_SIGNATURE\_HEADER**: ``"x-signature"``

The default header for the signature.

#### Defined in

[services/tenant-management-service/src/utils.ts:15](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/utils.ts#L15)

___

### DEFAULT\_TIMESTAMP\_HEADER

• `Const` **DEFAULT\_TIMESTAMP\_HEADER**: ``"x-timestamp"``

The default header for the timestamp.

#### Defined in

[services/tenant-management-service/src/utils.ts:20](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/utils.ts#L20)

___

### DEFAULT\_TIMESTAMP\_TOLERANCE

• `Const` **DEFAULT\_TIMESTAMP\_TOLERANCE**: ``5000``

The default tolerance for the timestamp.

#### Defined in

[services/tenant-management-service/src/utils.ts:25](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/utils.ts#L25)

___

### EventConnectorBinding

• `Const` **EventConnectorBinding**: `BindingKey`<[`IEventConnector`](interfaces/IEventConnector.md)<`unknown`\>\>

#### Defined in

[services/tenant-management-service/src/keys.ts:91](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/keys.ts#L91)

___

### FIVE\_SECONDS

• `Const` **FIVE\_SECONDS**: ``5``

#### Defined in

[services/tenant-management-service/src/utils.ts:27](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/utils.ts#L27)

___

### LEAD\_TOKEN\_VERIFIER

• `Const` **LEAD\_TOKEN\_VERIFIER**: `BindingKey`<`BearerFn`<[`LeadUser`](modules.md#leaduser)\>\>

Binding key for the lead token verifier.

#### Defined in

[services/tenant-management-service/src/keys.ts:43](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/keys.ts#L43)

___

### ONE\_HOUR

• `Const` **ONE\_HOUR**: `number`

#### Defined in

[services/tenant-management-service/src/utils.ts:28](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/utils.ts#L28)

___

### PermissionKey

• `Const` **PermissionKey**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `CreateBillingCustomer` | `string` |
| `CreateBillingInvoice` | `string` |
| `CreateBillingPaymentSource` | `string` |
| `CreateContact` | `string` |
| `CreateInvoice` | `string` |
| `CreateLead` | `string` |
| `CreateNotification` | `string` |
| `CreateNotificationTemplate` | `string` |
| `CreateSubscription` | `string` |
| `CreateTenant` | `string` |
| `CreateTenantConfig` | `string` |
| `DeleteBillingCustomer` | `string` |
| `DeleteBillingInvoice` | `string` |
| `DeleteBillingPaymentSource` | `string` |
| `DeleteContact` | `string` |
| `DeleteInvoice` | `string` |
| `DeleteLead` | `string` |
| `DeleteNotificationTemplate` | `string` |
| `DeleteTenant` | `string` |
| `DeleteTenantConfig` | `string` |
| `GetBillingCustomer` | `string` |
| `GetBillingInvoice` | `string` |
| `GetBillingPaymentSource` | `string` |
| `ProvisionTenant` | `string` |
| `UpdateBillingCustomer` | `string` |
| `UpdateBillingInvoice` | `string` |
| `UpdateBillingPaymentSource` | `string` |
| `UpdateContact` | `string` |
| `UpdateInvoice` | `string` |
| `UpdateLead` | `string` |
| `UpdateNotificationTemplate` | `string` |
| `UpdateSubscription` | `string` |
| `UpdateTenant` | `string` |
| `UpdateTenantConfig` | `string` |
| `ViewContact` | `string` |
| `ViewInvoice` | `string` |
| `ViewLead` | `string` |
| `ViewNotificationTemplate` | `string` |
| `ViewPlan` | `string` |
| `ViewSubscription` | `string` |
| `ViewTenant` | `string` |
| `ViewTenantConfig` | `string` |

#### Defined in

[services/tenant-management-service/src/permissions.ts:1](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/permissions.ts#L1)

___

### PostWebhookHandlerServiceKey

• `Const` **PostWebhookHandlerServiceKey**: `BindingKey`<[`IPostWebhookHandlerService`](interfaces/IPostWebhookHandlerService.md)<[`ResourceProvisionedWebhookPayload`](modules.md#resourceprovisionedwebhookpayload)\>\>

#### Defined in

[services/tenant-management-service/src/keys.ts:95](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/keys.ts#L95)

___

### SYSTEM\_USER

• `Const` **SYSTEM\_USER**: `BindingKey`<`IAuthUser` & `AnyObject`\>

Binding key for the system user.

#### Defined in

[services/tenant-management-service/src/keys.ts:50](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/keys.ts#L50)

___

### TenantManagementCacheSourceName

• `Const` **TenantManagementCacheSourceName**: ``"TenantManagementCacheDB"``

#### Defined in

[services/tenant-management-service/src/types/index.ts:34](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/types/index.ts#L34)

___

### TenantManagementDbSourceName

• `Const` **TenantManagementDbSourceName**: ``"TenantManagementDB"``

#### Defined in

[services/tenant-management-service/src/types/index.ts:32](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/types/index.ts#L32)

___

### WEBHOOK\_CONFIG

• `Const` **WEBHOOK\_CONFIG**: `BindingKey`<[`WebhookConfig`](modules.md#webhookconfig)\>

Binding key for the webhook configuration.

#### Defined in

[services/tenant-management-service/src/keys.ts:57](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/keys.ts#L57)

___

### WEBHOOK\_VERIFIER

• `Const` **WEBHOOK\_VERIFIER**: `BindingKey`<`Interceptor`\>

Binding key for the webhook verifier.

#### Defined in

[services/tenant-management-service/src/keys.ts:63](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/keys.ts#L63)

___

### WebhookHandlerEP

• `Const` **WebhookHandlerEP**: `BindingKey`<`unknown`\>

Binding key for the webhook handler extension point.

#### Defined in

[services/tenant-management-service/src/keys.ts:74](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/keys.ts#L74)

___

### WebhookNotificationService

• `Const` **WebhookNotificationService**: `BindingKey`<[`WebhookNotificationServiceType`](interfaces/WebhookNotificationServiceType.md)\>

#### Defined in

[services/tenant-management-service/src/keys.ts:86](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/keys.ts#L86)

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

### hasAnyOf

▸ **hasAnyOf**<`T`\>(`ob`, `keys`): `boolean`

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `ob` | `T` |
| `keys` | keyof `T`[] |

#### Returns

`boolean`

#### Defined in

[services/tenant-management-service/src/utils.ts:39](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/utils.ts#L39)

___

### numericEnumValues

▸ **numericEnumValues**(`enumType`): `number`[]

Returns the numeric values of an enum.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `enumType` | `Object` | The enum to get the numeric values from. |

#### Returns

`number`[]

The numeric values of the enum.

#### Defined in

[services/tenant-management-service/src/utils.ts:6](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/utils.ts#L6)

___

### weakEqual

▸ **weakEqual**<`T`\>(`value1`, `value2`): `boolean`

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `value1` | `undefined` \| ``null`` \| `T` |
| `value2` | `undefined` \| ``null`` \| `T` |

#### Returns

`boolean`

#### Defined in

[services/tenant-management-service/src/utils.ts:30](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/utils.ts#L30)

___

### webhookHandler

▸ **webhookHandler**(): `ClassDecorator`

#### Returns

`ClassDecorator`

#### Defined in

[services/tenant-management-service/src/decorators/webhook-handler.decorator.ts:4](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/decorators/webhook-handler.decorator.ts#L4)
